import 'package:flutter/material.dart';
import 'package:regreen/screens/signup.dart';
import 'package:regreen/utils/app_color.dart';
import 'package:regreen/widgets/custom_button1.dart';

import 'login.dart';

class WelcomeScreen extends StatelessWidget {
   static const String path = "WelcomeScreen";
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.png"),
            // fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              // Text(
              //   "T", 
              //   style: TextStyle(
              //     fontSize: 53, 
              //     fontWeight: FontWeight.w600,
              //     color: AppColor.primaryColor
              //   ),
              // ),
              Container(
                width: 229,
                height: 32,
                decoration: BoxDecoration(
                  // color: AppColor.secondaryColor,
                  borderRadius: BorderRadius.circular(5)
                ),
              //   child: Center(
              //     child: Text(
              //     "User Authentica", 
              //     style: TextStyle(
              //       fontSize: 19, 
              //       fontWeight: FontWeight.w500,
              //        color: AppColor.primaryColor
              //     ),
              //  ),
              //   ),
              ),
              SizedBox(height: 200,),
              CustomButton(
                onTap: (){
                  Route route = MaterialPageRoute(builder: (ctx)=> LoginScreen());
                  Navigator.push(context, route);
                },
                buttonLevel: "Login",
                color: AppColor.secondaryColor,
                levelColor: AppColor.primaryColor,
              ),
              SizedBox(height: 13,),
              CustomButton(
                onTap: (){
                  Route route = MaterialPageRoute(builder: (ctx)=> SignUpScreen());
                  Navigator.push(context, route);
                },
                buttonLevel: "Sign up",
                color: AppColor.primaryColor,
                levelColor: AppColor.secondaryColor,
              ),
          ],
        ),
      ),
    );
  }
}

