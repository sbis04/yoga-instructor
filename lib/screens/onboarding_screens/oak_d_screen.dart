import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:sofia/res/palette.dart';
import 'package:sofia/screens/onboarding_screens/voice_assistant_screen.dart';
import 'package:sofia/utils/ssh_connectivity.dart';
import 'package:supercharged/supercharged.dart';

enum AnimProps {
  oak,
  transfer,
  mobile,
}

class OAKDScreen extends StatefulWidget {
  @override
  _OAKDScreenState createState() => _OAKDScreenState();
}

class _OAKDScreenState extends State<OAKDScreen> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<TimelineValue<AnimProps>> _animation;
  SSHConnectivity _sshConnectivity = SSHConnectivity();

  AnimationController _pulseAnimationController;
  Animation<double> _pulseAnimation;

  bool _isYes;
  String _status = "Initializing...";
  Color _statusColor = Palette.black;

  String _outputString = "";

  processSSHOutput(String output) async {
    if (output == "Start") {
      setState(() {
        _statusColor = Colors.amber.shade700;
        _status = "Checking...";
        _outputString = output;
      });
    } else if (output == "Success") {
      setState(() {
        _statusColor = Colors.green;
        _status = "Successfully connect with OAK-D";
        _outputString = output;
      });
      _pulseAnimationController.stop();

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('isOakAvailable', true);

      await Future.delayed(600.milliseconds);

      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      );

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) {
            return VoiceAssistantScreen();
          },
        ),
        (route) => false,
      );
    } else if (output == "Failed") {
      setState(() {
        _statusColor = Colors.red;
        _status = "Failed to connect with OAK-D";
        _outputString = output;
      });
      _pulseAnimationController.stop();
    }
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: 1400.milliseconds,
      vsync: this,
    );

    _pulseAnimationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _pulseAnimation =
        Tween<double>(begin: 1, end: 0).animate(_pulseAnimationController)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _pulseAnimationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              _pulseAnimationController.forward();
            }
          });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _pulseAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    _animation = TimelineTween<AnimProps>()
        .addScene(
          begin: 0.milliseconds,
          end: 400.milliseconds,
          curve: Curves.easeOut,
        )
        .animate(
          AnimProps.oak,
          tween: Tween(begin: screenWidth - (16 * 2), end: screenHeight / 4),
        )
        .addSubsequentScene(
          delay: 400.milliseconds,
          duration: 500.milliseconds,
          curve: Curves.easeOut,
        )
        .animate(
          AnimProps.mobile,
          tween: Tween(begin: 0.0, end: 1.0),
        )
        .addSubsequentScene(
          delay: 400.milliseconds,
          duration: 600.milliseconds,
          curve: Curves.easeOut,
        )
        .animate(
          AnimProps.transfer,
          tween: Tween(begin: 0.0, end: 1.0),
        )
        .parent
        .animatedBy(_animationController);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Select ',
                  style: TextStyle(
                    color: Palette.black,
                    fontSize: 24.0,
                    fontFamily: 'GoogleSans',
                    letterSpacing: 1,
                  ),
                  children: [
                    TextSpan(
                      text: 'Device',
                      style: TextStyle(
                        color: Palette.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedBuilder(
                      animation: _animationController,
                      builder: (context, child) => _buildAnimation(
                        context: context,
                        child: child,
                        screenHeight: screenHeight,
                      ),
                    ),
                    SizedBox(height: _isYes != null && _isYes ? 32.0 : 24.0),
                    _isYes != null && _isYes
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _status,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _statusColor,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'GoogleSans',
                                  letterSpacing: 1,
                                  height: 1.5,
                                ),
                              ),
                              _outputString == "Failed"
                                  ? Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: RaisedButton(
                                        color: _statusColor,
                                        onPressed: () {
                                          setState(() {
                                            _status = "Initializing...";
                                            _statusColor = Palette.black;
                                            _outputString = "";
                                          });
                                          _sshConnectivity.checkAvailability(
                                            onReceive: (String output) {
                                              output = output.trim();
                                              processSSHOutput(output);
                                            },
                                          );
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            16.0,
                                            4.0,
                                            16.0,
                                            8.0,
                                          ),
                                          child: Text(
                                            'Retry',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.0,
                                              fontFamily: 'GoogleSans',
                                              letterSpacing: 1,
                                              height: 1.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container()
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text: 'Do you have access to an ',
                                  style: TextStyle(
                                    color: Palette.black,
                                    fontSize: 20.0,
                                    fontFamily: 'GoogleSans',
                                    letterSpacing: 1,
                                    height: 1.5,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'OAK-D ',
                                      style: TextStyle(
                                        color: Palette.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'device?',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 24.0),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    onTap: () async {
                                      await Future.delayed(400.milliseconds);

                                      setState(() {
                                        _isYes = true;
                                      });

                                      _animationController
                                          .forward()
                                          .whenComplete(() {
                                        _pulseAnimationController.forward();
                                        _sshConnectivity.checkAvailability(
                                          onReceive: (String output) {
                                            output = output.trim();
                                            processSSHOutput(output);
                                          },
                                        );
                                      });
                                    },
                                    child: _isYes != null && _isYes
                                        ? Icon(
                                            Icons.check_circle,
                                            color: Palette.accentGreen,
                                          )
                                        : Icon(
                                            Icons.circle,
                                            color: Colors.black12,
                                          ),
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Palette.black.withOpacity(0.6),
                                      fontSize: 20.0,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    onTap: () async {
                                      setState(() {
                                        _isYes = false;
                                      });

                                      SystemChrome.setSystemUIOverlayStyle(
                                        SystemUiOverlayStyle(
                                          statusBarColor: Colors.white,
                                          statusBarIconBrightness:
                                              Brightness.dark,
                                        ),
                                      );

                                      SharedPreferences prefs =
                                          await SharedPreferences.getInstance();
                                      prefs.setBool('isOakAvailable', false);

                                      Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return VoiceAssistantScreen();
                                          },
                                        ),
                                        (route) => false,
                                      );
                                    },
                                    child: _isYes != null && !_isYes
                                        ? Icon(
                                            Icons.check_circle,
                                            color: Palette.accentGreen,
                                          )
                                        : Icon(
                                            Icons.circle,
                                            color: Colors.black12,
                                          ),
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    'No, continue with device camera',
                                    style: TextStyle(
                                      color: Palette.black.withOpacity(0.6),
                                      fontSize: 20.0,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: 'Sofia provides integration with OpenCV AI Kit ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'GoogleSans',
                      letterSpacing: 0.5,
                    ),
                    children: [
                      TextSpan(
                        text: 'OAK-D ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'device',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimation({
    @required BuildContext context,
    @required Widget child,
    @required double screenHeight,
  }) {
    return Column(
      children: [
        Image.asset(
          'assets/images/oak_d.png',
          width: _animation.value.get(AnimProps.oak),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            bottom: 16.0,
          ),
          child: _outputString == "Success"
              ? Icon(
                  Icons.check_circle,
                  color: _statusColor,
                  size: 40.0,
                )
              : _outputString == "Failed"
                  ? Icon(
                      Icons.close,
                      color: _statusColor,
                      size: 40.0,
                    )
                  : Opacity(
                      opacity: _animation.isCompleted
                          ? !_pulseAnimationController.isAnimating
                              ? 1
                              : _pulseAnimation.value
                          : _animation.value.get(AnimProps.transfer),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Image.asset(
                          'assets/images/transfer.png',
                          color: _statusColor,
                          width: (screenHeight / 20) *
                              _animation.value.get(AnimProps.transfer),
                        ),
                      ),
                    ),
        ),
        Opacity(
          opacity: _animation.value.get(AnimProps.mobile),
          child: Image.asset(
            'assets/images/mobile_mockup.png',
            width: (screenHeight / 12) * _animation.value.get(AnimProps.mobile),
          ),
        ),
      ],
    );
  }
}
