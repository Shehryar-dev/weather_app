
import 'package:weather_app/core/constants/screen_path.dart';

class ContainerBody extends StatelessWidget {
  const ContainerBody({
    super.key,
    required this.children,
    this.sunEnabled = false
  });
  final bool? sunEnabled;


  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: WrapperScene(
            colors: [
              Colors.transparent,
              Colors.transparent,
            ],
            children: [
               if (sunEnabled == true)
                 SunWidget(sunConfig: SunConfig(width: 200, isLeftLocation:
                 true, blurStyle: BlurStyle.solid),),
              SnowflakeWidget(), WindWidget(), RainDropWidget(), ],
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: DSize.defaultSpace),
          child: CustomScrollView(
            slivers: [
              SliverList(delegate: SliverChildListDelegate(children))
            ],
          ),
        ),
      ],
    );
  }
}
