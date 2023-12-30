import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/nursery_model.dart';
import '../../repositories/nursery/nursery_repository.dart';

part 'nursery_state.dart';
part 'nursery_event.dart';

class NurseryBloc extends Bloc<NurseryEvent,NurseryState>{
  final NurseryRepository _nurseryRepository;
  StreamSubscription? _nurserySubscription;
  NurseryBloc({
    required NurseryRepository nurseryRepository,
}):_nurseryRepository=nurseryRepository ,super(NurseryLoading()){
    on<LoadNurseries>(_onLoadNurseries);

    _nurserySubscription = _nurseryRepository.getNurseries().listen((nurseries) =>
      add(LoadNurseries(nurseries))
    );
  }

  void _onLoadNurseries(LoadNurseries event, Emitter<NurseryState>emit){
  emit(NurseryLoaded(event.nurseries));
  }
@override
  Future<void> close()async{
    _nurserySubscription?.cancel();
    super.close();
}
}