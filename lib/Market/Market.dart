import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:quickleap/welcome.dart';

class Market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    Widget title(){
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 35,horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Sub",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35
                ),
                ),
                Text("Categories",style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 35
                ),)
              ],
            )
          ],
        ),
      );
    }
    return Scaffold(
      body: SafeArea(child: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: hp(1),),
            cupt(),
            title(),
            SizedBox(height: hp(5),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: hp(25),
                  width: wp(90),
//                  color: Colors.black,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Container(
                        height: hp(100),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/marketp.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                      ),
                      Container(
                        height: hp(100),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                        child: Center(
                          child: Text("Market Place",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 34,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: hp(4),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: hp(25),
                  width: wp(90),
//                  color: Colors.black,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Container(
                        height: hp(100),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/fund.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                      ),
                      Container(
                        height: hp(100),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                        child: Center(
                          child: Text("Fund Trade",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 34,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: hp(4),),
//            Expanded(flex: 1,child: SubCategoriesAgg())
          ],
        ),
      )
      ),
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}

class cupt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(padding: EdgeInsets.all(5),child: GestureDetector(
          child: Icon(CupertinoIcons.back,size: 30,),
          onTap: (){
            Navigator.pop(context,FadeRoute(page: Welcome()));
          },
        ),
        ),
//        GestureDetector(child: Icon(CupertinoIcons.profile_circled),
//        onTap: null,)
      ],
    );
  }
}