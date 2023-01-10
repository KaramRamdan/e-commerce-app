import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/network/api_constance.dart';
import 'package:e_commerce_app/core/utils/enums.dart';
import 'package:e_commerce_app/shop/presentation/controller/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../screens/product_detail_screen.dart';

class ProductComponents extends StatelessWidget {
  const ProductComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
      switch (state.productsState) {
        case RequestState.loading:
          return const Center(
            child: CircularProgressIndicator(),
          );
        case RequestState.loaded:
          return FadeIn(
            duration: const Duration(milliseconds: 750),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 1.0,
              childAspectRatio: 1 / 1.22,
              mainAxisSpacing: 1.0,
              scrollDirection: Axis.vertical,
              children: List.generate(state.product.length, (index) {
                final product = state.product[index];
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ProductDetailScreen(
                                id: product.id,
                                categoryName: product.category,
                              ),
                            ));

                        /// TODO
                      },
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                                child: CachedNetworkImage(
                                  width: 180.0,
                                  height: 170.0,
                                  fit: BoxFit.fill,
                                  imageUrl:
                                      ApiConstance.imageUrl(product.image),
                                  placeholder: (context, url) =>
                                      Shimmer.fromColors(
                                    baseColor: Colors.grey[850]!,
                                    highlightColor: Colors.grey[800]!,
                                    child: Container(
                                      height: 170.0,
                                      width: 180.0,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(.5),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    ' Price: ${product.price} \$',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.aldrich().copyWith(
                                        color: Colors.white, fontSize: 12),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0)),
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 130,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.aldrich().copyWith(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                alignment: AlignmentDirectional.bottomEnd,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 15.0,
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          );
      }
    });
  }
}
