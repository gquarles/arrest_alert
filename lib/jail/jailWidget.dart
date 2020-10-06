import 'package:arrest_alert/jail/jailArrests.dart';
import 'package:flutter/material.dart';
import 'package:jailbase/jailbase.dart';

class JailWidget extends StatelessWidget {
  final Jail jail;
  const JailWidget({Key key, @required this.jail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JailArrests(
              jail: jail,
            ),
          ),
        );
      },
      child: Card(
        child: ListTile(
          title: Text(jail.name),
          isThreeLine: true,
          subtitle: Row(
            children: [Text('${jail.county}, ${jail.stateAbv}')],
          ),
        ),
      ),
    );
  }
}
