import 'package:flutter/material.dart';
import 'package:uts/data/data_model.dart';
import 'package:uts/domain/repository.dart';
import 'package:uts/domain/loading_widget.dart';
import 'package:uts/domain/user_tile.dart';

class Homies extends StatefulWidget {
  @override
  _HomiesState createState() => _HomiesState();
}

class _HomiesState extends State<Homies> {
  List<User> _users = <User>[];
  List<User> _usersDisplay = <User>[];

  bool _isLoading = true;

  @override
void initState() {
  super.initState();
  
  fetchUsers().then((users) {
    setState(() {
      _isLoading = false;
      _users = users;
      _usersDisplay = _users;
      print('Jumlah pengguna: ${_usersDisplay.length}');
    });
  }).catchError((error) {
    print('Kesalahan mengambil pengguna: $error');
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users List'),
      ),
      body: 
      // SafeArea(
      //   child: Container(
      //     child: ListView.builder(
      //       itemBuilder: (context, index) {
      //         if (!_isLoading) {
      //           return index == 0 ? _searchBar() : UserTile(user: this._usersDisplay[index - 1]);
      //         } else {
      //           return LoadingView();
      //         }
      //       },
      //       itemCount: _usersDisplay.length + 1,
      //     ),
      //   ),
      // ),
       _isLoading
    ? LoadingView()
    : ListView.builder(
        itemCount: _usersDisplay.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _searchBar();
          } else {
            return UserTile(user: _usersDisplay[index - 1]);
          }
        },
      ),

    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          searchText = searchText.toLowerCase();
          setState(() {
            _usersDisplay = _users.where((u) {
              var fName = u.firstName.toLowerCase();
              var lName = u.lastName.toLowerCase();
              var job = u.job.toLowerCase();
              return fName.contains(searchText) || lName.contains(searchText) || job.contains(searchText);
            }).toList();
          });
        },
        // controller: _textController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Users',
        ),
      ),
    );
  }
}


