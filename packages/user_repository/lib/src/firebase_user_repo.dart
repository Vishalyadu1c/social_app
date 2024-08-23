// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:user_repository/src/entities/entity.dart';
import 'package:user_repository/src/models/user.dart';
import 'package:user_repository/src/user_repo.dart';


class FirebaserUserRepository extends UserRepository {

  final FirebaseAuth _firebaseAuth;
  final userCollection = FirebaseFirestore.instance.collection("users");

  FirebaserUserRepository({
    FirebaseAuth? firebaseAuth
    }): _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;


  @override
  Stream<MyUser> get user {
    return _firebaseAuth.authStateChanges().flatMap((firebaseAuth)async*{
      if(firebaseAuth==null){
        yield MyUser.empty;
      }else{
        yield await userCollection.doc(firebaseAuth.uid).get().then((value)=>MyUser.fromEntity(MyUserEntity.fromDocument(value.data()!)));
      }
    });
  }

  @override
  Future<void> setUserData(MyUser user) async{
    try {
      await userCollection.doc(user.userId).set(user.toEntity().toDocument());
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> signIn(String email, String password) async{
   try {
     await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
   } catch (e) {
     print(e.toString());
     rethrow;
   }
  }

  @override
  Future<MyUser> signUp(MyUser myUser, String password) async{
   try {
    UserCredential user =   await _firebaseAuth.createUserWithEmailAndPassword(email: myUser.email, password: password);

    myUser.userId = user.user!.uid;
    return myUser;

   } catch (e) {
     print(e.toString());
     rethrow;
   }
  }

  @override
  Future<void> logout() async{
    await _firebaseAuth.signOut();
  }
}
