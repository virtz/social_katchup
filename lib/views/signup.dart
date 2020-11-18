import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_katchup/utils/myTextStyle.dart';
import 'package:social_katchup/widgets/appButton.dart';
import 'package:social_katchup/widgets/myTextField.dart';
import 'package:social_katchup/widgets/myTextWidget.dart';
import 'package:social_katchup/widgets/pinkCircle.dart';
import 'package:social_katchup/widgets/yellowCircles.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.init(context,
        width: defaultScreenWidth,
        height: defaultScreenHeight,
        allowFontScaling: true);
    bool autoValidate = false;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          resizeToAvoidBottomPadding: false,
          body: Stack(
            children: [
              BigCircle(
                size: size,
                left: 80,
                bottom: 530,
                height: 320,
                width: size.width,
              ),

              //yellow circle on the left
              Positioned(
                  //  top:0.0,
                  //  left:0.0,
                  right: 125,
                  bottom: 620,
                  child: Container(
                    height: 250,
                    width: size.width,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //  color: Colors.yellow,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF6DC79),
                            Color(0xFFF9C87A),
                            Color(0xFFFCB47B),
                            Color(0XFFFFA17B),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )),
                  )),

              //small yellow circles on the left
              YellowCircle(
                size: size,
                top: 245,
                left: 85,
                height: 6,
                width: 6,
              ),
              YellowCircle(
                top: 200,
                left: 110,
                height: 7,
                width: 7,
              ),
              YellowCircle(
                size: size,
                top: 175,
                left: 95,
                height: 4,
                width: 4,
              ),

              //small yellow cirlces on the right
              YellowCircle(
                size: size,
                top: 170,
                left: 255,
                height: 8,
                width: 8,
              ),
              YellowCircle(
                size: size,
                top: 199,
                left: 245,
                height: 4,
                width: 4,
              ),
              YellowCircle(
                size: size,
                top: 227,
                left: 270,
                height: 11,
                width: 11,
              ),

              //back button
              Positioned(
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.w),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.black54,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Positioned(
                  top: 60,
                  left: 0.0,
                  right: 0.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Text('Hello!',
                            style:
                                myStyle(fontSize: 14.0, color: Colors.white)),
                        SizedBox(height: 5),
                        Text('Sign up to started.',
                            style:
                                myStyle(color: Colors.white, fontSize: 14.0)),
                        SizedBox(height: ScreenUtil().setHeight(50)),
                        CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage('assets/images/user.jpg'),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(40),
                        ),
                        MyTextField(
                          enableSuggestions: true,
                          autoValidate: autoValidate,
                          size: size,
                          labelText: 'FULL NAME',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MyTextField(
                          enableSuggestions: true,
                          autoValidate: autoValidate,
                          size: size,
                          labelText: 'EMAIL ADDRESS',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MyTextField(
                          enableSuggestions: true,
                          autoValidate: autoValidate,
                          size: size,
                          labelText: 'PASSWROD',
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        MyButton(
                            onPressed: () {},
                            child: Center(
                                child: Text('Sign up',
                                    style: myStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(16))))),
                        SizedBox(height: 25),
                        TextWidget(
                            firstText: "Already have an account?",
                            secondText: " Sign in",
                            onPressed: () => gotoSiginIn(context))
                      ],
                    ),
                  )),
              Positioned(
                  top: 225,
                  right: 125,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ))
            ],
          )),
    );
  }

  gotoSiginIn(context) {
    Navigator.pop(context);
  }
}
