class Stock {
  String title;
  double trade;
  double change;
  double open;
  double bid;
  double ask;

  Stock({required this.title, required this.trade, required this.change, required this.open, required this.bid, required this.ask});
}

List<Stock> stockList = [
  Stock(title: 'Bursa Malaysia', trade: 46.23, change: 44.34, open: 30.30, bid: 50.60, ask: 49.40),
  Stock(title: 'HDFC Bank', trade: 56.23, change: 43.34, open: 50.30, bid: 50.60, ask: 60.40),
  Stock(title: 'ITC Limited', trade: 36.23, change: 22.34, open: 40.30, bid: 50.60, ask: 36.40),
  Stock(title: 'Titan Company', trade: 33.23, change: 14.34, open: 40.30, bid: 50.60, ask: 44.40),
  Stock(title: 'Cipla', trade: 20.23, change: 44.34, open: 23.30, bid: 33.60, ask: 25.40),
  Stock(title: 'Cnergenz', trade: 66.23, change: 44.34, open: 10.30, bid: 22.60, ask: 22.40),
  Stock(title: 'Yew Lee Pacific Group', trade: 46.23, change: 44.34, open: 10.30, bid: 50.60, ask: 32.40),
  Stock(title: 'Maybank', trade: 55.23, change: 44.34, open: 65.30, bid: 10.60, ask: 20.40),
  Stock(title: 'Aeon Co (m)', trade: 20.23, change: 44.34, open: 40.30, bid: 30.60, ask: 10.40),
  Stock(title: 'Top Glove', trade: 20.23, change: 44.34, open: 70.30, bid: 32.60, ask: 10.40),
  Stock(title: 'Ajinomoto Malaysia Bhd', trade: 40.23, change: 70.50, open: 12.30, bid: 50.60, ask: 40.40),
  Stock(title: 'Petronas Gas Berhad', trade: 32.23, change: 56.80, open: 12.30, bid: 50.60, ask: 65.40)
  
];
