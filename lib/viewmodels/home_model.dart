
import 'package:providerstudy/Api.dart';
import 'package:providerstudy/view_state.dart';
import 'package:providerstudy/viewmodels/base_model.dart';

class HomeViewModel extends BaseModel {
  HomeViewModel({required Api api}) : super(api: api);

  Future<void> loadData() async {
    print('加载首页数据...');
    setState(ViewState.Busy);
    await Future.delayed(Duration(seconds: 2));
    setState(ViewState.Idle);
    print('加载首页数据完成');
  }
}