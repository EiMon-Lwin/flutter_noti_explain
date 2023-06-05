import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Noti{

  static Future initialize( FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin )async{

    var androidInitialize=new AndroidInitializationSettings('mipmap/ic_launcher');
    //var iOsInitialize=new IOSInitializationSettings();
    var initializationSettings=InitializationSettings(android: androidInitialize);
   await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future showBigTextNotification({var id=0,required String title,required String body,var payLoad,
  required FlutterLocalNotificationsPlugin fln}) async
  {

    AndroidNotificationDetails androidPlatformChannelSpecifies=new AndroidNotificationDetails(
        'you_can_name_it_whatever1', "channel_name",
      playSound: true,
      //sound: RawResourceAndroidNotificationSound('notification'),
      importance: Importance.max,
      priority: Priority.high,

    );
    var not=NotificationDetails(android: androidPlatformChannelSpecifies);
    await fln.show(0, title, body, not);

}
}