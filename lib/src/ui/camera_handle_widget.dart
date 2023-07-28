import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/src/provider/gaze_tracker_provider.dart';

class CameraHandleWidget extends StatelessWidget {
  const CameraHandleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          'We must have camera permission!',
          style: TextStyle(
            color: Colors.white24,
            fontSize: 15,
            decoration: TextDecoration.none,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(16.0),
          width: double.maxFinite,
          color: Colors.white12,
          child: TextButton(
            onPressed: () {
              Provider.of<GazeTrackerProvider>(context, listen: false)
                  .handleCamera();
            },
            child: const Text(
              'Click to request camera authorization',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
