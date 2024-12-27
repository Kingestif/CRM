import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/contact.dart';
import '../../Repositories/contact repository.dart';

class GetAllContactUsecase{
  final ContactRepository repository;
  GetAllContactUsecase(this.repository);

  Future<Either<Failure, List<ContactEntity>>> execute() {
    return repository.getAllContact();
  }
}