import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(BirthdayWishApp());
}

class BirthdayWishApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Birthday',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HappyBirthdayScreen()),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class HappyBirthdayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Happy Birthday',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageAnimationScreen()),
                );
              },
              child: Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageAnimationScreen extends StatefulWidget {
  @override
  _ImageAnimationScreenState createState() => _ImageAnimationScreenState();
}

class _ImageAnimationScreenState extends State<ImageAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late PageController _pageController;
  int _currentPage = 0;

  final List<String> _images = [
    'assets/image1.jpg'
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg',
    'assets/image7.jpg',
  ];

  final List<Bubble> _bubbles = [];
  final Random _random = Random();
  Timer? _bubbleUpdateTimer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _pageController = PageController(initialPage: 0);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _generateBubbles();
      _startImageLoop();
      _startBubbleAnimation();
    });
  }

  void _generateBubbles() {
    final size = MediaQuery.of(context).size;
    final imageAreaHeight = size.height * 0.5; // Adjust the height as per the image area
    for (int i = 0; i < 10; i++) {
      double posY = _random.nextDouble() * size.height;
      if (posY > size.height / 2 - imageAreaHeight / 2 && posY < size.height / 2 + imageAreaHeight / 2) {
        posY = _random.nextDouble() < 0.5
            ? _random.nextDouble() * (size.height / 2 - imageAreaHeight / 2)
            : (size.height / 2 + imageAreaHeight / 2) + _random.nextDouble() * (size.height / 2 - imageAreaHeight / 2);
      }
      _bubbles.add(
        Bubble(
          position: Offset(
            _random.nextDouble() * size.width,
            posY,
          ),
          radius: 20 + _random.nextDouble() * 20,
          velocity: Offset(
            (_random.nextDouble() - 0.5) * 1,
            (_random.nextDouble() - 0.5) * 1,
          ),
        ),
      );
    }
    setState(() {});
  }

  void _startBubbleAnimation() {
    _bubbleUpdateTimer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      _updateBubblePosition();
    });
  }

  void _startImageLoop() {
    Future.delayed(Duration(seconds: 2), () {
      if (_currentPage < _images.length - 1) {
        _pageController.animateToPage(
          ++_currentPage,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      } else {
        _currentPage = 0;
        _pageController.jumpToPage(_currentPage);
      }
      _startImageLoop();
    });
  }

  void _updateBubblePosition() {
    final size = MediaQuery.of(context).size;
    final imageAreaHeight = size.height * 0.5; // Adjust the height as per the image area
    for (var bubble in _bubbles) {
      bubble.position += bubble.velocity;
      if (bubble.position.dx < 0 || bubble.position.dx > size.width) {
        bubble.velocity = Offset(-bubble.velocity.dx, bubble.velocity.dy);
      }
      if ((bubble.position.dy < 0 || bubble.position.dy > size.height) ||
          (bubble.position.dy > size.height / 2 - imageAreaHeight / 2 &&
              bubble.position.dy < size.height / 2 + imageAreaHeight / 2)) {
        bubble.velocity = Offset(bubble.velocity.dx, -bubble.velocity.dy);
      }
    }
    setState(() {});
  }

  void _onPanUpdate(DragUpdateDetails details) {
    final touchPosition = details.localPosition;
    for (var bubble in _bubbles) {
      if ((bubble.position - touchPosition).distance < bubble.radius) {
        setState(() {
          bubble.position = touchPosition;
        });
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    _bubbleUpdateTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: _onPanUpdate,
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return Center(
                  child: FadeTransition(
                    opacity: _animation,
                    child: Image.asset(_images[index]),
                  ),
                );
              },
            ),
            Positioned.fill(
              child: CustomPaint(
                painter: BubblePainter(_bubbles, _animation),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bubble {
  Offset position;
  double radius;
  Offset velocity;

  Bubble({required this.position, required this.radius, required this.velocity});
}

class BubblePainter extends CustomPainter {
  final List<Bubble> bubbles;
  final Animation<double> animation;

  BubblePainter(this.bubbles, this.animation) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.pink.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    for (var bubble in bubbles) {
      canvas.drawCircle(bubble.position, bubble.radius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
