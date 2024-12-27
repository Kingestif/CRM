import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';
import '../../Repositories/admin repository.dart';

class GetAllPendingLeadUsecase{
  final AdminRepository repository;
  GetAllPendingLeadUsecase(this.repository);

  Future<Either<Failure, List<LeadEntity>>> execute() {
    return repository.getAllPendingLeads();
  }
}