abstract class UserAuth {
  Future<void> registerUser(String email, String passward);
  Future<void> loginUser(String email, String passward);
  Future<void> logoutUser();
}
