import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/contact.dart';
import '../../Repositories/contact repository.dart';

class UpdateContactUsecase{
  final ContactRepository repository;
  UpdateContactUsecase(this.repository);

  Future<Either<Failure, ContactEntity>> execute(Map<String, dynamic> updates) {
    return repository.updateContact(updates);
  }
}