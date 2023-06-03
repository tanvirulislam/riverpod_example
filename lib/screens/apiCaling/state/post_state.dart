// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_riverpod/screens/apiCaling/http_helper.dart';

import 'package:project_riverpod/screens/apiCaling/model.dart';

final postsProvider = StateNotifierProvider<PostNotifier, PostState>((ref) {
  return PostNotifier();
});

@immutable
abstract class PostState {}

class isitialState extends PostState {}

class PostLoadState extends PostState {
  final List<Post> posts;
  PostLoadState({
    required this.posts,
  });
}

class ErrorPostState extends PostState {
  final String massage;
  ErrorPostState({
    required this.massage,
  });
}

class PostNotifier extends StateNotifier<PostState> {
  PostNotifier() : super(isitialState());

  HttpGetPost _httpGetPost = HttpGetPost();

  fetchPost() async {
    try {
      List<Post> posts = await _httpGetPost.getPost();
      state = PostLoadState(posts: posts);
    } catch (e) {}
  }
}
