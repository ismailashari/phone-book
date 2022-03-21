import 'package:flutter/material.dart';
import 'package:phone_book/ui/page/add_contact/add_contact.dart';

class ListContact extends StatefulWidget {
  const ListContact({
    Key? key,
  }) : super(key: key);

  @override
  State<ListContact> createState() => _ListContactState();
}

class _ListContactState extends State<ListContact> {
  final List<String> _searchable = [
    'Alexander Arnold',
    'Akramen',
    'Ashley Cole',
  ];

  var names = <String>[];

  @override
  void initState() {
    super.initState();
    names.addAll(_searchable);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 27, top: 16),
                  child: const Text(
                    'My Contacts',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 14, top: 16),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AddContact(),
                        ),
                      );
                    },
                    icon: Image.asset(
                      'images/icon_button.png',
                      width: 19,
                      height: 19,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 24,
                  ),
                  fillColor: Color(0xFFBEBEBE),
                  filled: true,
                  labelText: 'Search Contact',
                  labelStyle: TextStyle(color: Colors.black),
                ),
                onChanged: (value) {
                  filterContact(value.toLowerCase());
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 1.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide.none, borderRadius: BorderRadius.zero),
                    child: Container(
                      // margin: const EdgeInsets.all(9.0),
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            child: Text(names[index][0]),
                            backgroundColor: const Color(0xFFC4C4C4),
                            foregroundColor: Colors.black,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          Text(
                            names[index],
                            style: const TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            child: const Icon(
                              Icons.more_horiz,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void filterContact(String searchTerm) {
    List<String> tmpSearchList = <String>[];

    tmpSearchList.addAll(_searchable);

    if (searchTerm.isNotEmpty) {
      List<String> tmpList = <String>[];
      tmpSearchList.forEach((element) {
        if (element.toLowerCase().contains(searchTerm)) {
          tmpList.add(element);
        }
      });

      setState(() {
        names.clear();
        names.addAll(tmpList);
      });
      return;
    } else {
      setState(() {
        names.clear();
        names.addAll(_searchable);
      });
    }
  }
}
