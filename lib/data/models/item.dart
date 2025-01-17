import 'package:equatable/equatable.dart';

/// A class representing an item with an ID, title, and description.
class Item extends Equatable {
  final String _id;

  final String _title;

  final String _description;

  const Item(this._id, this._title, this._description);

  /// Returns the title of the item.
  String get title => _title;

  /// Returns the description of the item.
  String get description => _description;

  /// Creates an instance of `Item` from a JSON object.
  ///
  /// \param id The unique identifier of the item.
  /// \param json The JSON object containing the item data.
  /// \return An instance of `Item`.
  factory Item.fromJson(String id, Map<String, dynamic> json) {
    return Item(id, json['title'], json['description']);
  }

  @override
  String toString() {
    return 'Item{id: $_id, title: $_title, description: $_description}';
  }

  /// Returns a list of properties used for equality comparison.
  ///
  /// \return A list containing the item's ID, title, and description.
  @override
  List<Object?> get props => [_id, _title, _description];
}
