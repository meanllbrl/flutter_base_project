# Flutter Base Project

The Flutter Base Project is designed to provide a quick start to your Flutter projects. This project utilizes the Model-View-Controller (MVC) architecture and includes numerous features such as Theme Infrastructure, State Management with Provider, and Context Extensions.

To incorporate this project into your existing projects, simply include the YAML and `lib` sections into your Flutter project.

The controller section allows for easy interaction between the model and the view. You may refer to the `weather_service` code for an example on how to use it.

Currently, only `context_extension` is available in the extensions section. However, we aim to enhance this further. Even at this stage, shortcuts like accessing device dimensions, keyboard control, and state management classes through the context, and theme access are available.

Sample codes for weather portions are provided in the models and services sections.

Here's a snippet of the provider class:

```dart
class StateProvider with ChangeNotifier, DiagnosticableTreeMixin {
  // Private field
  bool _isAppOpened = false;
  
  // Getter
  bool get isAppOpened => _isAppOpened;
  
  // Setter
  set isAppOpened(value) {
    _isAppOpened = value;
    // Refresh the widgets
    notifyListeners();
  }

  // Reset methods - every variable must be resetted here for needed operations
  void resetStates() {
    _isAppOpened = false;
  }

  // Widget method to easily use this provider in a widget tree as StateProvider.provide((state)=>YourWidget())
  static Widget provide({required Function(StateProvider state) state}) =>
      Consumer<StateProvider>(
        builder: (BuildContext context, data, Widget? child) {
          return state(data);
        },
      );
}
