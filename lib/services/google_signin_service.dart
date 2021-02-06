import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {
  static GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'email',
  ]);

  static Future signInWithGoogle() async {
    try {

      final GoogleSignInAccount account = await _googleSignIn.signIn();
      final googleKey = await account.authentication;
      


      print('===== ID TOKEN =====');
      print(googleKey.idToken);

      // TODO: llamar un servicio REST al backend
      

      return account;
    
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
