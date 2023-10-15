// auth_service.dart
import 'package:supabase/supabase.dart';

class AuthService {
  final SupabaseClient _supabaseClient;

  AuthService(this._supabaseClient);

  // User Registration
  Future<SupabaseResponse> signUp(String email, String password) async {
    final response = await _supabaseClient.auth.signUp(email:email, password:password);
    return SupabaseResponse(response.user != null, 'Failure' ?? 'Success');
  }

  // User Login
  Future<SupabaseResponse> signIn(String email, String password) async {
    final response = await _supabaseClient.auth.signInWithPassword(email: email, password: password);
    return SupabaseResponse(response.user != null, 'Failure' ?? 'Success');
  }

  // User Logout
  Future<SupabaseResponse> signOut() async {
    final response = await _supabaseClient.auth.signOut();
    return SupabaseResponse(_supabaseClient.auth.currentUser == null, 'Success');
  }

  // Check User Session
  Future<SupabaseResponse> checkSession() async {
    final user = _supabaseClient.auth.currentUser;
    return SupabaseResponse(user != null, 'Success');
  }
}

class SupabaseResponse {
  final bool success;
  final String message;

  SupabaseResponse(this.success, this.message);
}
