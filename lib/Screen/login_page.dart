import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}
TextEditingController txtemail=TextEditingController();
TextEditingController txtpass=TextEditingController();
bool password=true;
class _Login_pageState extends State<Login_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:  EdgeInsets.only(right: 25, left: 25),
                child: TextField(

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      label: Text(
                        'Email',
                        style: TextStyle(fontSize: 15),
                      ),
                      hintText: 'Enter Your Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey))),

                ),
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text(
                      'Password',
                      style: TextStyle(fontSize: 15),
                    ),
                    hintText: 'Enter The Password',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: InkWell(
                        onTap: (){
                          setState(() {
                            if(password)
                            {
                              password=false;
                            }
                            else{
                              password=true;
                            }
                          });
                        },
                        child: (password)?Icon(Icons.remove_red_eye):Icon(CupertinoIcons.eye_slash_fill)),
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey)
                    ),
                  ),
                  obscureText: password,
                  obscuringCharacter: "*",
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 10,
                    width: 220,
                  ),
                  Text('Forgot Password'),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: ()
                {
                  setState(() {
                    email=txtemail.text;
                    pass=txtpass.text;
                  });
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Color(0xffffa3a5), Color(0xfff73e6c)],
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                ),
              ),
              SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Login with Google',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text('or Login with SSO',),

            ],
          ),
        ),
      ),
    );
  }
}

String email = "";
String pass = "";
