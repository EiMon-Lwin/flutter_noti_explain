import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'noti.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();

void main(){

  runApp(FlutterNotiExplain());
}
class FlutterNotiExplain extends StatelessWidget {
  const FlutterNotiExplain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterNotiFunction(),
    );
  }
}
class FlutterNotiFunction extends StatefulWidget {
  const FlutterNotiFunction({Key? key}) : super(key: key);

  @override
  State<FlutterNotiFunction> createState() => _FlutterNotiFunctionState();
}

class _FlutterNotiFunctionState extends State<FlutterNotiFunction> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Noti.initialize(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:
              [Color(0xFF3ac3cb),Color(0xFFf85185)]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: ElevatedButton(
            onPressed: () {

              Noti.showBigTextNotification(title: "Message title", body: "Your long body",
                  fln: flutterLocalNotificationsPlugin);
            }, child: Icon(Icons.notification_add),

          ),
        ),

      ),
    );
  }
}
