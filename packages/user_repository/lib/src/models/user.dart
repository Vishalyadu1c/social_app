import 'package:user_repository/src/entities/entity.dart';

class MyUser {
  String userId;
  String name;
  String email;
  String password;
  String profileImg;
  String about;
  String lastActive;
  String createdAt;
  bool isActive;


  MyUser({
    required this.userId,
    required this.name,
    required this.email,
    required this.password,
    required this.profileImg,
    required this.about,
    required this.lastActive,
    required this.createdAt,
    required this.isActive
  });


 static final empty = MyUser(
  userId: '', 
  name: '', 
  email: '', 
  password: '', 
  profileImg: '',
  about: '',
  lastActive: '',
  createdAt: DateTime.now().millisecondsSinceEpoch.toString(),
  isActive: false
  );

 MyUserEntity toEntity(){
  return MyUserEntity(
    userId: userId, 
    name: name, 
    email: email, 
    password: password, 
    profileImg: profileImg, 
    about: about, 
    lastActive: lastActive, 
    createdAt:createdAt,
    isActive: isActive
    );
 }


 static MyUser fromEntity(MyUserEntity entity){
  return MyUser(
    userId: entity.userId, 
    name: entity.name, 
    email: entity.email, 
    password: entity.password, 
    profileImg: entity.profileImg,
    about: entity.about,
    lastActive: entity.lastActive,
    createdAt: entity.createdAt,
    isActive: entity.isActive
    );
 }


  @override
  String toString() {
    return 'MyUser:$userId,$name,$email,$profileImg,$about,$lastActive,$createdAt,$isActive';
  }

}