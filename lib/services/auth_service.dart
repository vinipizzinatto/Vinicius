import 'dart:async';

class AuthService {
  final _controller = StreamController<bool>.broadcast();
  bool _signedIn = false;

  Stream<bool> get isSignedInStream => _controller.stream;

  Future<void> signInWithEmail({required String email, required String password}) async {
    _signedIn = email.isNotEmpty && password.isNotEmpty;
    _controller.add(_signedIn);
  }

  Future<void> signInWithGoogle() async {
    _signedIn = true;
    _controller.add(_signedIn);
  }

  Future<void> signOut() async {
    _signedIn = false;
    _controller.add(_signedIn);
  }

  void dispose() {
    _controller.close();
  }
}
