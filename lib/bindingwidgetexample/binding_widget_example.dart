import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BindingObserverExample extends StatefulWidget {
  const BindingObserverExample({Key? key}) : super(key: key);

  @override
  State<BindingObserverExample> createState() => _BindingObserverExampleState();
}

class _BindingObserverExampleState extends State<BindingObserverExample>
    with WidgetsBindingObserver {
  int count = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.paused:
        debugPrint("Paused state");
        break;
      case AppLifecycleState.resumed:
        debugPrint("Resumed state");
        break;
      case AppLifecycleState.inactive:
        debugPrint("Inactive state");
        break;
      case AppLifecycleState.detached:
        debugPrint("Detached state");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('count $count'),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: const Text('Increase count'))
            ],
          ),
        ),
      ),
    );
  }
}
