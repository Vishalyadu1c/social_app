class MyUserEntity {
  String userId;
  String name;
  String email;
  String password;
  String profileImg;
  String about;
  String lastActive;
  String createdAt;
  bool isActive;


  MyUserEntity({
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


  Map<String,Object> toDocument(){
    return {
      "userId":userId,
      "name":name,
      "email":email,
      "password":password,
      "profileImg":profileImg,
      "about":about,
      "lastActive":lastActive,
      "createdAt":createdAt,
      "isActive":isActive
    };
  }

  static MyUserEntity fromDocument(Map<String,dynamic> doc){
    return MyUserEntity(
      userId: doc["userId"], 
      name: doc["name"], 
      email: doc["email"], 
      password: doc["password"],
      profileImg: doc["profileImg"],
      about: doc["about"],
      lastActive: doc["lastActive"], 
      createdAt: doc["createdAt"],
      isActive: doc["isActive"]
      );
  }

}