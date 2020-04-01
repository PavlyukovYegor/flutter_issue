import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterissue/colored_text_field.dart';
import 'package:flutterissue/theme.dart';

class SignInPage extends StatefulWidget {
  static const String pageKey = "/sign_in";

  const SignInPage({Key key}) : super(key: key);

  static Widget builder(BuildContext context) => SignInPage();

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: StreamBuilder<dynamic>(
        builder: (BuildContext ctx, AsyncSnapshot<dynamic> state) {
          return _buildSignInFormPage(ctx);
        },
      ),
    );
  }

  Widget _buildSignInFormPage(BuildContext context) {
//    final double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buildLogo(),
              _buildSignInForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return FadeTransition(
      opacity: animation,
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Center(
              child: Container(
                  height: 200,
                  child: Icon(
                    Icons.accessible_forward,
                    size: 120,
                  ))),
        ),
      ]),
    );
  }

  Widget _buildSignInForm() {
    final ThemeData theme = Theme.of(context);
    return Container(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _buildEmailField(),
            _buildPasswordField(),
            _buildSignInButton(theme)
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: ColoredTextFormField(
        controller: _emailController,
        autoFocus: false,
        labelText: 'email',
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: ColoredTextFormField(
        controller: _passwordController,
        labelText: 'password',
        obscureText: true,
      ),
    );
  }

  Widget _buildSignInButton(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 15),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text('SIGN IN', style: TextStyle(color: primaryColor)),
          ),
          color: Colors.cyan,
          onPressed: () =>
              print('${_emailController.text}, ${_passwordController.text}'),
        ),
      ),
    );
  }
}
