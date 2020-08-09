class Opportunity {
  String id;
  String name;
  int currentCount;
  int requiredCount;
  String imageUrl;
  DateTime uploadedTimestamp;

  Opportunity(
      {this.id,
      this.name,
      this.currentCount,
      this.requiredCount,
      this.imageUrl,
      this.uploadedTimestamp});
}
