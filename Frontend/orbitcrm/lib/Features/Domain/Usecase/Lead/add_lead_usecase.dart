import 'package:dartz/dartz.dart';
import 'package:orbitcrm/Features/Domain/Repositories/lead%20repository.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';

class AddLeadUsecase{
  final LeadRepository repository;
  AddLeadUsecase(this.repository);

  Future<Either<Failure, LeadEntity>> execute(LeadEntity lead) {
    return repository.addLead(lead);
  }
}