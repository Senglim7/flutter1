class UserModels {
  final int id;
  final String name;
  final int age;
  final int phonenumber;
  final String image;

  UserModels(
      {required this.id,
      required this.name,
      required this.age,
      required this.phonenumber,
      required this.image});
}

List<UserModels> userList = [
  UserModels(id: 1, name: "Dara", age: 20, phonenumber: 12345, image: ""),
  UserModels(id: 1, name: "Dara", age: 20, phonenumber: 12345, image: ""),
  UserModels(id: 1, name: "Dara", age: 20, phonenumber: 12345, image: ""),
  UserModels(id: 1, name: "Dara", age: 20, phonenumber: 12345, image: ""),
];
