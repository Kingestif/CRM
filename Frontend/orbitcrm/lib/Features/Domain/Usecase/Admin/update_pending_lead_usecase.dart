import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';
import '../../Repositories/admin repository.dart';

class UpdatePendingLeadUsecase{
  final AdminRepository repository;
  UpdatePendingLeadUsecase(this.repository);

  Future<Either<Failure, LeadEntity>> execute(Map<String, dynamic> updates) {
    return repository.updatePendingLead(updates);
  }
}