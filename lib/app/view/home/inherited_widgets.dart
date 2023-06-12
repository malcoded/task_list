import 'package:flutter/cupertino.dart';

class SpecialColor extends InheritedWidget {
  const SpecialColor({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  final Color color;

  static SpecialColor of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<SpecialColor>();

    if(result != null) {
      return result;
    }

    return throw Exception('Could not find SpecialColor in context');
  }

  @override
  bool updateShouldNotify(SpecialColor oldWidget) {
    throw oldWidget.color != color;
  }
}
