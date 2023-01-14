import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utils/app_string.dart';
import 'package:e_commerce_app/shop/presentation/screens/product_detail_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/network/api_constance.dart';
import '../../../core/services/services_locator.dart';
import '../components/icon_button_component.dart';
import '../controller/product_details_bloc.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({
    Key? key,
    required this.categoryName,
  }) : super(key: key);
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<ProductDetailsBloc>()..add(GetCategoryEvent(categoryName)),
      child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[300],
              title: Center(
                child: Text(
                  '${AppString.category} $categoryName',
                  style: GoogleFonts.aldrich().copyWith(color: Colors.black),
                ),
              ),
              actions: [
                appBarHomeButton(context),
                appBarCartButton(context),
              ],
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Container(
                color: Colors.grey[300],
                alignment: AlignmentDirectional.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeIn(
                      duration: const Duration(milliseconds: 750),
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 1.0,
                        childAspectRatio: 1 / 1.22,
                        mainAxisSpacing: 1.0,
                        scrollDirection: Axis.vertical,
                        children: List.generate(state.category.length, (index) {
                          final category = state.category[index];
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            ProductDetailScreen(
                                          id: category.id,
                                          categoryName: category.category,
                                        ),
                                      ));
                                },
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment:
                                          AlignmentDirectional.bottomCenter,
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
                                            imageUrl: ApiConstance.imageUrl(
                                                category.image),
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
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          ),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 100,
                                          color: Colors.black.withOpacity(.5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: Text(
                                              ' Price: ${category.price} \$',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.aldrich()
                                                  .copyWith(
                                                      color: Colors.white,
                                                      fontSize: 12),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                category.title,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.aldrich()
                                                    .copyWith(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        addCartButton(context),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
