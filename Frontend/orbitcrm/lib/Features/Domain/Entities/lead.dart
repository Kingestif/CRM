import 'package:equatable/equatable.dart';

class LeadEntity extends Equatable{
  final String id;
  final String name;
  final String email;
  final String phoneNo;
  final String company;
  final String status;

  const LeadEntity({required this.id, required this.name, required this.email, required this.phoneNo, required this.company, required this.status});

  @override
  List<Object?> get props => [id,name,email,phoneNo,company,status];
}