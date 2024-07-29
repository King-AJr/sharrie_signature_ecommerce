import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoDisplay extends StatelessWidget {
  final List<String> photoUrls;

  const PhotoDisplay({Key? key, required this.photoUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (photoUrls.isEmpty) {
      return Container();
    } else if (photoUrls.length == 1) {
      return _buildMainImage(photoUrls[0]);
    } else {
      return Column(
        children: [
          _buildMainImage(photoUrls[0]),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(child: _buildSecondaryImage(photoUrls[1])),
                  Expanded(child: _buildSecondaryImage(photoUrls[2])),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }

  Widget _buildMainImage(String url) {
    return Container(
      color: Colors.green[100],
      child: Center(
        child: CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.cover,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }

  Widget _buildSecondaryImage(String url) {
    return Container(
      padding: const EdgeInsets.only(top: 3),
      height: 200,
      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
