import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/app_assets.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({
    super.key,
    required this.imageUrl,
    required this.dimension,
    this.assetPlaceHolder,
  });
  final String imageUrl;
  final double dimension;
  final String? assetPlaceHolder;

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Colors.white70;
    return Align(
      child: Container(
        height: dimension,
        width: dimension,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          image: DecorationImage(
            image: AssetImage(assetPlaceHolder ?? AppAssets.personPlaceholder),
          ),
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          height: dimension,
          width: dimension,
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(
              child:
                  CircularProgressIndicator(value: downloadProgress.progress)),
          errorWidget: (context, url, error) => ColoredBox(
            color: backgroundColor,
            child: Icon(
              Icons.error_outline,
              color: context.theme.colorScheme.error,
            ),
          ),
        ),
      ),
    );
  }
}
