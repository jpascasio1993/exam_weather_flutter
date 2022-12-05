import 'package:exam_weather_flutter/l10n/l10n.dart';
import 'package:exam_weather_flutter/ui/common/widget_view.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_details_bloc/weather_details_bloc.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_details_bloc/weather_details_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherDetails extends StatefulWidget {
  final int id;

  const WeatherDetails({required this.id});

  @override
  _WeatherDetailsController createState() => _WeatherDetailsController();
}

class _WeatherDetailsController extends State<WeatherDetails> {

  void setFavorite({required int id, required bool isFavorite}) {
    context.read<WeatherDetailsBloc>().add(WeatherDetailsEvent.setFavorite(id: id, isFavorite: isFavorite));
  }

  @override
  void initState() {
    super.initState();
    context.read<WeatherDetailsBloc>().add(WeatherDetailsEvent.getWeatherFromRemote(id: widget.id));
  }

  @override
  Widget build(BuildContext context) => _WeatherDetailsView(this);
}

class _WeatherDetailsView extends WidgetView<WeatherDetails, _WeatherDetailsController> {
  const _WeatherDetailsView(_WeatherDetailsController state) : super(state);

  @override
  Widget build(BuildContext context) {
    final requestState = context.select((WeatherDetailsBloc bloc) => bloc.state.requestState);
    final localization = AppLocalization.of(context);
    final textStyle = Theme.of(context).textTheme.bodyText1;
    return requestState.maybeWhen(
        loaded: (data) {
          return Padding(
            padding: EdgeInsets.all(15.0.w),
            child: Column(
              children: [
                SizedBox(height: 10.0.h),
                Row(
                  children: [
                    Expanded(child: Text(data.city, style: TextStyle(fontSize: 18.0.sp), textAlign: TextAlign.center)),
                    SizedBox(width: 10.0.w),
                    IconButton(onPressed: () {
                       state.setFavorite(id: data.id, isFavorite: !data.favorite);
                    }, icon: Icon(data.favorite ? Icons.favorite : Icons.favorite_outline, size: 24.0.w))
                  ],
                ),
                SizedBox(height: 20.0.h),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(localization.degreeCelcius(data.temp.toStringAsFixed(1)), style: TextStyle(fontSize: 35.0.sp, color: Colors.black38)),
                    SizedBox(width: 15.0.w),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text(data.status, style: textStyle),
                          SizedBox(height: 10.0.h),
                          Text(localization.tempRange(data.tempMin.toStringAsFixed(1), data.tempMax.toStringAsFixed(1)), style: textStyle)
                       ],
                    ))
                  ],
                )
              ],
            ),
          );
        },
        orElse: () => const Center(child: CircularProgressIndicator()));
  }
}
