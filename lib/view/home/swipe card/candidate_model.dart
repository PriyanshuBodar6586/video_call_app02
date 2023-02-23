import 'package:flutter/cupertino.dart';

class Home_screenCandidateModel {
  String? name;
  String? job;
  String? city;
  LinearGradient? color;

  Home_screenCandidateModel({
    this.name,    this.job,
    this.city,
    this.color,
  });
}

List<Home_screenCandidateModel> candidates = [
  Home_screenCandidateModel(
    name: 'Eight, 8',
    job: 'Manager',
    city: 'Town',
    color: gradientPink,
  ),
  Home_screenCandidateModel(
    name: 'Seven, 7',
    job: 'Manager',
    city: 'Town',
    color: gradientBlue,
  ),
  Home_screenCandidateModel(
    name: 'Six, 6',
    job: 'Manager',
    city: 'Town',
    color: gradientPurple,
  ),
  Home_screenCandidateModel(
    name: 'Five, 5',
    job: 'Manager',
    city: 'Town',
    color: gradientRed,
  ),
  Home_screenCandidateModel(
    name: 'Four, 4',
    job: 'Manager',
    city: 'Town',
    color: gradientPink,
  ),
  Home_screenCandidateModel(
    name: 'Three, 3',
    job: 'Manager',
    city: 'Town',
    color: gradientBlue,
  ),
  Home_screenCandidateModel(
    name: 'Two, 2',
    job: 'Manager',
    city: 'Town',
    color: gradientPurple,
  ),
  Home_screenCandidateModel(
    name: 'One, 1',
    job: 'Manager',
    city: 'Town',
    color: gradientRed,
  ),
];

const LinearGradient gradientRed = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF3868),
    Color(0xFFFFB49A),
  ],
);

const LinearGradient gradientPurple = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF736EFE),
    Color(0xFF62E4EC),
  ],
);

const LinearGradient gradientBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF0BA4E0),
    Color(0xFFA9E4BD),
  ],
);

const LinearGradient gradientPink = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF6864),
    Color(0xFFFFB92F),
  ],
);

const LinearGradient kNewFeedCardColorsIdentityGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF7960F1),
    Color(0xFFE1A5C9),
  ],
);
