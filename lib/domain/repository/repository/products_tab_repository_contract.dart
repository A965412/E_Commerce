import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/entities/add_to_cart_response_entity.dart';
import 'package:e_commerce/domain/entities/add_to_wishlist_response_entity.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/entities/products_response_entity.dart';

abstract class ProductsTabRepositoryContract {
  Future<Either<Errors, ProductsResponseEntity>> getAllProducts();

  Future<Either<Errors, AddToCartResponseEntity>> addToCart(String? productId);

  Future<Either<Errors, AddToWishListResponseEntity>> addToWishList(
      String? productId);
}
