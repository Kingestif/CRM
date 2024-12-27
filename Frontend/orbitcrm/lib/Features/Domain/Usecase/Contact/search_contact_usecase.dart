import 'package:dartz/dartz.dart';

import '../../../../Core/failure.dart';
import '../../Entities/contact.dart';
import '../../Repositories/contact repository.dart';

class SearchContactUsecase{
  final ContactRepository repository;
  SearchContactUsecase(this.repository);

  Future<Either<Failure, ContactEntity>> execute(Map<String, dynamic> criteria) {
    return repository.searchContact(criteria);
  }
}