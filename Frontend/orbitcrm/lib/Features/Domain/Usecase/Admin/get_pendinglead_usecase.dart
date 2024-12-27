import 'package:dartz/dartz.dart';
import 'package:orbitcrm/Features/Domain/Repositories/admin%20repository.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';

class GetPendingLeadUsecase{
  final AdminRepository repository;
  GetPendingLeadUsecase(this.repository);

  Future<Either<Failure, LeadEntity>> execute(String id) {
    return repository.getPendingLead(id);
  }
}