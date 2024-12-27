import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/contact.dart';
import '../../Repositories/contact repository.dart';

class GetSingleContactUsecase{
  final ContactRepository repository;
  GetSingleContactUsecase(this.repository);

  Future<Either<Failure, ContactEntity>> execute(String id) {
    return repository.getSingleContact(id);
  }
}