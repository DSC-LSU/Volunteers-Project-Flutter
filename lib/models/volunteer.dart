class Volunteer {
  String id;
  String name;
  String imageUrl;
  double rating;
  int numRatings;
  String email;
  String phoneNumber;
  List<String> interests;
  String tagline;
  String description;
  Map<String, String> socialLinks;
  String location;

  int numProjectsOrganized;
  int numProjectsVolunteered;
  int numProjectsActive;

  Volunteer(
      {this.id,
      this.name,
      this.imageUrl,
      this.rating,
      this.numRatings,
      this.email,
      this.phoneNumber,
      this.interests,
      this.tagline,
      this.description,
      this.socialLinks,
      this.location,
      this.numProjectsOrganized,
      this.numProjectsVolunteered,
      this.numProjectsActive});
}
