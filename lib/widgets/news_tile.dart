import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("head"),
      subtitle: Text("This is the news body"),
      trailing: Icon(Icons.newspaper),
    );
  }
}
