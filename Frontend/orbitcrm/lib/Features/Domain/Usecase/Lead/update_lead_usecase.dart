import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';
import '../../Repositories/lead repository.dart';

class UpdateLeadUsecase{
  final LeadRepository repository;
  UpdateLeadUsecase(this.repository);

  Future<Either<Failure, LeadEntity>> execute(Map<String, dynamic> updates) {
    return repository.updateLead(updates);
  }
}