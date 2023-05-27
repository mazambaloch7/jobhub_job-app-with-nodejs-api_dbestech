import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';
import 'package:flutter_nodejs_app/views/common/height_spacer.dart';
import 'package:flutter_nodejs_app/views/ui/search/widgets/custom_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kOrange.value),
        iconTheme: IconThemeData(color: Color(kLight.value)),
        title: CustomField(
          hintText: "Search a Job",
          controller: controller,
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(AntDesign.search1),
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/optimized_search.png"),
            const HeightSpacer(size: 10),
            ReusableText(
              text: "Start Seaching For Jobs",
              style: appstyle(25, Color(kDark.value), FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
