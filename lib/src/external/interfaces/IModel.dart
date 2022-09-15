import 'IModelListeners.dart';

abstract class IModel<ENUM> {
  IModelListeners<ENUM> get listeners;
}