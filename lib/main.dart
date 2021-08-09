import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: MyHomePage(title: 'Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected = 0;
  List<Widget> widgets = <Widget>[
    Text('Screen1'),
    Text('Screen2'),
    Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: ImageIcon(AssetImage('assets\images\Menu.svg')),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                child: Image.asset('assets/Profile Photo.png'), radius: 55.5),
            Text("Eric Wirtz", style: TextStyle(fontSize: 21)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 20,
                      child: ListTile(
                        onTap: () {},
                        title: Center(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFFFE6A8),
                                child: Image.asset('assets\images\Credit Cards.svg'),
                              ),
                              Text(
                                'Credit Cards',
                                style: TextStyle(color: Color(0xFFDDA000)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 20,
                      child: ListTile(
                        onTap: () {},
                        title: Center(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFA8BDFF),
                                child: Image.asset('assets\images\Settings.svg'),
                              ),
                              Text(
                                'Settings',
                                style: TextStyle(color: Color(0xFF3F65DD)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 20,
                      child: ListTile(
                        onTap: () {},
                        title: Center(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFFFB9A8),
                                child: Image.asset('assets\images\Barcode.svg'),
                              ),
                              Text(
                                'Referral Code',
                                style: TextStyle(color: Color(0xFFC0583E)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 20,
                      child: ListTile(
                        onTap: () {},
                        title: Center(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFA8FFAB),
                                child: Image.asset('assets\images\support.svg'),
                              ),
                              Text(
                                'Support',
                                style: TextStyle(color: Color(0xFF3DB241)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ]),
    )
  ];

  ontap(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets\images\Search-Inactive.svg')),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets\images\shopping.svg')),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets\images\Profile-Active.svg')),
        )
      ],
      selectedItemColor: Color(0xFFFD3E75),
      currentIndex: selected,
      onTap: ontap,
    )));
  }
}
