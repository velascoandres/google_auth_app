import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {
  static GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'email',
  ]);

  static Future signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await _googleSignIn.signIn();
      print(googleSignInAccount);

      // TODO: idToken


      return googleSignInAccount;
    } catch (e) {
      print('Error en google signIn');
      print(e);
      return null;
    }
  }

  static Future signOut() async {
    final account = await _googleSignIn.signOut();
    print(account);
  }
}
