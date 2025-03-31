import 'package:weather_app/core/constants/screen_path.dart';

class ReusableRow extends StatelessWidget {
  const ReusableRow({super.key, required this.title,  this.value, this.callback, this.isNavigate = true, this.color = AppColors.grey, this.showIcon = false, this.iconData = Iconsax.calendar});
  final String title;
  final String? value;
  final VoidCallback? callback;
  final bool? isNavigate, showIcon;
  final Color? color;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title , style: TextStyles.largeSubtitle.apply(color: AppColors.white, fontFamily: TextString.fontExBold),),
        showIcon != true ?
        InkWell(
            onTap: callback,
            child: Text(value ?? '', style: TextStyles.largeSubtitle.apply(color:isNavigate == true ? AppColors.lightBlue : color,
                fontSizeFactor: 0.8, decoration:isNavigate == true ? TextDecoration.underline : TextDecoration.none,
                decorationColor: AppColors.lightBlue.withOpacity(.5)),)) : Icon(iconData, color: Colors.white,),
      ],
    );
  }
}
