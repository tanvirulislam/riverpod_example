import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_riverpod/screens/apiCaling/state/post_state.dart';

class Posthome extends ConsumerWidget {
  const Posthome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Post')),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            PostState state = ref.watch(postsProvider);
            if (state is PostLoadState) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.posts.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = state.posts[index];
                  return ListTile(
                    title: Text(data.title.toString()),
                  );
                },
              );
            }
            return Text('Refresh the page to see posts');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(postsProvider.notifier).fetchPost();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
