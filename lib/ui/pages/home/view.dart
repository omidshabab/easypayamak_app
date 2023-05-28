import 'package:easypayamak/constants/config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:smooth_widgets/widgets/appbar/appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: SmoothAppbar(
          title: "appName".tr,
          rightIcon: IconlyLight.notification,
          rightIconOnPressed: () {
            //
          },
          leftIcon: IconlyLight.profile,
          leftIconOnPressed: () {
            //
          },
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            dividerColor: Colors.black,
            indicatorColor: Colors.black,
            labelStyle: TextStyle(
              fontFamily: Config.fontName,
              fontWeight: FontWeight.w600,
            ),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 35),
            indicatorWeight: 0.5,
            tabs: [
              Tab(
                text: "sent".tr.capitalizeFirst!,
              ),
              Tab(
                text: "received".tr.capitalizeFirst!,
              )
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        children: [
          Center(
            child: Text("sent".tr.capitalizeFirst!),
          ),
          Center(
            child: Text("received".tr.capitalizeFirst!),
          )
        ],
      ),
    );
  }
}
