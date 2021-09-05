import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(
    MaterialApp(home: MyHomePage()),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  AnimationController _ColorAnimationController;

  // ignore: non_constant_identifier_names
  AnimationController _TextAnimationController;
  Animation _colorTween,
      _homeTween,
      _workOutTween,
      _iconTween,
      _drawerTween,
      _growingAnimation;

  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_ColorAnimationController);
    _growingAnimation = Tween(begin: 0.0, end: 105.0).animate(CurvedAnimation(
        parent: _ColorAnimationController, curve: Curves.easeIn));
    _iconTween =
        ColorTween(begin: Colors.white, end: Colors.lightBlue.withOpacity(0.5))
            .animate(_ColorAnimationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _homeTween = ColorTween(begin: Colors.black, end: Colors.red)
        .animate(_ColorAnimationController);
    _workOutTween = ColorTween(begin: Colors.white, end: Colors.green)
        .animate(_ColorAnimationController);
    _TextAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));

    super.initState();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  bool scrollListener(ScrollNotification scrollInfo) {
    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 100);


      _TextAnimationController.animateTo(scrollInfo.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(),
      backgroundColor: Colors.lightBlue,
      body: NotificationListener<ScrollNotification>(
        onNotification: scrollListener,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              color: Colors.lightBlue,
              child: Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.red,
                                )),
                            SizedBox(
                                height: 50,
                                width: 200,
                                child: Container(
                                  color: Colors.lightBlue,
                                )),

                            //ADD_MORE_WIDGETS
                          ],
                        ),
                        //ADD_MORE_WIDGETS
                      ],
                    ),
                  ),
                  AnimatedAppBar(
                      drawerTween: _drawerTween,
                      onPressed: () {
                        scaffoldKey.currentState.openDrawer();
                      },
                      colorAnimationController: _ColorAnimationController,
                      colorTween: _colorTween,
                      homeTween: _homeTween,
                      iconTween: _iconTween,
                      workOutTween: _workOutTween,
                      growingAnimation: _growingAnimation)
                ],
              ),
            ),
            //ADD_MORE_WIDGETS
          ],
        ),
      ),
    );
  }
}

class AnimatedAppBar extends StatefulWidget implements PreferredSizeWidget {
  AnimationController colorAnimationController;
  Animation colorTween,
      homeTween,
      workOutTween,
      iconTween,
      drawerTween,
      growingAnimation;
  Function onPressed;
  final double _preferredHeight = 90.0;

  AnimatedAppBar(
      {@required this.colorAnimationController,
        @required this.onPressed,
        @required this.colorTween,
        @required this.homeTween,
        @required this.iconTween,
        @required this.drawerTween,
        @required this.workOutTween,
        @required this.growingAnimation});

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);

  @override
  _AnimatedAppBar createState() => _AnimatedAppBar();
}

class _AnimatedAppBar extends State<AnimatedAppBar>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: AnimatedBuilder(
        animation: widget.colorAnimationController,
        builder: (context, child) =>
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft:
                          Radius.circular(widget.growingAnimation.value),
                          bottomRight:
                          Radius.circular(widget.growingAnimation.value)),
                      color: Colors.tealAccent),
                  child: AppBar(
                    leading: IconButton(
                      icon: Icon(
                        Icons.dehaze,
                        color: widget.drawerTween.value,
                      ),
                      onPressed: widget.onPressed,
                    ),
                    backgroundColor: Colors.orange,
                    elevation: 0,
                    titleSpacing: 0.0,
                    title: Row(
                      children: <Widget>[
                        Text(
                          "Hello  ",
                          style: TextStyle(
                              color: widget.homeTween.value,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              letterSpacing: 1),
                        ),
                        Text(
                          'username',
                          style: TextStyle(
                              color: widget.workOutTween.value,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      Icon(
                        Icons.notifications,
                        color: widget.iconTween.value,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.arstechnica.net/wp-content/uploads/2016/02/5718897981_10faa45ac3_b-640x624.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(children: [
                  CustomPaint(
                      painter:
                      MyPainter(sheight: widget.growingAnimation.value * 0.3),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: widget.growingAnimation.value * 0.6)),

                ])
              ],
            ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({@required sheight});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Colors.orange;
    path = Path();
    path.lineTo(size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width,
        size.height);
    path.cubicTo(size.width, size.height * 0.73, size.width * 0.96,
        size.height * 0.51, size.width * 0.92, size.height * 0.51);
    path.cubicTo(size.width * 0.92, size.height * 0.51, size.width * 0.08,
        size.height * 0.51, size.width * 0.08, size.height * 0.51);
    path.cubicTo(size.width * 0.04, size.height * 0.51, 0, size.height * 0.73,
        0, size.height);
    path.cubicTo(0, size.height, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(
        size.width, 0, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width,
        size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
