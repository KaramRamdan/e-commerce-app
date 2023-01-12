import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utils/app_string.dart';
import 'package:e_commerce_app/shop/presentation/screens/category_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget categoryComponent(context){
  return
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                           CategoryDetailsScreen(categoryName: AppString.electronics),
                      ));

                },
                child: Column(
                  children: [
                    Stack(  alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          child: CachedNetworkImage(
                            width: 150.0,
                            height:140.0,
                            fit: BoxFit.fill,
                            imageUrl:AppString.electronicsImage,
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[850]!,
                              highlightColor: Colors.grey[800]!,
                              child: Container(
                                width: 150.0,
                                height:140.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                          ),
                        ),
                        Container(
                          width: 118,
                          color: Colors.black.withOpacity(.5),
                          child: Text(AppString.electronics
                           ,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                             CategoryDetailsScreen(categoryName:AppString.jewelery),
                        ));

                  },
                  child: Column(
                    children: [
                      Stack(  alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          ClipRRect(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            child: CachedNetworkImage(
                              width: 150.0,
                              height:140.0,
                              fit: BoxFit.fill,
                              imageUrl:AppString.jeweleryImage,
                              placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: Colors.grey[850]!,
                                highlightColor: Colors.grey[800]!,
                                child: Container(
                                  width: 150.0,
                                  height:140.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                            ),
                          ),
                          Container(
                            width: 118,
                            color: Colors.black.withOpacity(.5),
                            child: Text(AppString.jewelery
                             ,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 30,right:30,bottom:30),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            CategoryDetailsScreen(categoryName:   AppString.menCloth),
                      ));

                },
                child: Column(
                  children: [
                    Stack(  alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                          child: CachedNetworkImage(
                            width: 150.0,
                            height:140.0,
                            fit: BoxFit.fill,
                            imageUrl:AppString.menClothImage,
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[850]!,
                              highlightColor: Colors.grey[800]!,
                              child: Container(
                                width: 150.0,
                                height:140.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                          ),
                        ),
                        Container(
                          width: 118,
                          color: Colors.black.withOpacity(.5),
                          child: Text( AppString.menCloth
                            ,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              CategoryDetailsScreen(categoryName: AppString.womenCloth),
                        ));

                  },
                  child: Column(
                    children: [
                      Stack(  alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          ClipRRect(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            child: CachedNetworkImage(
                              width: 150.0,
                              height:140.0,
                              fit: BoxFit.fill,
                              imageUrl: AppString.womenClothImage,
                              placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: Colors.grey[850]!,
                                highlightColor: Colors.grey[800]!,
                                child: Container(
                                  width: 150.0,
                                  height:140.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                            ),
                          ),
                          Container(
                            width: 118,
                            color: Colors.black.withOpacity(.5),
                            child: Text( AppString.womenCloth
                              ,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
}