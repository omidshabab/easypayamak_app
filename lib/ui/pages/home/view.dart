import 'package:easypayamak/constants/config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smooth_widgets/widgets/appbar/appbar.dart';
import 'package:smooth_widgets/widgets/buttons/icon.button.dart';
import 'package:smooth_widgets/widgets/skeletons/button.listtile.skeleton.dart';

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

  void refresh() {
    setState(() {
      //
    });
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
          FutureBuilder(
            future: null,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active ||
                  snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data != null) {
                  return Center(
                    child: Text("followings".tr.capitalizeFirst!),
                  );
                } else {
                  return Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/not_found.svg",
                            color: !context.isDarkMode
                                ? Colors.black
                                : Colors.white,
                            width: 250,
                          ),
                          const SizedBox(height: 25),
                          Text(
                            "هنوز هیچ کسی اینجا نیست!",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: !context.isDarkMode
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SmoothButtonListTileSkeleton();
                  },
                );
              } else if (snapshot.connectionState == ConnectionState.none) {
                return Center(
                  child: SmoothIconButton(
                    icon: Ionicons.reload,
                    onPressed: () {
                      refresh();
                    },
                  ),
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SmoothButtonListTileSkeleton();
                  },
                );
              }
            },
          ),
          FutureBuilder(
            future: null,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active ||
                  snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data != null) {
                  return Center(
                    child: Text("followings".tr.capitalizeFirst!),
                  );
                } else {
                  return Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/not_found.svg",
                            color: !context.isDarkMode
                                ? Colors.black
                                : Colors.white,
                            width: 250,
                          ),
                          const SizedBox(height: 25),
                          Text(
                            "هنوز هیچ کسی اینجا نیست!",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: !context.isDarkMode
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SmoothButtonListTileSkeleton();
                  },
                );
              } else if (snapshot.connectionState == ConnectionState.none) {
                return Center(
                  child: SmoothIconButton(
                    icon: Ionicons.reload,
                    onPressed: () {
                      refresh();
                    },
                  ),
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SmoothButtonListTileSkeleton();
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
