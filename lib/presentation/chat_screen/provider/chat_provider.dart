import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chat_model.dart';

/// A provider class for the ChatScreen.
///
/// This provider manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatProvider extends ChangeNotifier {
  ChatModel chatModelObj = ChatModel();

  @override
  void dispose() {
    super.dispose();
  }
}
