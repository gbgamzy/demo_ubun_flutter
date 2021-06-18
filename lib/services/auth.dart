import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth auth = FirebaseAuth.instance;
  String? code;

  Future signInWithPhone(String phoneNumber) async{
    try{
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91'+phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) async{
          if(code!=null) {
            PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: verificationId, smsCode: code!);

            // Sign the user in (or link) with the credential
            await auth.signInWithCredential(credential);
          }
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }
    catch(e){

    }


  }
  void fill_code(String c){
    code=c;
  }

}