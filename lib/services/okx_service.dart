import 'dart:convert';
import 'package:http/http.dart' as http;

class OkxService {
  final String apiKey;
  final String apiSecret;
  final String apiPassPhrase;

  OkxService({
    required this.apiKey,
    required this.apiSecret,
    required this.apiPassPhrase,
  });

  Future<Map<String, dynamic>> getCryptoPrices() async {
    final url =
        Uri.parse('https://www.okx.com/api/v5/market/tickers?instType=SPOT');

    final response = await http.get(
      url,
      headers: {
        'OK-ACCESS-KEY': apiKey,
        'OK-ACCESS-SIGN': _generateSignature(apiSecret),
        'OK-ACCESS-TIMESTAMP': DateTime.now().toUtc().toIso8601String(),
        'OK-ACCESS-PASSPHRASE': '', // Add your passphrase here if needed
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load crypto prices');
    }
  }

  String _generateSignature(String secret) {
    // Implement your signature generation logic here
    // OKX API might need HMAC SHA256 signature, you can use the crypto package for this
    // For this example, it's left as a placeholder
    return '';
  }
}
