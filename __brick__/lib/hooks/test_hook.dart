import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, String) useTest({required int id}) {
  return use(_TestHook(id: id));
}

class _TestHook extends Hook<(bool, String)> {
  const _TestHook({required this.id});
  final int id;
  @override
  _TestHookState createState() => _TestHookState();
}

class _TestHookState extends HookState<(bool, String), _TestHook> {
  bool loading = true;
  String test = '';

  @override
  void initHook() async {
    super.initHook();

    // api
    await Future.delayed(Duration(seconds: 3));
    test = 'Hello World!';
    loading = false;
  }

  @override
  (bool, String) build(BuildContext context) => (loading, test);
}
