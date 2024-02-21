import 'package:ientity/library.dart';
import 'package:imodel/library.dart';
import 'package:pshondation/library.dart';

class DefaultModelListeners extends ModelListeners {
  late final BaseDefaultModel model;
  
  @override
  final Notifier<EModelState> state = Notifier(value: EModelState.idle);
  
  @override
  final Notifier<bool> loadedState = Notifier(value: false);

  @override
  final Notifier<List<EntityColumnInfo>> onChangeEntries = Notifier(value: []);

  DefaultModelListeners();
}