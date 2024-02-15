import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_svg/svg.dart';

class CustomCachedImage extends StatelessWidget {
  final String? image;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Color? color;

  const CustomCachedImage(
      {super.key, this.image, this.fit, this.width, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return image == null
        ? Image.asset(AssetsManager.appLogo,
            height: height, width: width, fit: BoxFit.cover)
        : CachedNetworkImage(
            imageUrl: image!,
            imageBuilder: (context, imageProvider) => SizedBox(
                    child: Image(
                  image: imageProvider,
                  color: color,
                  fit: fit ?? BoxFit.cover,
                  width: width,
                  height: height,
                )),
            placeholder: (context, url) => const CupertinoActivityIndicator(),
            errorWidget: (context, url, error) => SvgPicture.asset(
                  AssetsManager.bell,
                  fit: BoxFit.fill,
                  height: height,
                  width: width,
                ));
  }
}

ImageProvider customCachedImageProvider(String? image) {
  return image == null
      ? const AssetImage(AssetsManager.appLogo) as ImageProvider
      : CachedNetworkImageProvider(image);
}
