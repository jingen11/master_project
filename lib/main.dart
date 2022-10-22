import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'core/bloc/bloc_observer.dart';
import 'core/bloc/theme/theme_bloc.dart';
import 'core/constant/app_dimensions.dart';
import 'routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // persistance storage initialisation
  final storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

  // run app and oberserver for bloc
  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
          MediaQueryData.fromWindow(WidgetsBinding.instance.window).size,
      rebuildFactor: (_, __) => false, // prevent screen from rebuilding
      builder: (context, _) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<ThemeBloc>(
              lazy: false,
              create: (BuildContext context) => ThemeBloc(),
            ),
          ],
          child: const _App(),
        );
      },
    );
  }
}

class _App extends StatefulWidget {
  const _App();

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  @override
  void initState() {
    // when app initialise, set status bar brightness
    if (context.read<ThemeBloc>().state.currentTheme.brightness ==
        Brightness.light) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    }
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // only initialise the app dimension when it is potrait mode to prevent
    // undesired font size and dimensions
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      AppDimension();
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc, ThemeState>(
      listener: (context, state) {
        // for toggling theme, to be implemented later

        if (state.currentTheme.brightness == Brightness.light) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
        } else {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
        }
      },
      builder: (context, state) {
        return MaterialApp(
          title: 'app name',
          color: Colors.black,
          debugShowCheckedModeBanner: false,
          theme: state.currentTheme,
          initialRoute: RouteGenerator.splash,
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}
// orientation
