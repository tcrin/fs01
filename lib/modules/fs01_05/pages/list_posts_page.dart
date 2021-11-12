import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_05/models/widgets/empty.dart';
import 'package:fs01/modules/fs01_05/models/widgets/error.dart';
import 'package:fs01/modules/fs01_05/pages/state_of_listview.dart';
import 'package:fs01/modules/fs01_05/widgets/stateless/post.dart';
import 'package:fs01/themes/app_colors.dart';
import 'package:provider/provider.dart';

class ListPostsPage extends StatefulWidget {
  const ListPostsPage({Key? key}) : super(key: key);

  @override
  _ListPostsPageState createState() => _ListPostsPageState();
}

class _ListPostsPageState extends State<ListPostsPage> {
  late StateOfListView _state;

  @override
  void initState() {
    _state = StateOfListView();
    super.initState();
    _state.getAllPost();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Session 05'),
      ),
      body: ChangeNotifierProvider<StateOfListView>(
        create: (_) => _state,
        child: Consumer<StateOfListView>(
          builder: (context, model, child) {
            return model.loading
                ? const Center(
                    child: Text(
                      'Loading',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: model.getAllPost,
                    child: model.error
                        ? Error(message: model.errorMessage)
                        : model.posts!.isEmpty
                            ? const Empty()
                            : ListView.builder(
                                itemCount: model.posts!.length,
                                itemBuilder: (context, index) {
                              //    print('hello rin ${model.posts![index].user!.avatar!.url!}');
                                  return Container(
                                    color: AppColor.primaryColor,
                                    child: Post(
                                      height: size.height * 0.5,
                                      url: '',
                                    ),
                                  );
                                }),
                  );
          },
        ),
      ),
    );
  }
}
//PostItem(
//                         height: size.height * 0.5,
//                         url: model.posts![index].data['images'].images!.first.url!
//                     );
////////////
//Column(
//         children: [
//           AppButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => const Widgets(),
//                 ),
//               );
//             },
//             label: 'Widget',
//           ),
//         ],
//       )

/////////////////////////
//Container(
//             color: Colors.blue,
//             height: 536,
//             child: Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const PostOwner(),
//                   const SizedBox(
//                     height: 18,
//                   ),
//                   const Text('data'),
//                   const SizedBox(
//                     height: 1,
//                   ),
//                   const Text('data'),
//                   const SizedBox(
//                     height: 13,
//                   ),
//                   Expanded(child: ImagesPost()),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     height: 28,
//                     // color: Colors.yellow,
//                     child: Row(
//                       children: [
//                         InkWell(
//                           child: Image.asset(
//                             AppAsset.love,
//                           ),
//                         ),
//                         Text('1125'),
//                         SizedBox(
//                           width: 22,
//                         ),
//                         InkWell(
//                           child: Image.asset(
//                             AppAsset.comment,
//                           ),
//                         ),
//                         Text('348'),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )
