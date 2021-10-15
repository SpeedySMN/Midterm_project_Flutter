import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


void main() {
  runApp(MyApp
    ());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Профиль'),
          backgroundColor: Colors.indigo,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: null,
              disabledColor: Colors.white,
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: <Widget>[
                Align(alignment: Alignment.topLeft,
                  child: Text(
                    'Имя',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.indigo,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 40,
                // ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Курьер                                             Изменить',
                    filled: true,
                    fillColor: Colors.white54,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(alignment: Alignment.topLeft,
                  child: Text(
                    'Телефон',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.indigo,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: '+77077077777',
                    filled: true,
                    fillColor: Colors.white54,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed:(){ },
                  child: const Text('История добавления товара'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    minimumSize: Size(350, 50),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.qr_code, size: 30),
            Icon(Icons.person, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.indigo,
          backgroundColor: Colors.grey[150],
          animationCurve: Curves.easeInOut,
          onTap: (index) {},
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}