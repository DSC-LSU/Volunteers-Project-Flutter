class Opportunity {
  String id;
  String name;
  int currentCount;
  int requiredCount;
  String imageUrl;
  int numHoursPerDay;
  int numDaysPerWeek;
  int numWeeks;
  DateTime uploadedTimestamp;

  Opportunity({
    this.id,
    this.name,
    this.currentCount,
    this.requiredCount,
    this.imageUrl,
    this.numHoursPerDay,
    this.numDaysPerWeek,
    this.numWeeks,
    this.uploadedTimestamp
  });
}
