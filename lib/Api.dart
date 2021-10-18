import 'package:providerstudy/model/user.dart';

class Api {
  Future<void> sensSms(String mobile) async {
    print('发送验证码');
    await Future.delayed(Duration(seconds: 1));
    print('发送验证码成功');
  }

  Future<User> login(String mobile, String sms) async {
    print('登录中');
    await Future.delayed(Duration(seconds: 1));
    User user = User(1, '程序员磊哥');
    print('登录成功');
    return user;
  }
}
