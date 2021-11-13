import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_05/blocs/list_posts_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs01/modules/fs01_05/models/data/data.dart';
import 'package:fs01/modules/fs01_05/widgets/stateless/post.dart';
import 'package:fs01/themes/app_colors.dart';

class ListPostsPage extends StatefulWidget {
  const ListPostsPage({Key? key}) : super(key: key);

  @override
  _ListPostsPageState createState() => _ListPostsPageState();
}

class _ListPostsPageState extends State<ListPostsPage> {
  final _postsBloc = ListPostsBloc();

  @override
  void initState() {
    super.initState();
    _postsBloc.add('getPosts');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColor.primaryColor,
        appBar: AppBar(
          title: const Text('Session 05'),
        ),
        body: BlocBuilder<ListPostsBloc, List<Data>?>(
          bloc: _postsBloc,
          builder: (context, post) {
            if (post != null) {
              return ListView.builder(
                itemCount: post.length,
                itemBuilder: (_, int index) {
                  print('helloooo ${post.length}');
                  final item = post[index];
                  final tags = item.tags!.map((e) => '#$e ').toList();
                  return Post(
                    height: size.height * 0.5,
                    url: item.user!.avatar!.url!,
                    name: item.user!.first_name!+" "+item.user!.last_name!,
                    tag: item.tags!.toString(),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
