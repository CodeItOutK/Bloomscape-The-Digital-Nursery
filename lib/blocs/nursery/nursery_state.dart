part of 'nursery_bloc.dart';

abstract class NurseryState extends Equatable{
  const NurseryState();

  @override
  List<Object?>get props=>[];
}

class NurseryLoading extends NurseryState{}

class NurseryLoaded extends NurseryState{
  final List<Nursery>nurseries;

  NurseryLoaded(this.nurseries);
  @override
  List<Object?>get props=>[nurseries];
}