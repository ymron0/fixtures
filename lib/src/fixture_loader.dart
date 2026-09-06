import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

/// Provides access to JSON fixtures.
final class Fixtures {
  const Fixtures();

  Future<List<Map<String, dynamic>>> assets() {
    return _load<List<Map<String, dynamic>>>('assets.json', _asMapList);
  }

  Future<Map<String, dynamic>> settings() {
    return _load<Map<String, dynamic>>('settings.json', _asMap);
  }

  Future<T> _load<T>(
    String filename,
    T Function(Object? decoded) parser,
  ) async {
    final uri = await Isolate.resolvePackageUri(
      Uri.parse('package:fixtures/fixtures/$filename'),
    );

    if (uri == null) {
      throw StateError('Could not resolve fixture "$filename".');
    }

    final json = await File.fromUri(uri).readAsString();
    final decoded = jsonDecode(json);

    try {
      return parser(decoded);
    } on TypeError {
      throw FormatException(
        'Fixture "$filename" has an unexpected JSON structure.',
      );
    }
  }

  static Map<String, dynamic> _asMap(Object? decoded) {
    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Expected a JSON object.');
    }

    return decoded;
  }

  static List<Map<String, dynamic>> _asMapList(Object? decoded) {
    if (decoded is! List) {
      throw const FormatException('Expected a JSON array.');
    }

    return decoded.cast<Map<String, dynamic>>();
  }
}
