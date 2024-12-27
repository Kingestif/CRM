import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';
import '../../Repositories/lead repository.dart';

class DeleteLeadUsecase{
  final LeadRepository repository;
  DeleteLeadUsecase(this.repository);

  Future<Either<Failure, void>> execute(String id) {
    return repository.deleteLead(id);
  }
}