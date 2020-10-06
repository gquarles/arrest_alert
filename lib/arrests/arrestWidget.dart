import 'package:flutter/material.dart';
import 'package:jailbase/jailbase.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArrestWidget extends StatelessWidget {
  final Arrest arrest;
  const ArrestWidget({Key key, @required this.arrest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [CachedNetworkImage(imageUrl: arrest.url), Text(arrest.name)],
      ),
    );
  }
}
