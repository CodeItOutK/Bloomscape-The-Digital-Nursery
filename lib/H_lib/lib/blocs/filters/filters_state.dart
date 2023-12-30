import 'package:equatable/equatable.dart';

import '../../models/filter_model.dart';
abstract class FiltersState extends Equatable{
  const FiltersState();

  @override
  List<Object> get props =>[];
}

class FiltersLoading extends FiltersState{}

class FiltersLoaded extends FiltersState{
  final Filter filter;

  Object? filteredNurseries;

  FiltersLoaded({
    this.filter = const Filter(),
  });
  @override
  List<Object> get props =>[filter];
}