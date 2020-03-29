import 'package:flutter/material.dart';
//import 'CustomShapeClipper.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:flutter/cupertino.dart';
import 'Aggregator/Aggregator.dart';
import 'Market/Market.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          HomeScreenTopPart()
        ],
      ),
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
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
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
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

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    Color secondColor = Color(0xff000000);
    Color firstColor = Color(0xff616161);
    String helpAgg = """You can choose from several roles ranging: Farmers, Aggregators, Traders, Truck-owners, Warehouse-owners""";
    String helpMarket = """You can view various products at affordable market prices.""";
    String helpFund = """You can choose to be a sponsor""";
    showAlertDialog(BuildContext context) {
      // set up the button
      Widget okButton = FlatButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Help Wizard"),
        content: Container(
          height: hp(25),
//          color: Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Aggregator",style: TextStyle(
                  fontWeight: FontWeight.w600,
                fontSize: 17
              ),
              ),
              SizedBox(height: hp(1),),
              Text(helpAgg),
              SizedBox(height: hp(2),),
              Text("Market",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17
              ),
              ),
              SizedBox(height: hp(1),),
              Text(helpMarket),
              SizedBox(height: hp(1),),
              Text(helpFund)
            ],
          ),
        ),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
    return Stack(
      children: <Widget>[
        new Container(
          height: hp(100),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/ad.jpg"),fit: BoxFit.cover)
          ),
        ),
        Container(
          height: hp(100),
//          decoration: BoxDecoration(
//            gradient: LinearGradient(colors: [firstColor,secondColor], begin: Alignment(0, 1)),
//          ),
          color: Colors.black.withOpacity(0.5),
        ),
        Column(
          children: <Widget>[
            new Container(
              height: hp(50),
              child: Center(
                child: new Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/logowhite.png"))
                  ),
                ),
              ),
            ),
//            new Text("Hello,"),

            SizedBox(height: hp(5),width: 240),
            new Container(
//              color: Colors.green,
                height: hp(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 240,
//                    color: Colors.green,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: ButtonTheme(
                            minWidth: 200.0,
                            height: 55.0,
                            child: RaisedButton(onPressed: (){
                      Navigator.push(
                        context,
                        SizeRoute(page : Aggregator()),
                      );
                            },
                              child: new Text("Aggregator",style: TextStyle(fontSize: 18,color: Color(0xff4B4A4A)),),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              color: Color(0xffFEFCFC),
                            ),
                          ),
                          ),
                          SizedBox(width: wp(2),),
                          Expanded(child: ButtonTheme(
                            minWidth: 200.0,
                            height: 55.0,
                            child: RaisedButton(onPressed: (){
                              showAlertDialog(context);
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => SignUp()),
//                      );
                            },
                              child: Icon(Icons.help_outline),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              color: Color(0xffFEFCFC),
                            ),
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(height: hp(2),),
                    ButtonTheme(
                      minWidth: 240.0,
                      height: 55.0,
                      child: RaisedButton(onPressed: (){
                      Navigator.push(
                        context,
                        SizeRoute(page : Market()),
                      );
                      },
                        child: new Text("Market",style: TextStyle(fontSize: 18,color: Color(0xff4B4A4A)),),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        color: Color(0xffFEFCFC),
                      ),
                    ),
                  ],
                )

            )
          ],
        ),

      ],
    );
  }
}

