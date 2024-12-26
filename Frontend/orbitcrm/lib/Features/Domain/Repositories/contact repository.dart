import 'package:dartz/dartz.dart';
import 'package:orbitcrm/Core/failure.dart';
import 'package:orbitcrm/Features/Domain/Entities/contact.dart';

abstract class ContactRepository{
  Future<Either<Failure, ContactEntity>> addContact(ContactEntity contact);
  Future<Either<Failure, ContactEntity>> getSingleContact(String id);
  Future<Either<Failure, List<ContactEntity>>> getAllContact();
  Future<Either<Failure, ContactEntity>> updateContact(Map<String, dynamic> updates);
  Future<Either<Failure, void>> deleteContact(String id);
  Future<Either<Failure, ContactEntity>> searchContact(Map<String, dynamic> criteria);
}