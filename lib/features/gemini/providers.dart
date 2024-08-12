import 'package:dewsclim/features/gemini/data/data_source/gemini_data_source_impl.dart';
import 'package:dewsclim/lib.dart';

final geminiDataSourceProvider = Provider<GeminiDataSourceImpl>((ref) {
  return GeminiDataSourceImpl(ref);
});