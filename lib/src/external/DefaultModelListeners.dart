import 'package:true_core/library.dart';

import 'AbstractDefaultModel.dart';
import 'interfaces/EModelState.dart';
import 'interfaces/IModelListeners.dart';

class DefaultModelListeners<ENUM> extends IModelListeners<ENUM> {
  late final AbstractDefaultModel model;
  
  @override
  final Notifier<EModelState> state = new Notifier(value: EModelState.idle);
  
  @override
  final Notifier<bool> loadedState = new Notifier(value: false);

  @override
  final Notifier<List<ENUM>> onChangeEntries = new Notifier(value: []);

  DefaultModelListeners();
}