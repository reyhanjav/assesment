import 'dart:async';

import 'package:assesment/application/bloc/image_generator_bloc.dart';
import 'package:assesment/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldMessengerState> snackbarKey =
      GlobalKey<ScaffoldMessengerState>();
  StreamSubscription<InternetConnectionStatus>? _dataConnectionSubscription;
  late BuildContext _buildContext;

  @override
  void initState() {
    super.initState();

    _dataConnectionSubscription =
        InternetConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          debugPrint('Connect to internet');
          break;
        case InternetConnectionStatus.disconnected:
          Fluttertoast.showToast(
              msg: 'No Internet Connection',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          debugPrint('You are disconnected from the internet.');
          break;
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _dataConnectionSubscription?.resume();

        break;
      case AppLifecycleState.inactive:
        _dataConnectionSubscription?.pause();
        break;
      case AppLifecycleState.paused:
        _dataConnectionSubscription?.pause();
        break;
      case AppLifecycleState.detached:
        _dataConnectionSubscription?.cancel();
        break;
    }
  }

  refreshImage() {
    BlocProvider.of<ImageGeneratorBloc>(_buildContext)
        .add(const ImageGeneratorEvent.generate());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: snackbarKey,
      appBar: AppBar(
        title: const Text('Image Generator'),
      ),
      body: BlocProvider(
        create: (BuildContext context) => getIt<ImageGeneratorBloc>()
          ..add(const ImageGeneratorEvent.generate()),
        child: Builder(builder: (context) {
          _buildContext = context;
          return BlocBuilder<ImageGeneratorBloc, ImageGeneratorState>(
              builder: ((context, state) {
            return state.map(loadInProgress: (value) {
              return const Center(child: CircularProgressIndicator());
            }, loadSuccess: (value) {
              return GestureDetector(
                  onTap: () => refreshImage(),
                  child: Center(
                      child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        image: DecorationImage(
                            image: NetworkImage(value.result.message ?? ''))),
                  )));
            }, loadFailure: (value) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      size: 24,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(value.error),
                    CupertinoButton(
                        child: const Text('Refresh'),
                        onPressed: () => refreshImage())
                  ],
                ),
              );
            });
          }));
        }),
      ),
    );
  }
}
