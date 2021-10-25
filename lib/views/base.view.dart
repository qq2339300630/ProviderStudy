import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstudy/viewmodels/base_model.dart';

class BaseView<T extends BaseModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child) builder;

  final T model;
  final Widget? child;
  final Function(T) onModelReady;

  BaseView(
      {Key? key,
      required this.model,
      required this.builder,
      this.child,
      required this.onModelReady})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BaseViewState<T>();
  }
}

class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
  late T model;

  @override
  void initState() {
    model = widget.model;
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      child: Consumer<T>(
        builder: widget.builder,
        child: widget.child,
      ),
      create: (context) {
        return model;
      },
    );
  }
}
