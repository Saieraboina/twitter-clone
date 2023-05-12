class AppwriteConstants {
  static const String databaseId = '64331cab9663122318e7';
  static const String projectId = '64306cd48d4946daf33e';
  static const String endPoint = 'http://100.65.242.10:13080/v1';
  static const String usersCollection = '64331e51b1bc9315cdca';
  static const String tweetsCollection = '6452854dd05d7008e45c';
  static const String notificationsCollection = '64331cab9663122318e7';
  static const String imagesBucket = '6449966de145b0363c54';
  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}




