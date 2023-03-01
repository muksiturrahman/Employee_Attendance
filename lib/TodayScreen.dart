import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  double screenHeight = 0;
  double screenWidth = 0;
  Color primary =  const Color(0xffeef44c);

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 32),
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome",style: TextStyle(
                color: Colors.black54,
                fontFamily: "NexaRegular",
                fontSize: screenWidth/20,
              ),
              ),
            ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Employee",style: TextStyle(
                fontFamily: "NexaBold",
                fontSize: screenWidth/18,
              ),
              ),
            ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 32),
              child: Text(
                "Today's Status",style: TextStyle(
                fontFamily: "NexaBold",
                fontSize: screenWidth/18,
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12, bottom: 32),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  ),
                ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Check In",style: TextStyle(
                          fontSize: screenWidth/20,
                          fontFamily: "NexaRegular",
                          color: Colors.black54
                        ),),
                        Text("09:30",style: TextStyle(
                            fontSize: screenWidth/18,
                            fontFamily: "NexaBold",
                        ),),
                      ],
                    ),
                  ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Check Out",style: TextStyle(
                            fontSize: screenWidth/20,
                            fontFamily: "NexaRegular",
                            color: Colors.black54
                        ),),
                        Text("--/--",style: TextStyle(
                          fontSize: screenWidth/18,
                          fontFamily: "NexaBold",
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: "01 ",
                  style: TextStyle(
                    color: primary,
                    fontSize: screenWidth/18,
                    fontFamily:"NexaBold",
                  ),
                  children: [
                    TextSpan(
                      text: "Mar 2023",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth/20,
                        fontFamily:"NexaBold",
                      ),
                    ),
                  ]
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "12:00:01 PM",
                style: TextStyle(
                  fontFamily: "NexaRegular",
                  fontSize: screenWidth/20,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Builder(
                builder: (context){
                  final GlobalKey<SlideActionState> key = GlobalKey();
                  return SlideAction(
                    text: "Slide to Check Out",
                    textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: screenWidth/20,
                      fontFamily: "NexaRegular",
                    ),
                    outerColor: Colors.white,
                    innerColor: primary,
                    key: key,
                    onSubmit: (){
                      key.currentState!.reset();
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
