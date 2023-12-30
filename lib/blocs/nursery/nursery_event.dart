part of 'nursery_bloc.dart';

abstract class NurseryEvent extends Equatable{
  const NurseryEvent();

  @override
  List<Object>get props=>[];
}

class LoadNurseries extends NurseryEvent{
  final List<Nursery>nurseries;
  LoadNurseries(this.nurseries);
  @override
  List<Object>get props=>[nurseries];
}