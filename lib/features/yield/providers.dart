import 'package:dewsclim/features/yield/data/data_source/yield_data_source_impl.dart';
import 'package:dewsclim/features/yield/data/repo_impl/yield_repo_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final yieldDataSourceProvider = Provider<YieldDataSourceImpl>((ref) {
  return YieldDataSourceImpl(ref);
});

final yieldRepoProvider = Provider<YieldRepoImpl>((ref) {
  return YieldRepoImpl(ref.read(yieldDataSourceProvider));
});
