import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.2,
        color: Colors.black,
      )),
      home: FlutterUi(),
    ),
  );
}

class FlutterUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find your',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Inspiration',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.amber,
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search your looking for'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Prome Today',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 155,
                //   color: Colors.cyan,
                color: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text('Hello'),
                          promoCard('images/a.jpg'),
                          promoCard('images/b.jpg'),
                          promoCard('images/c.jpg'),
                          promoCard('images/d.jpg'),
                          promoCard('images/e.jpg'),
                          promoCard('images/f.jpg'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40),
                    child: Image.asset(
                      '/images/g.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
      drawer: Drawer(),
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2.26 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          )),
    ),
  );
}

/*
Widget PronoCard(image) {
  return Container(
    width: 110,
    height: 150,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox.fromSize(
        size: Size.fromRadius(40),
        // child: Image.asset(
        //   // '/images/abc.jpg',
        //   fit: BoxFit.cover,
        // ),
      ),
    ),
  );
}
*/

/*
 ClipRRect(
                          
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                            
                            size: Size.fromRadius(40),
                            child: Image.asset(
                              
                              '/images/abc.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ), 


Container(
                          width: 100,
                          height: 130,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(40),
                              child: Image.asset(
                                '/images/abc.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
*/
