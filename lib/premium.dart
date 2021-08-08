import 'package:flutter/material.dart';

class PremiumOption extends StatefulWidget {
  const PremiumOption({Key? key}) : super(key: key);

  @override
  _PremiumOptionState createState() => _PremiumOptionState();
}

class _PremiumOptionState extends State<PremiumOption> {
  final List<List> plans = [
    ["Basic", "Current Plan \$0.99", false],
    ["Weekly", "Extra \$3", false],
    ["Monthly", "Extra \$8", false],
    ["Yearly", "Extra \$90", false]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: (Text(
              "Available Plans",
              style: TextStyle(fontSize: 25),
            )),
          )),
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/SimplyMake food background.jpg"),
        fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: plans.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      plans[index][2] = !plans[index][2];
                    });
                  },
                  child: Card(
                    color: plans[index][2] ? Colors.grey : Colors.white,
                    child: Container(
                      child: GridTile(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                plans[index][0],
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                plans[index][1],
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                            // Image.asset(
                            //   plans[index][0],
                            //   height: 75,
                            //   width: 110,
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
