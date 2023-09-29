import 'dart:ui';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String get renderExperienceText => switch (this) {
        '0' => "Any level",
        '1' => "Beginner",
        '2' => "Advanced",
        _ => "Intermediate",
      };
}
