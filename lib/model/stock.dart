class Stock {
  String title;
  String description;
  int year;

  Stock({required this.title, required this.description, required this.year});
}

List<Stock> stockList = [
  Stock(
      title: 'The Shawshank Redemption',
      description:
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      year: 1994),
  Stock(
      title: 'Jumanji',
      description:
          'In Jumanji: The Next Level, the gang is back but the game has changed.',
      year: 2019),
  Stock(
      title: 'The Godfather',
      description:
          'he aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son',
      year: 1972),
  Stock(
      title: "The Godfather: Part II",
      year: 1974,
      description:
          "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate."),
  Stock(
      title: "The Dark Knight",
      year: 2008,
      description:
          "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice."),
  Stock(
      title: "12 Angry Men",
      year: 1957,
      description:
          "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence."),
  Stock(
      title: "Schindler's List",
      year: 1993,
      description:
          "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis."),
  Stock(
      title: "The Lord of the Rings: The Return of the King",
      year: 2003,
      description:
          "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring."),
  Stock(
      title: "Pulp Fiction",
      year: 1994,
      description:
          "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption."),
  Stock(
      title: "The Good, the Bad and the Ugly",
      year: 1966,
      description:
          "A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery."),
  Stock(
      title: "The Lord of the Rings: The Fellowship of the Ring",
      year: 2001,
      description:
          "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron."),
  Stock(
      title: "Fight Club",
      year: 1999,
      description:
          "TAn insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.")
];
