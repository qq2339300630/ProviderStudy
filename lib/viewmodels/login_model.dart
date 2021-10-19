import 'dart:async';

import 'package:providerstudy/viewmodels/base_model.dart';

import '../Api.dart';

class LoginViewModel extends BaseModel {
  LoginViewModel({required Api api}) : super(api: api);

  Timer? _timer;
  int _countdownTime = 0;

  Future<void> sendSms(String mobile) async {
    return await api.sensSms(mobile);
  }

  Future<bool> login(String mobile, String msg) async {
    return await api.login(mobile, msg) != null;
  }

  void startCountdown() {
    _countdownTime = 60;
    if(_timer == null) {
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        _countdownTime--;
        if(_countdownTime == 0) {

        }
      });
    }
  }

  void cancelTimer() {
    if(_timer != null) {
      _timer?.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    cancelTimer();
    super.dispose();
  }

  int get countdownTime => _countdownTime;
  set countdownTime(int value) {
    _countdownTime = value;
    notifyListeners();
  }

}