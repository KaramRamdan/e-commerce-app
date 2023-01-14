
import 'package:flutter/material.dart';

Widget cartComponent(

    context,
    {bool? isOldPrice=true,
    })=>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child:  SizedBox(
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Image(
                  image: NetworkImage('https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg'),
                  width: 120,
                  height: 120,
                ),

              ],
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   'sssds',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      height: 1.3,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        '1=1=',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),



                      const Spacer(),
                      IconButton(
                        alignment: AlignmentDirectional.bottomEnd,
                        onPressed: () {

                        },
                        icon: const CircleAvatar(
                          radius: 15.0,
                          backgroundColor:
                       Colors.grey,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );