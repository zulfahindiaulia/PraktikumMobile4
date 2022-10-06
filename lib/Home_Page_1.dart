import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <String> Gambar = [
      "1.png",
      "2.png",
      "3.png",
      "4.jpg",
      "5.png",
      "6.png",
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.amberAccent),
          onPressed: () {
            print('object');
            Navigator.of(context).pop();
          },
        ),
      ),

      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Container(
            width: 320,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color.fromARGB(255, 39, 40, 40),
                
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText: 'Search',
              ),
            ),  
          ),

          const Padding(padding: EdgeInsets.all(10)),
          const Padding(
            padding: EdgeInsets.only(right: 230),
            child: Text('Top Menu',
            textAlign: TextAlign.center,
            style: 
            TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),

          Padding(padding: EdgeInsets.only(bottom: 5)),
          Expanded(
            child: GridView.builder(
              itemCount: Gambar.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/grid/${Gambar[i]}'),
                );
              },
            )
          )
        ],
      ),
    //   bottomNavigationBar: BottomNavigationBar(
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //       ),
    //     ],
    //     currentIndex: 0,
    //     selectedItemColor: Color.fromARGB(255, 255, 166, 1),
    //     unselectedItemColor: Colors.grey,
    //     showUnselectedLabels: true
    // ),
    );
  }
}