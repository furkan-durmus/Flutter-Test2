import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.blue,
      ),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.deepOrange[200], Colors.white]),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(90),
                    bottomRight: Radius.circular(90)),
              ),
              child: Container(
                  width: 120,
                  height: 170,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo.png")))),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment(1, 0),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    bottomLeft: Radius.circular(90)),
                child: Container(
                  alignment: Alignment(0, 0),
                  width: MediaQuery.of(context).size.width * 9.9 / 10,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.deepOrange[200], Colors.white]),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(90),
                        bottomLeft: Radius.circular(90)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 35),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Mail İle Giriş",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          width: double.infinity,
                          height: 52,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 35),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Facebook İle Giriş",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                height: 52,
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Google İle Giriş",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                height: 52,
                                decoration: BoxDecoration(
                                    color: Colors.red[600],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
