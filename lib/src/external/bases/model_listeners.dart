import 'package:ientity/library.dart';
import 'package:imodel/library.dart';
import 'package:pshondation/library.dart';

abstract class ModelListeners {
  int get countConsumers => (loadedState as Notifier).length;

  bool get loaded => loadedState.value;

  INotifier<EModelState> get state;
  INotifier<bool> get loadedState;
  INotifier<List<EntityColumnInfo>> get onChangeEntries;
}