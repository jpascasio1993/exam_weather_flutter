import 'package:exam_weather_flutter/l10n/l10n.dart';
import 'package:exam_weather_flutter/router/router.dart';
import 'package:exam_weather_flutter/ui/common/widget_view.dart';
import 'package:exam_weather_flutter/ui/weather_details/weather_details.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_bloc/weather_bloc.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_bloc/weather_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:exam_weather_flutter/core/extensions/weather_extension.dart';

class Weathers extends StatefulWidget {
  const Weathers();

  @override
  _WeathersController createState() => _WeathersController();
}

class _WeathersController extends State<Weathers> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().add(const WeatherEvent.getWeathers());
  }

  @override
  Widget build(BuildContext context) => _WeathersView(this);
}

class _WeathersView extends WidgetView<Weathers, _WeathersController> {
  const _WeathersView(_WeathersController state) : super(state);

  @override
  Widget build(BuildContext context) {
    final weatherList = context.select((WeatherBloc bloc) => bloc.state.weathers);
    final localization = AppLocalization.of(context);

    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(10.0.w),
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<WeatherBloc>().add(const WeatherEvent.getWeathersFromRemote());
        },
        child: ListView.separated(
            itemBuilder: (context, index) {
              final item = weatherList[index];
              return Material(
                color: item.temp.tempColor(),
                borderRadius: BorderRadius.circular(4),
                child: InkWell(
                  onTap: () {
                    WeatherDetailsRoute(item.id).go(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(localization.degreeCelcius(item.temp.toStringAsFixed(1))),
                            if (item.favorite) Icon(Icons.favorite, size: 24.0.w)
                          ],
                        ),
                        SizedBox(
                          height: 15.0.h,
                        ),
                        Row(
                          children: [
                            Text(item.city, style: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w600)),
                            SizedBox(width: 10.0.w),
                            Text(item.status, style: TextStyle(fontSize: 12.0.sp))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 10.0.h),
            itemCount: weatherList.length),
      )
    );
  }
}
