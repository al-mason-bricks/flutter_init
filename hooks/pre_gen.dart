import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  context.vars = {'name': Directory.current.path.split('/').last};
}
