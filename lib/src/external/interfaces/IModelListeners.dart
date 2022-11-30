import 'package:ientity/library.dart';
import 'package:true_core/library.dart';

import 'EModelState.dart';

abstract class IModelListeners {
  int get countConsumers => (loadedState as Notifier).length;

  INotifier<EModelState> get state;
  INotifier<bool> get loadedState;
  INotifier<List<EntityColumnInfo>> get onChangeEntries;
}