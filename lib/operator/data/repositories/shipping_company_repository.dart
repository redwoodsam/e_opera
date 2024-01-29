import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/shipping_company.dart';
import '../../domain/repositories/shipping_company_repository.dart';
import '../data.dart';

/// Implementation of [IShippingCompanyRepository]
class ShippingCompanyRepository implements IShippingCompanyRepository {
  final IHarvestFormDatasource _datasource;

  /// Constructor of [ShippingCompanyRepository]
  ShippingCompanyRepository(this._datasource);

  @override
  Future<Either<Failure, List<ShippingCompany>>> getShippingCompanies() async {
    try {
      final response = await _datasource.getShippingCompanies();
      List<ShippingCompany> shippingCompanyList = List<ShippingCompany>.from(
          response.map((record) => record.toEntity()));
      return Right(shippingCompanyList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
