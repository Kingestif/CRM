import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/lead.dart';
import '../../Repositories/lead repository.dart';

class GetAllLeadsUsecase{
  final LeadRepository repository;
  GetAllLeadsUsecase(this.repository);

  Future<Either<Failure, List<LeadEntity>>> execute({String? status}) {
    return repository.getAllLeads(status: status);
  }
}