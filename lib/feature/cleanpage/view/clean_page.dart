import 'package:emailinbox_oguzhan_onal/httpService/api_model.dart';
import 'package:emailinbox_oguzhan_onal/product/components/color/colors.dart';
import 'package:emailinbox_oguzhan_onal/product/components/icons/const_icons.dart';
import 'package:emailinbox_oguzhan_onal/product/components/text/app_text.dart';
import 'package:emailinbox_oguzhan_onal/product/components/text/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:emailinbox_oguzhan_onal/httpService/api_call.dart';

import '../model/clean_page_model.dart';

class CleanPage extends StatefulWidget {
  const CleanPage({Key? key}) : super(key: key);

  @override
  State<CleanPage> createState() => _CleanPageState();
}

class _CleanPageState extends State<CleanPage> {
  List<Todos> todos = [];

  @override
  void initState() {
    super.initState();
    _getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.blackish,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: context.dynamicHeight(0.26),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(context.dynamicWidth(0.042)),
                    child: Text(
                      AppText.carbon,
                      textAlign: TextAlign.left,
                      style: TextStyles().textStyle4,
                    ),
                  ),
                )),
            Container(
              height: context.dynamicHeight(0.06),
              child: Padding(
                padding: EdgeInsets.only(
                    left: context.dynamicWidth(0.042),
                    right: context.dynamicWidth(0.042)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppText().sub,
                      textAlign: TextAlign.left,
                      style: TextStyles().textStyle5,
                    ),
                    Container(
                      height: context.dynamicHeight(0.05),
                      width: context.dynamicWidth(0.36),
                      decoration: BoxDecoration(
                          color: ConstColors().cleanedbutton,
                          borderRadius: context.lowBorderRadius),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          AppText.cleaned,
                          textAlign: TextAlign.left,
                          style: TextStyles().textStyle6,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                    left: context.dynamicWidth(0.042),
                    right: context.dynamicWidth(0.042)),
                height: context.dynamicHeight(0.68),
                child: homeListView())
          ],
        ),
      ),
    );
  }

  Expanded homeListView() {
    return Expanded(
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Container(
            margin: context.verticalPaddingLow,
            decoration: BoxDecoration(
              borderRadius: context.lowBorderRadius,
              color: ConstColors.white,
            ),
            child: ListTile(
              trailing: Container(
                  decoration: BoxDecoration(
                      color: ConstColors().blueOpacity,
                      borderRadius: context.lowBorderRadius),
                  padding: context.paddingLow,
                  child: ConstIcons.deleteIcon),
              title: Text(
                todos[index].title,
                style: TextStyles().textStyle7,
              ),
              subtitle: Text(
                todos[index].id.toString(),
                style: TextStyles().textStyle8,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
              ),
            ),
          );
        },
      ),
    );
  }

  _getTodos() async {
    var _ref = await ApiCall().fetchTodos();
    setState(() {
      todos = _ref;
    });
  }
}
