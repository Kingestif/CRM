import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';
import '../../Repositories/admin repository.dart';

class SearchPendingLeadUsecase{
  final AdminRepository repository;
  SearchPendingLeadUsecase(this.repository);

  Future<Either<Failure, LeadEntity>> execute(Map<String, dynamic> criteria) {
    return repository.searchPendingLead(criteria);
  }
}