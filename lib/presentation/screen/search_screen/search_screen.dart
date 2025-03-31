import 'package:weather_app/core/constants/screen_path.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(children: [
        SearchScreenHeader(),
        Row(
          children: [
            Expanded(child: RoundedSearchBox(controller: _controller)),
            SizedBox(
              width: DSize.sm,
            ),
            LocationIconWidget()
          ],
        ),
        SizedBox(height: DSize.spacerBtwSections / 2,),
        FamousCitiesView()
      ]),
    );
  }
}
