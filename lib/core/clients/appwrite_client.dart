import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/foundation.dart';

/// A client class for interacting with Appwrite services.
class AppwriteClient {
  /// Singleton instance of [AppwriteClient].
  static AppwriteClient? _instance;

  /// Factory constructor to return the lazy singleton instance of [AppwriteClient].
  factory AppwriteClient() => _instance ??= AppwriteClient._();

  /// The Appwrite [Client] instance.
  late Client _client;

  /// The Appwrite [Databases] instance.
  late Databases _databases;

  /// The endpoint URL for the Appwrite server.
  final String appwriteEndpoint = 'https://cloud.appwrite.io/v1';

  /// The project ID for the Appwrite project.
  final String projectId = '678a22050020677a5552';

  /// The database ID for the Appwrite database.
  final String databaseId = '678a22250020837db9bd';

  /// Private constructor to initialize the [AppwriteClient].
  AppwriteClient._() {
    _client = Client(endPoint: appwriteEndpoint, selfSigned: kDebugMode)
      ..setProject(projectId);
    initDatabase();
  }

  /// Initializes the [Databases] instance.
  void initDatabase() {
    _databases = Databases(_client);
  }

  /// Creates a document in the specified collection.
  ///
  /// \param collectionId The ID of the collection.
  /// \param documentId The ID of the document.
  /// \param data The data to be stored in the document.
  /// \return A [Future] that resolves to the created [Document].
  Future<Document> createDocument(
      {required String collectionId, required String documentId, required Map<String, dynamic> data}) {
    return _databases.createDocument(
      databaseId: databaseId,
      collectionId: collectionId,
      documentId: documentId,
      data: data,
    );
  }

  /// Lists all documents in the specified collection.
  ///
  /// \param collectionId The ID of the collection.
  /// \return A [Future] that resolves to a [DocumentList] containing the documents.
  Future<DocumentList> listDocuments({required String collectionId}) {
    return _databases.listDocuments(
      databaseId: databaseId,
      collectionId: collectionId,
    );
  }
}