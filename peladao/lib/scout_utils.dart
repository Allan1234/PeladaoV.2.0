class ScoutUtils {
  static int calculatePoints({
    required int goals,
    required int assists,
    required int cards,
    required int victories,
  }) {
    return (goals * 10) + (assists * 5) - (cards * 3) + (victories * 3);
  }
}
