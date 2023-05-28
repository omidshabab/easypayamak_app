import 'package:easypayamak/constants/routes.dart';
import 'package:easypayamak/constants/theme.dart';
import 'package:easypayamak/constants/translation.dart';
import 'package:easypayamak/ui/pages/home/view.dart';
import 'package:easypayamak/ui/pages/soon/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await GetStorage.init();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.white.withOpacity(0.05),
    ),
  );

  runApp(
    const EasyPayamak(),
  );
}

class EasyPayamak extends StatelessWidget {
  const EasyPayamak({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "appName".tr,
      themeMode: ThemeMode.light,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      locale: Locale("fa"),
      initialRoute: Routes.home,
      unknownRoute: GetPage(name: Routes.soon, page: () => SoonView()),
      getPages: [
        GetPage(name: Routes.home, page: () => HomeView()),
      ],
      translationsKeys: Translation.translationsKeys,
      fallbackLocale: const Locale("fa"),
      defaultTransition: Transition.native,
    );
  }
}
