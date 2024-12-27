import 'package:dartz/dartz.dart';
import 'package:orbitcrm/Core/failure.dart';
import 'package:orbitcrm/Features/Domain/Entities/lead.dart';

abstract class LeadRepository{
  Future<Either<Failure, LeadEntity>> addLead(LeadEntity lead);
  Future<Either<Failure, LeadEntity>> getSingleLead(String id);
  Future<Either<Failure, List<LeadEntity>>> getAllLeads({String? status});
  Future<Either<Failure, LeadEntity>> updateLead(Map<String, dynamic> updates);
  Future<Either<Failure, void>> deleteLead(String id);
  Future<Either<Failure, LeadEntity>> searchLead(Map<String, dynamic> criteria);
}