import 'dart:async';
import 'package:flutter/material.dart';

class CountdownScreen extends StatefulWidget {
  @override
  _CountdownScreenState createState() => _CountdownScreenState();
}

class _CountdownScreenState extends State<CountdownScreen> {
  late Timer _timer;
  Duration _duration = Duration(seconds: 10);
  bool _disposed = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    _disposed = true;
    super.dispose();
  }

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      if (_disposed) return;
      setState(() {
        if (_duration.inSeconds > 0) {
          _duration -= oneSecond;
        } else {
          _timer.cancel();
          // Show the alert dialog
          showAlert();
        }
      });
    });
  }

  void showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('Countdown has completed. Coming soon!'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    int hours = _duration.inHours;
    int minutes = (_duration.inMinutes % 60);
    int seconds = (_duration.inSeconds % 60);

    int hoursFirstDigit = hours ~/ 10;
    int hoursSecondDigit = hours % 10;

    int minutesFirstDigit = minutes ~/ 10;
    int minutesSecondDigit = minutes % 10;

    int secondsFirstDigit = seconds ~/ 10;
    int secondsSecondDigit = seconds % 10;

    return Scaffold(
      appBar: AppBar(
        title: Text('Countdown App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Countdown:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Hours
                _buildTimeDigit(hoursFirstDigit),
                _buildTimeDigit(hoursSecondDigit),

                // Separator
                Text(':', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

                // Minutes
                _buildTimeDigit(minutesFirstDigit),
                _buildTimeDigit(minutesSecondDigit),

                // Separator
                Text(':', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

                // Seconds
                _buildTimeDigit(secondsFirstDigit),
                _buildTimeDigit(secondsSecondDigit),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeDigit(int digit) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        digit.toString(),
        style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
