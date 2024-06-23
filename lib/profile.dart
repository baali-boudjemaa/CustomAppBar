import 'package:flutter/material.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';

class CurvedStack extends StatelessWidget {
  final String name;
  final String username;
  final String location;

  CurvedStack(
      {super.key, required this.name, required this.username, required this.location});
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Center(





            Positioned(
              top: 0,
              left: 25,
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,
                    )),
              ),
            ),
            Positioned(
              top: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "@$username",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.black, size: 20),
                      const SizedBox(width: 5),
                      Text(
                        location,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                height: 80,
                child: DashedCircularProgressBar.aspectRatio(
                  aspectRatio: 1,
                  valueNotifier: _valueNotifier,
                  progress: 80,
                  maxProgress: 100,
                  corners: StrokeCap.round,
                  foregroundColor: Colors.blue,
                  backgroundColor: const Color(0xffeeeeee),
                  foregroundStrokeWidth: 7,
                  backgroundStrokeWidth: 7,
                  animation: true,
                  child: Center(
                    child: ValueListenableBuilder(
                      valueListenable: _valueNotifier,
                      builder: (_, double value, __) => Text(
                        '${value.toInt()}%',
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}