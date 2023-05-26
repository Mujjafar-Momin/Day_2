import 'package:flutter/cupertino.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .38,
              left: 16,
              right: 16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text('Experienced Flutter developer with a passion for creating'
                  ' beautiful and high-performance mobile applications. '
                  'I have a strong background in mobile app development '
                  'and a deep understanding of the Flutter framework. '
                  'My expertise includes building engaging user interfaces, '
                  'implementing complex app logic, and integrating with backend services.'),
              Text(
                  'Flutter framework and Dart programming language Cross-platform '
                  'mobile app development UI/UX design and implementation '
                  'State management (Provider, Riverpod, Bloc, MobX, etc.) '
                  'RESTful API integration and data handling Firebase integration '
                  '(Authentication, Cloud Firestore, Cloud Storage, etc.) '
                  'Widget customization and creation Responsive app design '
                  'and layout Testing and debugging Version control with Git'
                  ' Agile software development methodologies Problem-solving '
                  'and critical thinking'),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
