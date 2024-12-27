import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/contact.dart';
import '../../Repositories/contact repository.dart';

class DeleteContactUsecase{
  final ContactRepository repository;
  DeleteContactUsecase(this.repository);

  Future<Either<Failure, void>> execute(String id) {
    return repository.deleteContact(id);
  }
}