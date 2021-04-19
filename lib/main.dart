// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'images.dart';
import 'boolean.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pinterest',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(1000, 1000),
          child: Container(
            color: Colors.white10,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  // Text('PINTEREST'),
                  // Image.asset("pinterest_logo.png", width: 40, height: 40),

                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                    },
                    child: IconButton(
                        onPressed: () => null,
                        icon: Image.asset("assets/pinterest_logo.png",
                            width: 40, height: 40),
                        padding: EdgeInsets.all(0),
                        hoverColor: Colors.grey[300],
                      )
                    ),
                  SizedBox(width: 1000 / 50),
                  Expanded(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => null,
                          onHover: (value) {
                            setState(() {
                              topHovering[0] = value;
                            });
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),                              
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  tapped[0] = true;
                                  tapped[1] = false;
                                });
                              },
                              child: Text('Home'),
                              style: TextButton.styleFrom(
                                primary:
                                    tapped[0] ? Colors.white : Colors.black,
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                padding: EdgeInsets.all(25),
                                backgroundColor:
                                    tapped[0] ? Colors.black : (topHovering[0] ? Colors.grey[300] : Colors.white10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1000 / 150),
                        InkWell(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                              topHovering[1] = value;
                            });
                            },
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      tapped[1] = true;
                                      tapped[0] = false;
                                    });
                                  },
                                  child: Text('Today'),
                                  style: TextButton.styleFrom(
                                    primary: tapped[1]
                                        ? Colors.white
                                        : Colors.black,
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    padding: EdgeInsets.all(25),
                                    backgroundColor: tapped[1] ? Colors.black : (topHovering[1] ? Colors.grey[300] : Colors.white10),
                                  ),
                                )
                                )),
                        SizedBox(width: 1000 / 150),
                        Expanded(
                          //   child: Column(
                          //     children: [
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              filled: true,
                              // focusColor: Colors.black,
                              fillColor: Colors.grey.shade300,
                              contentPadding: EdgeInsets.all(25),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                        SizedBox(width: 1000 / 40),
                        InkWell(
                            onTap: () {},
                            onHover: (value) {},
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  topRightTapped[0] = true;
                                  topRightTapped[1] = false;
                                  topRightTapped[2] = false;
                                  topRightTapped[3] = false;
                                });
                              },
                              icon: Icon(
                                Icons.notifications,
                                color: topRightTapped[0]
                                    ? Colors.black
                                    : Colors.grey[600],
                                size: 30,
                              ),
                              hoverColor: Colors.grey[300],
                            )),
                        SizedBox(width: 1000 / 40),
                        InkWell(
                            onTap: () {},
                            onHover: (value) {},
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  topRightTapped[0] = false;
                                  topRightTapped[1] = true;
                                  topRightTapped[2] = false;
                                  topRightTapped[3] = false;
                                });
                              },
                              icon: Icon(
                                Icons.chat_rounded,
                                color: topRightTapped[1]
                                    ? Colors.black
                                    : Colors.grey[600],
                                size: 30,
                              ),
                              hoverColor: Colors.grey[300],
                            )),
                        SizedBox(width: 1000 / 40),
                        InkWell(
                          onTap: () {},
                          onHover: (value) {},
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                topRightTapped[0] = false;
                                topRightTapped[1] = false;
                                topRightTapped[2] = true;
                                topRightTapped[3] = false;
                              });
                            },
                            icon: Icon(
                              Icons.account_circle,
                              color: topRightTapped[2]
                                  ? Colors.black
                                  : Colors.grey[600],
                              size: 30,
                            ),
                            hoverColor: Colors.grey[300],
                          ),
                        ),
                        SizedBox(width: 1000 / 40),
                        InkWell(
                          onTap: () {},
                          onHover: (value) {},
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                topRightTapped[0] = false;
                                topRightTapped[1] = false;
                                topRightTapped[2] = false;
                                topRightTapped[3] = true;
                              });
                            },
                            icon: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: topRightTapped[3]
                                  ? Colors.black
                                  : Colors.grey[600],
                              size: 30,
                            ),
                            hoverColor: Colors.grey[300],
                          ),
                        ),
                        SizedBox(width: 1000 / 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        /////////////////////////////////////
        body: StaggeredGridView.countBuilder(
          padding: EdgeInsets.all(16.0),
          crossAxisCount: 4,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () => null,
            onHover: (isHovering) {
              // print(isHovering);
              setState(() {
                hover[index] = isHovering;
              });
            },
            child: Stack(
              children: [
                AnimatedOpacity(
                  duration: Duration(milliseconds: 200),
                  opacity: (hover[index] ? 0.75 : 1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      child: Image.asset(
                        'assets/' + images[index],
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // left: 0.0,
                  top: 10.0,
                  right: 10.0,
                  // bottom: 0.0,
                  child: InkWell(
                      onTap: () {},
                      onHover: (value) {},
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                // tapped[1] = true;
                                // tapped[0] = false;
                              });
                            },
                            child: hover[index] ? Text('Save') : Text(''),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              textStyle: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold
                              ),
                              padding: EdgeInsets.all(25),
                              backgroundColor: hover[index]
                                  ? Colors.redAccent[700]
                                  : Colors.transparent,
                            ),
                          ))),
                ),
                Positioned(
                  // left: 0.0,
                  // top: 10.0,
                  right: 80.0,
                  bottom: 10.0,
                  child: InkWell(
                      onTap: () {},
                      onHover: (value) {},
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                // tapped[1] = true;
                                // tapped[0] = false;
                              });
                            },
                            child: hover[index] ? Text('Source') : Text(''),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              textStyle: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold
                              ),
                              padding: EdgeInsets.all(25),
                              backgroundColor: hover[index]
                                  ? Colors.grey.withOpacity(0.75)
                                  : Colors.transparent,
                            ),
                          ))),
                ),
                Positioned(
                  right: 10.0,
                  bottom: 10.0,
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {},
                    child: FloatingActionButton(
                        elevation: 0.0,
                        child: hover[index] ? Icon(Icons.more_horiz) : null,
                        backgroundColor: hover[index]
                            ? Colors.grey.withOpacity(0.75)
                            : Colors.transparent,
                        onPressed: () {}),
                  ),
                ),
                Positioned(
                  right: 10.0,
                  bottom: 80.0,
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {},
                    child: FloatingActionButton(
                        elevation: 0.0,
                        child: hover[index] ? Icon(Icons.share) : null,
                        backgroundColor: hover[index]
                            ? Colors.grey.withOpacity(0.90)
                            : Colors.transparent,
                        onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),
          staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        ),
      ));
  }
}