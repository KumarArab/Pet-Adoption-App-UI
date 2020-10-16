class PetInfo {
  final String title,
      subtitle,
      age,
      sex,
      color,
      weight,
      po,
      ownername,
      distance,
      bio,
      imageUrl;

  PetInfo({
    this.age,
    this.sex,
    this.bio,
    this.po,
    this.ownername,
    this.distance,
    this.color,
    this.subtitle,
    this.title,
    this.weight,
    this.imageUrl,
  });
}

List<PetInfo> PetData = [
  PetInfo(
    title: "Puppy Catherine",
    subtitle: "French Black Puppy",
    age: "2",
    sex: "male",
    color: "black",
    weight: "2.5Kg",
    imageUrl: "assets/images/pet1.jpg",
    bio:
        "I recently lost my job and don't have enough time or money to tend to Bo anymore. I have a lot of health issues that need attention...",
    distance: "1.75km",
    ownername: "Roselia drew",
    po: "NO",
  ),
  PetInfo(
    title: "Little Darlene",
    subtitle: "French Black Puppy",
    age: "2",
    sex: "male",
    color: "black",
    weight: "2.5Kg",
    imageUrl: "assets/images/pet3.jpg",
    bio:
        "I recently lost my job and don't have enough time or money to tend to Bo anymore. I have a lot of health issues that need attention...",
    distance: "1.75km",
    ownername: "Roselia drew",
    po: "NO",
  ),
];
