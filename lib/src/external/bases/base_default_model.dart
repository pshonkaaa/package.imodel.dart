import 'package:ientity/library.dart';
import 'package:imodel/library.dart';

abstract class BaseDefaultModel<T extends IEntity> extends AbstractModel<T> {
  @override
  late DefaultModelListeners listeners;
  
  BaseDefaultModel.fromEntity(
    T entity, {
      DefaultModelListeners? listeners,
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