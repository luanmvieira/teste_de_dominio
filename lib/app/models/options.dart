import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

import 'customtext.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 65,
              width: 65,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(width: 1, color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const ImageNetwork(
                    image:
                        "https://firebasestorage.googleapis.com/v0/b/teste-dominio-14fc1.appspot.com/o/images%2F114-scissors-outline.png?alt=media&token=68a2e54e-d882-4297-8087-a714b8714e74",
                    imageCache: CachedNetworkImageProvider(
                      "https://firebasestorage.googleapis.com/v0/b/teste-dominio-14fc1.appspot.com/o/images%2F114-scissors-outline.png?alt=media&token=68a2e54e-d882-4297-8087-a714b8714e74",
                    ),
                    height: 60,
                    width: 60,
                    fitWeb: BoxFitWeb.contain,
                    fitAndroidIos: BoxFit.contain,
                    onLoading: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                    onError: Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(Colors.grey, 12, "Corte", false),
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 65,
              width: 65,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(width: 1, color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const ImageNetwork(
                    image:
                        "https://firebasestorage.googleapis.com/v0/b/teste-dominio-14fc1.appspot.com/o/images%2F1595-shampoo-outline.png?alt=media&token=be2ceb36-7086-42cf-94c8-348dd248b662",
                    imageCache: CachedNetworkImageProvider(
                      "https://firebasestorage.googleapis.com/v0/b/teste-dominio-14fc1.appspot.com/o/images%2F1595-shampoo-outline.png?alt=media&token=be2ceb36-7086-42cf-94c8-348dd248b662",
                    ),
                    height: 60,
                    width: 60,
                    fitWeb: BoxFitWeb.contain,
                    fitAndroidIos: BoxFit.contain,
                    onLoading: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                    onError: Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(Colors.grey, 12, "Quimica", false),
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 65,
              width: 65,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(width: 1, color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const ImageNetwork(
                    image:
                        "https://firebasestorage.googleapis.com/v0/b/teste-dominio-14fc1.appspot.com/o/images%2Fgilete.png?alt=media&token=e0594fe9-2422-449c-9b9a-5e02599c5cfa",
                    imageCache: CachedNetworkImageProvider(
                      "https://firebasestorage.googleapis.com/v0/b/teste-dominio-14fc1.appspot.com/o/images%2Fgilete.png?alt=media&token=e0594fe9-2422-449c-9b9a-5e02599c5cfa",
                    ),
                    height: 60,
                    width: 60,
                    fitWeb: BoxFitWeb.contain,
                    fitAndroidIos: BoxFit.contain,
                    onLoading: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                    onError: Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(Colors.grey, 12, "Barba", false),
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 65,
              width: 65,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(width: 1, color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const ImageNetwork(
                    image:
                        "https://firebasestorage.googleapis.com/v0/b/teste-dominio-14fc1.appspot.com/o/images%2Fmore.png?alt=media&token=6c3aa3e6-7356-47dd-a390-94f04d35b73a",
                    imageCache: CachedNetworkImageProvider(
                      "https://firebasestorage.googleapis.com/v0/b/teste-dominio-14fc1.appspot.com/o/images%2Fmore.png?alt=media&token=6c3aa3e6-7356-47dd-a390-94f04d35b73a",
                    ),
                    height: 60,
                    width: 60,
                    fitWeb: BoxFitWeb.contain,
                    fitAndroidIos: BoxFit.contain,
                    onLoading: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                    onError: Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(Colors.grey, 12, "Mais", false),
            )
          ],
        ),
      ],
    );
  }
}
