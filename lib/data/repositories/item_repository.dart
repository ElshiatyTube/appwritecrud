import 'package:appwritecrud/data/models/item.dart';

import '../../core/clients/appwrite_client.dart';

/// A repository class for managing `Item` data.
class ItemRepository {
  /// The Appwrite client used for interacting with the Appwrite services.
  final AppwriteClient _client;

  /// Creates an instance of `ItemRepository` with the given Appwrite client.
  ///
  /// \param _client The Appwrite client to be used.
  ItemRepository(this._client);

  /// The ID of the collection where items are stored.
  final String itemCollectionId = '678a2288002e87d6ccfd';

  /// Retrieves all items from the collection.
  ///
  /// \return A `Future` that resolves to a list of `Item` objects.
  Future<List<Item>> findAll() async {
    final response =
    await _client.listDocuments(collectionId: itemCollectionId);
    return response.documents.map((e) => Item.fromJson(e.$id, e.data)).toList();
  }
}