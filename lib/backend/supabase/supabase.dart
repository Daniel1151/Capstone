import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://uglswbmcrmccyecqfwwi.supabase.co/';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVnbHN3Ym1jcm1jY3llY3Fmd3dpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1NTg1MDgsImV4cCI6MjAyMjEzNDUwOH0.FmrVhspWT3Yk51u0NLnxQqigLnsSTr9aRCAJAmhNFj4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
