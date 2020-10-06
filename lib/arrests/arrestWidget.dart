import 'package:flutter/material.dart';
import 'package:jailbase/jailbase.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArrestWidget extends StatelessWidget {
  final Arrest arrest;
  const ArrestWidget({Key key, @required this.arrest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String charges = '';

    for (var charge in arrest.charges) {
      charges = charges + charge + '\n';
    }

    if (charges == '' || charges == '\n') charges = 'No Posted Charges';

    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: CachedNetworkImage(imageUrl: arrest.mugshotUrlLarge),
          ),
          ListTile(
            title: Text(arrest.name),
            trailing: Text(arrest.dateFormatted),
            isThreeLine: true,
            subtitle: Text(charges),
          ),
        ],
      ),
    );
  }
}
