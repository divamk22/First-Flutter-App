import 'package:flutter/material.dart';

myapp() {
  //text to be printed in my main body
  var mytext = Text(
    "Beyblade Burst",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  //functions to events, when the iconbutton/button is pressed
  mypress() {
    print("Clicked Mail.......");
  }

  mypress2() {
    print("Clicked Alarm.......");
  }

  //Icons - elements which act as thumbnails, but don't have any functionalities of button
  var myemailicon = Icon(
    Icons.email,
    color: Colors.yellow,
  );
  var myalarmicon = Icon(
    Icons.access_alarm,
    color: Colors.black,
  );
  var mycallicon = Icon(
    Icons.call,
    color: Colors.blue,
  );

  //IconButton - icons, which can act as buttons, perform events when they are pressed or some other action is done
  var myemailbutton = IconButton(
    icon: myemailicon,
    onPressed: mypress,
  );
  var myalarmbutton = IconButton(
    icon: myalarmicon,
    onPressed: mypress2,
  );

  //AppBar - the top bar which appears in the android apps
  //can have text, images, icons, iconbuttons, etc.
  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.red,
    //leading: Text('Divam'),
    leading: mycallicon,
    actions: <Widget>[myemailbutton, myalarmbutton],
  );

  //url
  var url =
      'https://vignette.wikia.nocookie.net/beyblade/images/1/18/Beyblade_Burst_Superking_Rage_Longinus_Destroy%27_3A_avatar_25.png/revision/latest/top-crop/width/220/height/220?cb=20200619223546';
  //Image - used to get an image and put it in the app
  //can adjust size, borders, orientation etc.
  var myimage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  //main app
  //Scaffold - a pre-designed framework in flutter
  var myhome = Scaffold(
    appBar: myappbar,
    //body: Center(child: Text('Helix Dragonoid MK3')),
    body: myimage,
    backgroundColor: Colors.grey.shade400,
  );

  //MaterialApp - the pre-defined class for flutter apps
  //It is likely the main or core component of flutter.
  //We can access all the other components and widgets provided by Flutter SDK.
  //Text widget, Dropdownbutton widget, AppBar widget, Scaffold widget, ListView widget, StatelessWidget, StatefulWidget,
  //IconButton widget, TextField widget, Padding widget, ThemeData widget, etc. are the widgets that can be accessed using MaterialApp class.
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
