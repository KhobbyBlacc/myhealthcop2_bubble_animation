class Services {
  int id;
  String name;
  String img;

  Services({required this.id, required this.name, required this.img});
}

List<Services> serviceList = [
  Services(name: "Lose Weight", img: 'assets/images/avatar.jpg', id: 1),
  Services(name: "Gain Weight", img: 'assets/images/avatar.jpg', id: 2),
  Services(name: "Define Your Goal", img: 'assets/images/avatar.jpg', id: 3),
  Services(name: "Be More Active Toned", img: 'assets/images/avatar.jpg', id: 4),
  Services(name: "Eat Healthy", img: 'assets/images/avatar.jpg', id: 5),
  Services(name: "Reduce Stress", img: 'assets/images/avatar.jpg', id: 6),
];
