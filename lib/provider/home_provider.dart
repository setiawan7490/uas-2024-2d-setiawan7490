import '/models/home_model.dart';

class HomeProvider {
  List<HomeModel> getCategories() {
    return [
      HomeModel('Development'),
      HomeModel('IT & Software'),
      HomeModel('UI/UX'),
      HomeModel('Business'),
      HomeModel('Finance & Business'),
      HomeModel('Personal'),
    ];
  }
}