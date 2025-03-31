import '../../../core/constants/screen_path.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.children, this.sunEnabled = false, this.isPadding = true});
  final bool? sunEnabled;
  final bool? isPadding;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: AppColors.gradientColorList),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: isPadding == false ? DSize.defaultSpace + 12 + 12 : 0,
          // left: DSize.defaultSpace,
          // right: DSize.defaultSpace
        ),
        child: ContainerBody(sunEnabled: sunEnabled ,children: children,),
      ),
    );
  }
}
