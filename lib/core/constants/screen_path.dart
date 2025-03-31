///constance-resources
library;
export 'app_colors.dart';
export 'enum.dart';
export 'sizes.dart';
export 'strings.dart';
export 'text_styles.dart';
export 'constants.dart';
export 'package:flutter/material.dart';
export 'assets.dart';
export 'package:weather_app/app.dart';
export 'dummy_data.dart';

///screens
export 'package:weather_app/presentation/screen/splash_screen/spash_screen.dart';
export 'package:weather_app/presentation/screen/introduction_screen/intro_screen.dart';
export 'package:weather_app/presentation/screen/home_screen/home_screen.dart';
export 'package:weather_app/presentation/screen/search_screen/search_screen.dart';
export 'package:weather_app/presentation/screen/weather_detailed_screen/weather_detailed_screen.dart';


///widgets
export 'package:weather_app/presentation/screen/splash_screen/widgets/content_body.dart';
export 'package:weather_app/presentation/screen/introduction_screen/widgets/animated_bg.dart';
export 'package:weather_app/presentation/screen/introduction_screen/widgets/content_body_widget.dart';
export 'package:weather_app/presentation/screen/introduction_screen/widgets/start_btn_app.dart';
export 'package:weather_app/presentation/common/gradient_container/container_body.dart';
export 'package:weather_app/presentation/screen/home_screen/widgets/weather_info_tile.dart';
export 'package:weather_app/presentation/common/gradient_container/gradient_container.dart';
export 'package:weather_app/presentation/common/reusable_widgets/reusable_row.dart';
export 'package:weather_app/presentation/screen/home_screen/widgets/weather_info_row.dart';
export 'package:weather_app/presentation/screen/search_screen/widgets/location_icon_box.dart';
export 'package:weather_app/presentation/screen/search_screen/widgets/rounded_search_box.dart';
export 'package:weather_app/presentation/screen/search_screen/widgets/search_screen_header.dart';
export 'package:weather_app/presentation/views/hourly_weather_view/widgets/hourly_weather_tile.dart';
export 'package:weather_app/presentation/views/famous_cities_view/widgets/famous_city_tile.dart';
export 'package:weather_app/presentation/views/weekly_forecast_view/widgets/weekly_forecast_tile.dart';
export 'package:weather_app/presentation/views/weekly_forecast_view/widgets/super_script_text.dart';
export 'package:weather_app/presentation/screen/weather_detailed_screen/widgets/detail_content_body.dart';
export 'package:weather_app/presentation/screen/home_screen/widgets/main_section_widget.dart';

///loader
export 'package:weather_app/presentation/common/shimmer_loader/shimmer_loader.dart';
export 'package:weather_app/presentation/common/shimmer_loader/mini_box_shimmer.dart';
export 'package:weather_app/presentation/common/shimmer_loader/weather_data_loader.dart';
export 'package:weather_app/presentation/common/shimmer_loader/tile_loader_box.dart';
export 'package:weather_app/presentation/common/shimmer_loader/boxes_shimmer.dart';
export 'package:weather_app/presentation/common/shimmer_loader/detail_screen_loader.dart';




///views
export 'package:weather_app/presentation/views/hourly_weather_view/hourly_weather_view.dart';
export 'package:weather_app/presentation/views/weekly_forecast_view/weekly_forecast_view.dart';
export 'package:weather_app/presentation/views/famous_cities_view/famous_cities_view.dart';

///packages
export 'package:weather_animation/weather_animation.dart';



///blocs
export 'package:bloc/bloc.dart';
export 'package:weather_app/presentation/bloc/bottom_nav_bloc/bottom_nav_bloc.dart';
export 'package:weather_app/presentation/bloc/hourly_weather_bloc/hourly_weather_bloc.dart';
export 'package:weather_app/presentation/bloc/current_weather_bloc/current_weather_bloc.dart';
export 'package:weather_app/presentation/bloc/weekly_weather_bloc/weekly_weather_bloc.dart';
export 'package:weather_app/presentation/bloc/city_name_weather_bloc/city_name_bloc.dart';

///repo
export 'package:weather_app/data/repositories/weather_city_repository/weather_city_repo.dart';
export 'package:weather_app/data/repositories/current_weather_repository/current_weather_repo.dart';
export 'package:weather_app/data/repositories/hourly_weather_repository/hourly_weather_repo.dart';
export 'package:weather_app/data/repositories/weekly_weather_repository/weekly_weather_repo.dart';


///models
export 'package:weather_app/data/models/hourly_weather.dart';
export 'package:weather_app/data/models/weekly_weather.dart';
export 'package:weather_app/data/models/famous_cities.dart';

///utils
export 'package:weather_app/core/utils/logging.dart';
export 'package:weather_app/core/utils/helper_function.dart';
export 'package:weather_app/core/utils/apl_helper.dart';
export 'package:weather_app/core/utils/get_weather_icons.dart';


///di
export 'package:weather_app/di/service_locator.dart';



///api handling
export 'package:dio/dio.dart';
export 'package:weather_app/data/network/base_api_services.dart';
export 'package:weather_app/core/exceptions/app_exception.dart';
export 'package:weather_app/data/response/api_response.dart';

///config
//routes
export 'package:weather_app/config/routes/routes_name.dart';
export 'package:weather_app/config/routes/routes.dart';
//bottom nav
export 'package:weather_app/config/bottom_nav/bottom_nav.dart';
export 'package:weather_app/config/bottom_nav/widget/nav_item.dart';
export 'package:weather_app/config/bottom_nav/widget/bottom_nav_icon.dart';
export 'package:weather_app/config/bottom_nav/widget/bottom_nav_body.dart';



///services
export 'package:weather_app/data/network/network_api_dio_services.dart';
export 'package:weather_app/data/services/geolocator_service.dart';

///extensions
export 'package:weather_app/core/extentions/int.dart';
export 'package:weather_app/core/extentions/double.dart';
export 'package:weather_app/core/extentions/datetime.dart';
export 'package:weather_app/core/extentions/strings.dart';


///flutter library
export 'dart:async';
export 'dart:io';
export 'package:flutter/foundation.dart';

///packages
export 'package:equatable/equatable.dart';
export 'package:animated_text_kit/animated_text_kit.dart';
export 'package:iconsax/iconsax.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:get_it/get_it.dart';
export 'package:shimmer/shimmer.dart';
export 'package:another_flushbar/flushbar.dart';
export 'package:another_flushbar/flushbar_route.dart';