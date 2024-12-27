import 'package:dartz/dartz.dart';
import 'package:orbitcrm/Features/Domain/Entities/contact.dart';
import 'package:orbitcrm/Features/Domain/Repositories/contact%20repository.dart';

import '../../../../Core/failure.dart';

class AddContactUsecase{
  final ContactRepository repository;
  AddContactUsecase(this.repository);

  Future<Either<Failure, ContactEntity>> execute(ContactEntity contact) {
    return repository.addContact(contact);
  }
}