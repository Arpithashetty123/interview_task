import 'package:flutter/material.dart';
import '../style/text_style.dart';
import 'hot_deals.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex=0;
  void onPressed(int index){
    setState(() {
      selectIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:  Text(
          'Market',
          style: appBarStyle(),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: SearchBar(
                  hintText: "Search",
                  backgroundColor:MaterialStateProperty.all(const Color.fromARGB(255, 248, 248, 248)),
                  hintStyle: MaterialStateProperty.all(
                      TextStyle(color: Colors.grey.shade300,fontSize: 18)),
                  elevation: MaterialStateProperty.all(0),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
               Text(
                "Hot Deals",
                style:headingPage(),
              ),
              const SizedBox(
                height: 15,
              ),
              HotDealsPage(height: 120,width: 120,),
              const SizedBox(
                height: 5,
              ),
                Text(
                "Trending",
                style: headingPage(),
              ),
               HotDealsPage(height: 160,width: 200,),
            ],
          ),
        ),
      ),

      bottomNavigationBar:
          BottomNavigationBar(
            
            currentIndex: selectIndex,
            onTap: onPressed,
            fixedColor: Colors.black, items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: Colors.black,
            ),
            label: "Call"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: "settings"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.assistant_navigation,
              color: Colors.black,
            ),
            label: "assist"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.man,
              color: Colors.black,
            ),
            label: "Profile"),
      ]),
    );
  }
}
