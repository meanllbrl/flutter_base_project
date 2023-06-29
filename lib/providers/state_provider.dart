import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StateProvider with ChangeNotifier, DiagnosticableTreeMixin {
  //Todo you can easily add variables here and manage the state of your application

  //?private field
  bool _isAppOpened = false;
  //? get
  bool get isAppOpened => _isAppOpened;
  //?set
  set isAppOpened(value) {
    _isAppOpened = value;
    //!refresh the widgets
    notifyListeners();
  }

  //? reset methods -> every variable must be resetted here for needed operations
  void resetStates() {
    _isAppOpened = false;
  }

  //?Widget method to easily use this provider in a widget tree as StateProvider.provide((state)=>YourWidget())
  static Widget provide({required Function(StateProvider state) state}) =>
      Consumer<StateProvider>(
        builder: (BuildContext context, data, Widget? child) {
          return state(data);
        },
      );
}
