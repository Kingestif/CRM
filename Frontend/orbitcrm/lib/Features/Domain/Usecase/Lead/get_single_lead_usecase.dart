import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';
import '../../Repositories/lead repository.dart';

class GetSingleLeadUsecase{
  final LeadRepository repository;
  GetSingleLeadUsecase(this.repository);

  Future<Either<Failure, LeadEntity>> execute(String id) {
    return repository.getSingleLead(id);
  }
}