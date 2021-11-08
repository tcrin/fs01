import 'package:flutter/material.dart';

import 'package:fs01/modules/fs01_04/exercise_02/services/categories_service_api.dart';
import 'package:fs01/themes/app_colors.dart';

class DataCategories extends StatefulWidget {
  const DataCategories({Key? key}) : super(key: key);

  @override
  _DataCategoriesState createState() => _DataCategoriesState();
}

class _DataCategoriesState extends State<DataCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch API Category'),
        backgroundColor: AppColor.primaryColor,
      ),
      body: FutureBuilder(
          future: CategoryServiceApi().fetchCategories(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index].title),
                      leading: snapshot.data[index].images ??
                          const Icon(Icons.category),
                      subtitle: Text(snapshot.data[index].description),
                    );
                  });
            }
          }),
    );
  }
}
