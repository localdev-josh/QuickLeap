import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:quickleap/welcome.dart';
import 'SignAgg.dart';
import 'SignFarmers.dart';
import 'SignTraders.dart';
import 'SignInputs.dart';
import 'SignTrucks.dart';
import 'SignWareHouse.dart';

class Aggregator extends StatefulWidget {
  @override
  _AggregatorState createState() => _AggregatorState();
}

class _AggregatorState extends State<Aggregator> {
  @override
  Widget build(BuildContext context) {
    final Function hp = Screen(context).hp;
    final Function wp = Screen(context).wp;
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
//            Hero(tag: 'test', child: Icon(Icons.account_balance)),
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
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignAgg()),
                      );
                    },
                    child: Hero(
                      transitionOnUserGestures: true,
                      tag: 'aggregator',
                      child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Container(
                          height: hp(100),
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/aggregator.jpg"),fit: BoxFit.cover),
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
                            child: Text("Aggregator",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 34,
                                color: Colors.white
                            ),),
                          ),
                        ),
                      ],
                    ),
                    ),
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
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignFarmers()),
                      );
                    },
                    child: Hero(
                      tag: 'farmers',
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Container(
                            height: hp(100),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/farmers.jpg"),fit: BoxFit.cover),
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
                              child: Text("Farmers",style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 34,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: hp(4),),
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
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignTraders()),
                      );
                    },
                    child: Hero(
                      tag: 'traders',
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Container(
                            height: hp(100),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/Traders.jpg"),fit: BoxFit.cover),
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
                              child: Text("Traders",style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 34,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),SizedBox(height: hp(4),),
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
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInputs()),
                      );
                    },
                    child: Hero(
                      tag: 'inputs',
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Container(
                            height: hp(100),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/ad.jpg"),fit: BoxFit.cover),
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
                              child: Text("Inputs",style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 34,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: hp(4),),
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
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignTrucks()),
                      );
                    },
                    child: Hero(
                      tag: 'trucks',
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Container(
                            height: hp(100),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/Trucks.jpg"),fit: BoxFit.cover),
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
                              child: Text("Trucks",style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 34,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),SizedBox(height: hp(4),),
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
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignWareHouse()),
                      );
                    },
                    child: Hero(
                      tag: 'warehouse',
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Container(
                            height: hp(100),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/warehouse.jpg"),fit: BoxFit.cover),
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
                              child: Text("Warehouse",style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 34,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
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

class SizeRoute extends PageRouteBuilder {
  final Widget page;
  SizeRoute({this.page})
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
        Align(
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        ),
  );
}


class SubCategoriesAgg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: SubCategories(),
    );
  }
}

class SubCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Function hp = Screen(context).hp;
    final Function wp = Screen(context).wp;
    return new Container(
      color: Colors.black,
      height: hp(70),
      child: Column(
        children: <Widget>[

        ],
      ),
    );
  }
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
            Navigator.pop(context,SizeRoute(page: Welcome()));
          },
        ),
        ),
//        GestureDetector(child: Icon(CupertinoIcons.profile_circled),
//        onTap: null,)
      ],
    );
  }
}
