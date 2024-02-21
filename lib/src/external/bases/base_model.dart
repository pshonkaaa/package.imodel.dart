import 'package:ientity/library.dart';
import 'package:imodel/library.dart';
import 'package:foundation/library.dart';

abstract class AbstractModel<T extends IEntity> extends ModelController implements IModel {
  final T entity;
  
  @override
  ModelListeners get listeners;
  
  AbstractModel.fromEntity(this.entity);

  @override
  void initState() {
    super.initState();
    
    (listeners.state as Notifier<EModelState>).value = EModelState.initialized;
  }

  @override
  void dispose() {
    super.dispose();
    
    (listeners.state as Notifier<EModelState>).value = EModelState.disposed;
  }
}