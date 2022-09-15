import 'package:flutter/widgets.dart';

import 'EModelState.dart';

abstract class ModelController {
  EModelState _state = EModelState.idle;

  @mustCallSuper
  void initState() {
    // assert(() {
      if(_state == EModelState.initialized)
        throw(new Exception("Model has been already initialized"));
      else if(_state == EModelState.disposed)
        throw(new Exception("Model has been already disposed"));
      _state = EModelState.initialized;
      // return true;
    // }());
  }

  @mustCallSuper
  void dispose() {
    // assert(() {
      if(_state == EModelState.disposed)
        throw(new Exception("Model has been already disposed"));
      _state = EModelState.disposed;
      // return true;
    // }());
  }
}