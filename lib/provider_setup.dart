
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:providerstudy/Api.dart';

List<SingleChildWidget> providers = [...independentServices];


List<SingleChildWidget> independentServices = [Provider(create: (_) => Api())];
