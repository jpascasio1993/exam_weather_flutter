import 'package:exam_weather_flutter/ui/common/widget_view.dart';
import 'package:flutter/material.dart';

class Weathers extends StatefulWidget {
    @override
    _WeathersController createState() => _WeathersController();
}

class _WeathersController extends State<Weathers> {
    @override
    Widget build(BuildContext context) => _WeathersView(this);
}

class _WeathersView extends WidgetView<Weathers, _WeathersController> {
    const _WeathersView(_WeathersController state): super(state);

    @override
    Widget build(BuildContext context) {
        return Container();
    }
}
