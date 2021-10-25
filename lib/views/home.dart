import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstudy/view_state.dart';
import 'package:providerstudy/viewmodels/home_model.dart';
import 'package:providerstudy/views/base.view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
        onModelReady: (model) async {
          model.loadData();
        },
        model: HomeViewModel(api: Provider.of(context)),
        builder: (context, model, child) => Scaffold(
            backgroundColor: Color(0xfff5f5f5),
            appBar: AppBar(
              title: Text('首页'),
            ),
            body: _buildBody(context, model)));
  }

  Widget _buildBody(BuildContext context, HomeViewModel model) {
    return Container(
        child: model.state == ViewState.Busy
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text('App首页'),
              ));
  }
}
