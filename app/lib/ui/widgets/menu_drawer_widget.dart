import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/ui/widgets/app_constants.dart';
import 'package:flutter/material.dart';

class MenuDrawerWidget extends StatefulWidget {
  const MenuDrawerWidget({Key? key}) : super(key: key);

  @override
  _MenuDrawerWidgetState createState() => _MenuDrawerWidgetState();
}

class _MenuDrawerWidgetState extends State<MenuDrawerWidget> {

  late final List<MenuItem> _menuList;

  @override
  Widget build(BuildContext context) {
    AppConstants appConstant = AppConstants();
    appConstant.of(context);
    _menuList = appConstant.menuList!;
    List<Widget> menuWidgetList = [Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        TVEKAppLocalization.of(context)!.mainMenuHeader,
      ),
    ),
      Divider(
        height: 1,
        thickness: 1,
      )];
    List<ListTile> menuItemList = _menuList.map((menuItem) => ListTile(
      leading: Icon(menuItem.icon),
      title: Text(menuItem.text),
      onTap: () => selectDestination(menuItem.transitionLink),
    )).toList();
    menuWidgetList = menuWidgetList + menuItemList + [
      Divider(
        height: 1,
        thickness: 1,
      )];
    return Row(
      children: [
        Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: menuWidgetList,
          ),
        ),
        VerticalDivider(
          width: 1,
          thickness: 1,
        ),
      ],
    );
  }

  void selectDestination(String menuItem) {
    //_menuList.where((menuListItem) => menuListItem.transitionLink.toLowerCase() == menuItem.toLowerCase()).toList();
    Navigator.pushNamed(context, menuItem);
  }
}
