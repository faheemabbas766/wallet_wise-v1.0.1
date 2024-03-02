import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/map_view_model.dart';

/// A provider class for the MapViewScreen.
///
/// This provider manages the state of the MapViewScreen, including the
/// current mapViewModelObj
class MapViewProvider extends ChangeNotifier {
  MapViewModel mapViewModelObj = MapViewModel();

  @override
  void dispose() {
    super.dispose();
  }
}
