import 'package:assignment1/widgets/button_widget.dart';
import 'package:assignment1/widgets/socialicon_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/text_field_widgets.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
// final LoginController controller = Get.put(LoginController());
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      persistentFooterButtons: [
        Center(child: Text("By clicking on Login you're Agreeing with our " )),
        Center(child: Text('terms & conditions', style: TextStyle(color: Colors.blue),))
      ],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Image.asset("assets/images/Logo.png", scale: 5.0),
                      SizedBox(width: screenHeight*0.01),
                      Text("QuizOpro",
                      style: TextStyle(
                        fontSize: 25,

                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        decorationStyle: TextDecorationStyle.solid,
                        color: Colors.blue,
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: screenHeight*0.03),
                Text('Login with your Email and Password to Continue...',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: screenHeight*0.03),
                CustomTextField(
                  lableText: 'Email',
                  hint: "Enter your email..",
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                ),
                SizedBox(height: screenHeight*0.001),
                CustomTextField(
                    lableText: 'PassWord',
                    hint: "Enter your password..",
                    icon: Icons.password_outlined,
                  obscureText: true,
                  controller: passwordController,
                  // errorText:,
                ),
                SizedBox(height: screenWidth*0.02),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: (){},
                    child: Text('Forgot password?',style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ),
                SizedBox(height: screenHeight*0.02),
                ButtonWidget(
                  btname: 'Login',
                textStyle: TextStyle(
                  color: Colors.white,
                ),
                ),
                SizedBox(height: screenWidth*0.15),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Log in with'),
                    ),
                    Expanded(child: Divider(
                      color: Colors.blueGrey,
                      thickness: 3,
                    )),

                  ],
                ),
                SizedBox(height: screenHeight*0.03),
                Socialicon('assets/images/google.png'),
                SizedBox(height: screenHeight*0.03),
                Socialicon('assets/images/facebook.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
