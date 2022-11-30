import 'package:ientity/library.dart';
import 'package:true_core/library.dart';

import 'AbstractDefaultModel.dart';
import 'interfaces/EModelState.dart';
import 'interfaces/IModelListeners.dart';

class DefaultModelListeners<ENUM> extends IModelListeners {
  late final AbstractDefaultModel model;
  
  @override
  final Notifier<EModelState> state = new Notifier(value: EModelState.idle);
  
  @override
  final Notifier<bool> loadedState = new Notifier(value: false);

  @override
  final Notifier<List<EntityColumnInfo>> onChangeEntries = new Notifier(value: []);

  DefaultModelListeners();
}