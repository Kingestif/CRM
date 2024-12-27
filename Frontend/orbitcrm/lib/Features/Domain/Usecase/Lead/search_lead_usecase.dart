import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';
import '../../Repositories/lead repository.dart';

class SearchLeadUsecase{
  final LeadRepository repository;
  SearchLeadUsecase(this.repository);

  Future<Either<Failure, LeadEntity>> execute(Map<String, dynamic> criteria) {
    return repository.searchLead(criteria);
  }
}