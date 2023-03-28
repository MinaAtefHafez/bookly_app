import 'package:bookly_app/core/api_services/api_sevices.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'network_service_test.mocks.dart';

@GenerateMocks([ApiServices])
void main() {
  late ApiServices apiServices;

  setUp(() {
    apiServices = MockApiServices();
  });

  group('api services', () {
    test('get method should be return map', () async {
      when(apiServices.get(
              endPoint:
                  ''))
          .thenAnswer((_) async => <String,dynamic>{} );

          final data = await apiServices.get(endPoint: '' );
           expect(data, isA<Map<String,dynamic>>());
    });
  });
}
