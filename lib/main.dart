import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '_di/provider_setup.dart';
import 'pages/home/home_page.dart';
import 'pages/my_page/my_page.dart';
import 'pages/splash/splash_page.dart';
import 'styles/color_type.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    Phoenix(
      child: MultiProvider(
        providers: globalProviders,
        child: const App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        locale: const Locale('ko'),
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          useMaterial3: true,
          scaffoldBackgroundColor: ColorType.baseBackground.color,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
              .copyWith(background: ColorType.baseBackground.color),
        ),
        initialRoute: SplashPage.routeName,
        routes: {
          SplashPage.routeName: (context) => const SplashPage(),
          HomePage.routeName: (context) => const HomePage(),
          MyPage.routeName: (context) => const MyPage(),
        },
      ),
    );
  }
}
