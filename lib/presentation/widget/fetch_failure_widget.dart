import 'package:flutter/material.dart';
import 'package:pictures_feed/presentation/util/constants/strings.dart';

class FetchFailureWidget extends StatelessWidget {
  const FetchFailureWidget({
    @required this.updateTap,
  });

  final void Function() updateTap;

  @override
  Widget build(BuildContext context) => Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(Strings.cantLoadDataFetchFailure,
            style: TextStyle(fontSize: 16.0)),
        SizedBox(height: 14.0),
        FractionallySizedBox(
          widthFactor: .6,
          child: ElevatedButton(
              onPressed: updateTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(Strings.tryAgainFetchFailure.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w600)),
              )),
        )
      ]));
}
