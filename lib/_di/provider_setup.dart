import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../pages/home/home_view_model.dart';
import '../pages/splash/splash_view_model.dart';

// 1. Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 2. 독립적인 객체
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  ),
];

// 3. 2번에 의존성이 있는 객체
List<SingleChildWidget> dependentModels = [];

// 4. ViewModels
List<SingleChildWidget> viewModels = [
  Provider<SplashViewModel>(create: (context) => SplashViewModel()),
  Provider<HomeViewModel>(create: (context) => HomeViewModel()),
];
