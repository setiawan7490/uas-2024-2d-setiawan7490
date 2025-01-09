import '/models/guest_model.dart';

class GuestProvider {
  GuestModels fetchMessage() {
    return GuestModels (message: "Hello from GuestProvider!");
  }
}
