import 'package:flutter/material.dart';

class MyContactPage extends StatefulWidget {
  const MyContactPage({Key? key}) : super(key: key);

  @override
  _MyContactPageState createState() => _MyContactPageState();
}

class _MyContactPageState extends State<MyContactPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: mainColumn(),
      ),
    );
  }
}


//the main column has all the children that make up the app-contact
  Column mainColumn() {
    return Column(
      children: [
        mySizedBoxVertical(100.0),
        personalAvatarImage(),
        mySizedBoxVertical(40.0),
        personalName(),
        personalDescription(),
        dividerBox(),
        containerNumber(),
        containerEmail(),
      ],
    );
  }
  //Returns Container with number info
  Container containerNumber() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          const Icon(
            Icons.phone,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          personalNumberText(),
        ],
      ),
    );
  }

  //Returns Container with email info
  Container containerEmail() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          const Icon(
            Icons.email,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          personalEmail(),
        ],
      ),
    );
  }

  //Returns CircleAvatar with img_avatar.png
  CircleAvatar personalAvatarImage() {
    return const CircleAvatar(
      radius: 50.0,
      foregroundImage: AssetImage('media/img_avatar.png'),
    );
  }

  SizedBox dividerBox() {
    return const SizedBox(
      width: 150.0,
      height: 30.0,
      child: Divider(
        color: Colors.black,
      ),
    );
  }


//Return a BoxDecoration used on our containers
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.black12,
    border: Border.all(color: Colors.black, width: 2.8),
    borderRadius: BorderRadius.circular(16),
  );
}

Text personalName() {
  return Text(
    "Joao r de melo neto",
    style: myFontStyle(30),
  );
}

Text personalDescription() {
  return Text(
    "Engenheiro de software",
    style: myFontStyle(24),
  );
}

Text personalNumberText() {
  return Text(
    "+55 (086) 99999-9999",
    style: myFontStyle(20),
  );
}

Text personalEmail() {
  return Text(
    "joaoneto@email.com",
    style: myFontStyle(22),
  );
}

TextStyle myFontStyle(double myfontSize) {
  return TextStyle(
    fontSize: myfontSize,
    fontFamily: "VT323-Regular",
  );
}

SizedBox mySizedBoxVertical(double size) {
  return SizedBox(
    height: size,
  );
}

SizedBox mySizedBoxHorizontal(double size) {
  return SizedBox(
    width: size,
  );
}