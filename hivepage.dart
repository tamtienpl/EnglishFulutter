// main.dart
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'homepage.dart';

List<Map<String, dynamic>> _allItems = [];

class HomeHive extends StatefulWidget {
  const HomeHive({Key? key}) : super(key: key);

  @override
  HomeHiveState createState() => HomeHiveState();
}

class HomeHiveState extends State<HomeHive> {
  final _shoppingBox = Hive.box('shopping_box');
  final _searchField = TextEditingController();

  @override
  void initState() {
    super.initState();
    refreshItems(); // Load data when app starts
  }

  // Get all items from the database
  //void refreshItems() {
  List<Map<String, dynamic>> refreshItems() {
    final data = _shoppingBox.keys.map((key) {
      final value = _shoppingBox.get(key);
      return {"key": key, "name": value["name"], "quantity": value["quantity"]};
    }).toList();

    //setState(() {
    _allItems = data.reversed.toList();
    // data.reversed : to sort items from latest to oldest
    _allItems = _allItems
        .where((value) => value['name'].toString().toLowerCase().contains(_searchField.text))
        .toList(); // if _searchField is null, _allItems will get all
    return _allItems;
  }

  // This function is called whenever the text field changes
  void _runFilter(String searchwhat) {
    //List<Map<String, dynamic>> results = [];
    if (searchwhat.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all items
      _allItems = _allItems;
    } else {
      _allItems = _allItems
          .where(
              (value) => value['name'].toString().toLowerCase().contains(_searchField.text))
          .toList();
    }
    // Refresh the UI
    setState(() {
      refreshItems();
    });
  }

  // Create new item
  Future<void> _createItem(Map<String, dynamic> newItem) async {
    await _shoppingBox.add(newItem);
    refreshItems(); // update the UI
  }

  // Update a single item
  Future<void> _updateItem(int itemKey, Map<String, dynamic> item) async {
    await _shoppingBox.put(itemKey, item);
    refreshItems(); // Update the UI
  }

  // Delete a single item
  Future<void> _deleteItem(int itemKey) async {
    await _shoppingBox.delete(itemKey);
    refreshItems(); // update the UI

    // Display a snackbar
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('An item has been deleted')));
  }

  // TextFields' controllers
  final _nameField = TextEditingController();
  final _quantityField = TextEditingController();

  // This function will be triggered when the floating button is pressed
  // It will also be triggered when you want to update an item
  void _showForm(BuildContext ctx, int? itemKey) async {
    // itemKey == null -> create new item
    // itemKey != null -> update an existing item

    if (itemKey != null) {
      final existingItem =
          _allItems.firstWhere((element) => element['key'] == itemKey);
      _nameField.text = existingItem['name'];
      _quantityField.text = existingItem['quantity'];
    }

    showModalBottomSheet(
        context: ctx,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(ctx).viewInsets.bottom,
                  top: 15,
                  left: 15,
                  right: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _nameField,
                    decoration: const InputDecoration(hintText: 'Name'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _quantityField,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(hintText: 'quantity'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Save new item
                      if (itemKey == null) {
                        _createItem({
                          "name": _nameField.text,
                          "quantity": _quantityField.text
                        });
                      }

                      // update an existing item
                      if (itemKey != null) {
                        _updateItem(itemKey, {
                          'name': _nameField.text.trim(),
                          'quantity': _quantityField.text.trim()
                        });
                      }

                      // Clear the text fields
                      _nameField.text = '';
                      _quantityField.text = '';

                      Navigator.of(context).pop(); // Close the bottom sheet
                    },
                    child: Text(itemKey == null ? 'Create New' : 'Update'),
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _allItems = refreshItems();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          iconSize: 22,
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('KindaCode'),
        actions: [
          SizedBox(height: 20, width: 150, child: TextField(
            controller: _searchField,
            decoration: const InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                floatingLabelStyle: TextStyle(fontSize: 12),
                hintText: "Search:"),
          )),
          IconButton(
            onPressed: () {
              _runFilter(_searchField.text);
            },
            iconSize: 22,
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: _allItems.isEmpty
          ? const Center(
              child: Text(
                'No Data',
                style: TextStyle(fontSize: 30),
              ),
            )
          : ListView.builder(
              // the list of items
              itemCount: _allItems.length,
              itemBuilder: (_, index) {
                final currentItem = _allItems[index];
                return Card(
                  color: Colors.orange.shade100,
                  margin: const EdgeInsets.all(1),
                  elevation: 3,
                  child: ListTile(
                      title: Text(currentItem['name']),
                      subtitle: Text(currentItem['quantity'].toString()),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Edit button
                          IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () =>
                                  _showForm(context, currentItem['key'])),
                          // Delete button
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteItem(currentItem['key']),
                          ),
                        ],
                      )),
                );
              }),
      // Add new item button
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(context, null),
        child: const Icon(Icons.add),
      ),
    );
  }
}
