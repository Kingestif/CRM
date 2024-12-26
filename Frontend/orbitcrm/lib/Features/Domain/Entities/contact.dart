import 'package:equatable/equatable.dart';

class ContactEntity extends Equatable{
  final String id;
  final String name;
  final String email;
  final String phoneNo;
  final String company;

  const ContactEntity({required this.id, required this.name, required this.email, required this.phoneNo, required this.company});

  @override
  List<Object?> get props => [id,name,email,phoneNo,company];
}