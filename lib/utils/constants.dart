class Constants {

  static String TOP_HEADLINES_URL =  "https://newsapi.org/v2/top-headlines?country=us&apiKey=749502be8fb2449b9ffc17a122aa7f4c";

  static String headlinesFor(String keyword) {

    return  "https://newsapi.org/v2/everything?q=$keyword&apiKey=749502be8fb2449b9ffc17a122aa7f4c";

  }

  

}