import 'package:arrest_alert/arrests/arrestWidget.dart';
import 'package:flutter/material.dart';
import 'package:jailbase/jailbase.dart';

class JailArrests extends StatelessWidget {
  final Jail jail;
  const JailArrests({Key key, @required this.jail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jail.name),
      ),
      body: FutureBuilder(
        future: JailBase.getArrests(jail.id),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          return GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return ArrestWidget(
                arrest: snapshot.data[index],
              );
            },
          );
        },
      ),
    );
  }
}
