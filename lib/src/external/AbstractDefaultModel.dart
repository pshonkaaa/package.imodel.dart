import 'package:ientity/library.dart';

import 'AbstractModel.dart';
import 'DefaultModelListeners.dart';
import 'interfaces/EModelState.dart';

abstract class AbstractDefaultModel<T extends IEntity<ENUM>, ENUM> extends AbstractModel<T, ENUM> {
  @override
  late DefaultModelListeners<ENUM> listeners;
  
  AbstractDefaultModel.fromEntity(
    T entity, {
      DefaultModelListeners<ENUM>? listeners,
  }) : super.fromEntity(entity) {
    this.listeners = listeners ?? DefaultModelListeners();
  }

  @override
  void initState() {
    super.initState();
    
    listeners.model = this;
    listeners.state.value = EModelState.initialized;
  }

  @override
  void dispose() {
    super.dispose();
    
    listeners.state.value = EModelState.disposed;
  }
}