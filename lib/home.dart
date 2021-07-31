import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String displayedText=" ";
  static const historyLength = 5;

  List<String> _searchHistory = [
    "asian slaw",
    "lettuce",
    "mayonnaise"
  ];

   List<String> filteredSearchHistory = [];
   
   late String selectedTerm;

   List<String> filterSearchTerms({
     @required filter,
   }) {
     if (filter != null && filter.isNotEmpty) {
       return _searchHistory.reversed
       .where((term) => term.startsWith(filter))
       .toList();
     } else {
       return _searchHistory.reversed.toList();
     }
   }

   void addSearchTerm(String term){
     if(_searchHistory.contains(term)){
       putSearchTermFirst(term);
       return;
     }
      _searchHistory.add(term);
      if(_searchHistory.length>historyLength){
        _searchHistory.removeRange(0, _searchHistory.length - historyLength);
      }

      filteredSearchHistory = filterSearchTerms(filter: null);
   }

    void deleteSearchTerm(String term){
      _searchHistory.removeWhere((t) => t == term);
      filteredSearchHistory = filterSearchTerms(filter: null);
    }

    void putSearchTermFirst(String term){
      deleteSearchTerm(term);
      addSearchTerm(term);
    }

    late FloatingSearchBarController controller;

    @override
  void initState() {
    super.initState();
    controller = FloatingSearchBarController();
    filteredSearchHistory = filterSearchTerms(filter: null);
  }
  
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: (
            Text(
              "Find Recipes",
              style: TextStyle(fontSize: 25)
            )
          ),
        ),
        automaticallyImplyLeading: false,
      ),

      body: 
      Center(
        child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/SimplyMake food background.jpg"
            ),
            fit: BoxFit.cover,
          )
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              FloatingSearchBar(
                controller: controller,
                body: FloatingSearchBarScrollNotifier(
                  child: SearchResultsListView(
                    searchTerm: selectedTerm,
                  ),
                ),
                transition: CircularFloatingSearchBarTransition(),
                physics: BouncingScrollPhysics(),
                title: Text(
                  selectedTerm = 'Simply Make',
                  style: Theme.of(context).textTheme.headline6,
                ),
                hint: 'Search and find out...',
                actions: [
                  FloatingSearchBarAction.searchToClear(),
                ],
                onQueryChanged: (query) {
                  setState(() {
                    filteredSearchHistory = filterSearchTerms(filter: query);
                  });
                },
                onSubmitted: (query) {
                  setState(() {
                    addSearchTerm(query);
                    selectedTerm = query;
                  });
                  controller.close();
                },
                builder: (context, transition) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Material(
                      color: Colors.white,
                      elevation: 4,
                      child: Builder(
                        builder: (context) {
                          if (filteredSearchHistory.isEmpty &&
                              controller.query.isEmpty) {
                            return Container(
                              height: 56,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Text(
                                'Start searching',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            );
                          } else if (filteredSearchHistory.isEmpty) {
                            return ListTile(
                              title: Text(controller.query),
                              leading: const Icon(Icons.search),
                              onTap: () {
                                setState(() {
                                  addSearchTerm(controller.query);
                                  selectedTerm = controller.query;
                                });
                                controller.close();
                              },
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: filteredSearchHistory
                                .map(
                                  (term) => ListTile(
                                    title: Text(
                                      term,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    leading: const Icon(Icons.history),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.clear),
                                      onPressed: () {
                                        setState(() {
                                          deleteSearchTerm(term);
                                        });
                                      },
                                    ),
                                    onTap: () {
                                      setState(() {
                                        putSearchTermFirst(term);
                                        selectedTerm = term;
                                      });
                                      controller.close();
                                    },
                                  ),
                                )
                                .toList(),
                            );
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
                /*width: 375,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: ("Search by ingredient, dish, etc."),
                      prefixIcon: Padding(padding: const EdgeInsets.symmetric(horizontal: 4.0),child: Icon(Icons.search)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      contentPadding: const EdgeInsets.all(8.0),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 18.0),
                    onChanged: (text){
                      displayedText = text;
                    },
                  ),
                ),*/
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                      fontSize: 20
                    )
                  ),
                ),
              ),
              Container(
                height: 100,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.asset("assets/asian slaw.jpg",),
                      trailing: Text("Asian Cole Slaw", style: TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
class SearchResultsListView extends StatelessWidget {
  final String searchTerm;

  const SearchResultsListView({
    Key key,
    @required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (searchTerm == null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.search,
              size: 64,
            ),
            Text(
              'Start searching',
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      );
    }

    final fsb = FloatingSearchBar.of(context);

    return ListView(
      padding: EdgeInsets.only(top: fsb!.height + fsb.margins.vertical),
      children: List.generate(
        50,
        (index) => ListTile(
          title: Text('$searchTerm search result'),
          subtitle: Text(index.toString()),
        ),
      ),
    );
  }
}