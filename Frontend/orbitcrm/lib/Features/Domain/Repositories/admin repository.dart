import 'package:dartz/dartz.dart';
import 'package:orbitcrm/Features/Domain/Entities/lead.dart';

import '../../../Core/failure.dart';

abstract class AdminRepository{
  Future<Either<Failure, LeadEntity>> getPendingLead(String id);
  Future<Either<Failure, List<LeadEntity>>> getAllPendingLeads();
  Future<Either<Failure, LeadEntity>> updatePendingLead(Map<String, dynamic> updates);
  Future<Either<Failure, LeadEntity>> searchPendingLead(Map<String, dynamic> criteria);
}