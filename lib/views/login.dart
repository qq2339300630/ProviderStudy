import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends State<LoginView> {
  final moblieTextController = TextEditingController();
  final smsTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          title: Text('登录/注册'),
        ),
        body: _buildLoginContent(context));
  }

  Widget _buildLoginContent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildTitle(context),
        SizedBox(height: 30),
        _buildSignArea(context),
        SizedBox(height: 50),
        _buildLoginBtn(context),
        SizedBox(height: 16)
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Column(
      children: [
        Text(
          '用户登录',
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(height: 8),
        Text('Flutter MVVM 登录')
      ],
    );
  }

  Widget _buildSignArea(BuildContext context) {
    return Container(
      width: 270,
      child: Column(
        children: [
          _buiudMoblie(context),
          Container(height: 0.5,color: Color(0xff6a6a6a),),
          _buildSMS(context),
          Container(height: 0.5,color: Color(0xff6a6a6a),)
        ],
      ),
    );
  }

  Widget _buiudMoblie(BuildContext context) {
    return TextField(
      keyboardAppearance: Brightness.light,
      keyboardType: TextInputType.number,
      controller: moblieTextController,
      maxLength: 11,
      style: TextStyle(fontSize: 14, color: Color(0xFF191919)),
      decoration: InputDecoration(
          border: InputBorder.none,
          counterText: '',
          hintText: '清输入手机号',
          hintStyle: TextStyle(fontSize: 14, color: Color(0xffa5a5a5))),
    );
  }

  Widget _buildSMS(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            child: TextField(
          keyboardType: TextInputType.number,
          controller: smsTextController,
          maxLength: 4,
          style: TextStyle(fontSize: 14, color: Color(0xff191919)),
          decoration: InputDecoration(
              border: InputBorder.none,
              counterText: '',
              hintText: '请输入短信验证码',
              hintStyle: TextStyle(fontSize: 14, color: Color(0xffa5a5a5))),
        )),
        GestureDetector(
          onTap: () async {},
          child: Text(
            '发送短信验证码',
            style: TextStyle(fontSize: 14, color: Color(0xff6a6a6a)),
          ),
        )
      ],
    );
  }

  _buildLoginBtn(BuildContext context) {
    return ButtonTheme(
        minWidth: 270,
        height: 45,
        buttonColor: Color(0xff08ba07),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('');
          },
          child: Text(
            '登录',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ));
  }
}
