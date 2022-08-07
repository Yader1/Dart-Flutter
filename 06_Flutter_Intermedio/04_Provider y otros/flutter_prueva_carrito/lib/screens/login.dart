import 'package:flutter/material.dart';
import 'package:flutter_prueva_carrito/screens/catalogo.dart';
import 'package:flutter_prueva_carrito/screens/addPhone.dart';
import 'package:flutter_prueva_carrito/widgets/AppButton.dart';
import 'package:flutter_prueva_carrito/widgets/AppText.dart';
import 'package:flutter_prueva_carrito/widgets/AppTextBig.dart';
import 'package:flutter_prueva_carrito/widgets/AppTextFieldLanger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  static const String routeName = '/login';
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _email = TextEditingController(text: "");
  TextEditingController _password = TextEditingController(text: "");

  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState() {
    // TODO: implement initState
    check_if_already_login();
    super.initState();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Catalogo()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                //margin: const EdgeInsets.all(10.0),
                child: Center(
                    child: AppTextBig(
                  text: "Welcome back",
                  size: 36,
                  color: Color.fromARGB(255, 21, 27, 42),
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/img/img1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    AppText(
                      text: "Login to your account",
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    AppTextFieldLanger(
                      inputText: "Email",
                      controller: _email,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    AppTextFieldLanger(
                      inputText: "Password",
                      obscureText: true,
                      controller: _password,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    AppButton(
                      color: Color.fromARGB(255, 255, 166, 33),
                      name: "Login",
                      colorText: Colors.white,
                      onPressed: () {
                        String username = _email.text;
                        String password = _password.text;

                        if (username != '' && password != '') {
                          print('Successfull');
                          logindata.setBool('login', false);
                          logindata.setString('username', username);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => addPhone()));
                        }
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    AppText(
                      text: "Forgot your password?",
                      color: Colors.black,
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Positioned(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(text: "Dont't have an account? ", size: 18),
                        AppText(
                          text: "Sign up",
                          color: Color.fromARGB(255, 255, 166, 33),
                          size: 18,
                        )
                      ],
                    )),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
