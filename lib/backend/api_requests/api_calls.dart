import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestCall {
  static Future<ApiCallResponse> call({
    String? parcId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl:
          'https://api.petitforestier.fr/services/PFCore/pep/parc/entretien',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic U3RyaWNoZXJMaW5rOkojK0xrOStlaDhRNQ==',
      },
      params: {
        'PARC_ID': parcId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic test(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class SendEmailCall {
  static Future<ApiCallResponse> call() {
    final ffApiRequestBody = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "mlesbats@petitforestier.fr"
        }
      ],
      "dynamic_template_data": {
        "NUMPARC": "PDUEIEIEO",
        "NomEquipement": [
          "test"
        ],
        "NombreEquipement": [
          "test"
        ]
      }
    }
  ],
  "from": {
    "email": "mlesbats@petitforestier.fr",
    "name": "Geostock"
  },
  "reply_to": {
    "email": "mlesbats@petitforestier.fr",
    "name": "Geostock"
  },
  "attachements": [
    {
      "content": "https://lipn.univ-paris13.fr/~dubacq/pdf/m1101/sys.pdf",
      "type": "application/pdf",
      "filename": "my-file.pdf",
      "disposition": "attachement"
    }
  ],
  "template_id": "d-cb99f1a84d0b45a391c1e4dc13cf96d6"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendEmail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TestagenceentCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'testagenceent',
      apiUrl:
          'https://api.petitforestier.fr/services/PFCore/pep/agence/entretien/?AG=001&TEMPS=30',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic U3RyaWNoZXJMaW5rOkojK0xrOStlaDhRNQ==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCountriesCall {
  static Future<ApiCallResponse> call() {
    final ffApiRequestBody = '''
<?xml version="1.0" encoding="utf-8"?>
<soap12:Envelope xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">
  <soap12:Body>
    <ListOfCountryNamesByName xmlns="http://www.oorsprong.org/websamples.countryinfo">
    </ListOfCountryNamesByName>
  </soap12:Body>
</soap12:Envelope>''';
    return ApiManager.instance.makeApiCall(
      callName: 'getCountries',
      apiUrl:
          'http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'text/xml; charset=utf-8',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendImageCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SendImage',
      apiUrl: 'https://testprojetlesbats.000webhostapp.com/test.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic sucess(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class TestWebserviceSendImageGEDCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? inputStream,
    String? documentParams = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TestWebserviceSendImageGED',
      apiUrl: 'https://apiv2test.petitforestier.fr/services/test/ged/document',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic dGFsZW5kLXRlc3Q6VGFsZW5kUEYyMDIzIQ==',
      },
      params: {
        'inputStream': inputStream,
        'documentParams': documentParams,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class SAPVISIONGetParcCompteurCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'SAPVISIONGetParcCompteur',
      apiUrl:
          'https://pf-apim-noprod.test.apimanagement.eu30.hana.ondemand.com:443/ZFSM_WEBSERVICES_SRV/ZFSM_GETPARCSet?\$filter=( PARC_ID eq \'PF-11223344\')&\$format=json',
      callType: ApiCallType.GET,
      headers: {
        'apikey': 'k9izzNT488cVmJ8hbtTtscT9qS9DD8T5',
        'Authorization': 'Basic V0VCU1JWMTpNZHBAYXNzZXYyIQ==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
