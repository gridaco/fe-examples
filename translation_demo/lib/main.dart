import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:translation_demo/translation.dart';

Future<void> main() async {
  runApp(BridgedApp2());
}

class Component1 extends StatelessWidget {
  String action;
  String placeHolder;

  Component1(String this.action, String this.placeHolder);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(action ?? "Card Number",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center),
          SizedBox(
            height: 8,
          ),
          TextField(
            decoration: new InputDecoration(
              filled: true,
              fillColor: Color(
                0xff313335,
              ),
              focusedBorder: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF505155))),
              hintText: placeHolder ?? '5661 - 3211 - 7122 - 1266',
            ),
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      ),
    );
  }
}

class ShopListCard extends StatelessWidget {
  String subtile;
  String image;
  String title;

  ShopListCard({
    this.image,
    this.title,
    this.subtile,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image ??
                      "https://resource-hosting.s3.us-west-1.amazonaws.com/iJtZht0w-[object Object]"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                  6,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title ?? "Manhattan Cafe",
              style: TextStyle(
                color: Color(
                  0xfff8f8f8,
                ),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Apple SD Gothic Neo",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              subtile ?? "Manhattan",
              style: TextStyle(
                color: Color(
                  0xff93949a,
                ),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Apple SD Gothic Neo",
              ),
            ),
          ],
        ),
        width: 160,
      ),
    );
  }
}

class SeasonCard extends StatelessWidget {
  String subtile;
  String image;
  String title;

  SeasonCard({
    this.image,
    this.title,
    this.subtile,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    image ??
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/nWzawLhr-[object Object]",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title ?? "Winter",
                    style: const TextStyle(
                        color: const Color(0xfff9f9f9),
                        fontWeight: FontWeight.w500,
                        fontFamily: "AppleSDGothicNeo",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 4,
                ),
                // The beautiful sound of winter
                Text(subtile ?? "The beautiful sound of winter",
                    style: const TextStyle(
                        color: const Color(0xff94959a),
                        fontWeight: FontWeight.w400,
                        fontFamily: "AppleSDGothicNeo",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                    textAlign: TextAlign.left)
              ],
            )
          ],
        ),
        width: 160,
      ),
    );
  }
}

class CardInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: // Card Registration
            Text("Card Registration",
                style: Theme.of(context).textTheme.headline6),
      ),
      body: SafeArea(
        child: Container(
          child: Column(children: <Widget>[
            SizedBox(height: 32),
            Opacity(
              opacity: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Container(
                  height: 200,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 24,
                          left: 24,
                          child: Container(
                            width: 48,
                            height: 32,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  child: Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xffecaf43,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xffd74e64,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Positioned(
                          right: 24,
                          top: 24,
                          child: // Herrington Lee
                              Text("Herrington Lee",
                                  style: const TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18.0),
                                  textAlign: TextAlign.right)),
                      Positioned(
                          bottom: 24,
                          left: 24,
                          child: Text("5661 - 3211 - 7122 - 1266",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center)),
                      Positioned(
                        right: 24,
                        bottom: 24,
                        child: // 24/01
                            Text("24/01",
                                style: Theme.of(context).textTheme.headline2,
                                textAlign: TextAlign.right),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(
                          0x33f5ed4d,
                        ),
                        offset: Offset(
                          0,
                          8,
                        ),
                        blurRadius: 50,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(
                          0xffffdd86,
                        ),
                        Color(
                          0xfffffaa0,
                        ),
                        Color(
                          0xffffd5ee,
                        ),
                      ],
                      stops: [
                        0,
                        0.46,
                        1,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Component1("CardNumber", "5661 - 3211 - 7122 - 1266"),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Expanded(child: Component1("CVV", "351")),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(child: Component1("Expiry Date", "24 / 01")),
                ],
              ),
            ),

            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Component1("Card Holder", "Herrington Lee"),
            ),
            Expanded(child: Container()),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
              child: ButtonTheme(
                height: 52,
                minWidth: double.maxFinite,
                child: MaterialButton(
                  onPressed: () {},
                  color: Color(0xFFFFFFFF),
                  child: Container(
                    width: double.maxFinite,
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Color(
                          0xff151617,
                        ),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )
            // Card Number
          ]),
        ),
      ),
    );
  }
}

class BridgedApp2 extends StatefulWidget {
  @override
  _BridgedApp2State createState() => _BridgedApp2State();
}

class _BridgedApp2State extends State<BridgedApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
          backgroundColor: Color(0xFF151617),
          scaffoldBackgroundColor: Color(0xFF151617),
          tabBarTheme: TabBarTheme(
            labelColor: Colors.white,
            indicator: BoxDecoration(color: Colors.transparent),
            unselectedLabelColor: Color(0xFF505155),
            labelStyle: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontFamily: "AppleSDGothicNeo",
                fontStyle: FontStyle.normal,
                fontSize: 9.0),
            unselectedLabelStyle: TextStyle(
                color: Color(0xFF505155),
                fontWeight: FontWeight.w700,
                fontFamily: "AppleSDGothicNeo",
                fontStyle: FontStyle.normal,
                fontSize: 9.0),
          ),
          appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
          textTheme: TextTheme(
            button: TextStyle(
                color: Color(0xff151617),
                fontWeight: FontWeight.w700,
                fontFamily: "SFProText",
                fontStyle: FontStyle.normal,
                fontSize: 16.0),
            bodyText1: TextStyle(
              color: Color(
                0xff93949a,
              ),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            bodyText2: TextStyle(
              color: Color(
                0xff93949a,
              ),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            headline1: TextStyle(
                color: const Color(0xfff9f9f9),
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14.0),
            headline2: TextStyle(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 15.0),
            headline6: TextStyle(
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 16.0),
            headline4: TextStyle(
                color: const Color(0xfff9f9f9),
                fontWeight: FontWeight.w700,
                fontFamily: "Helvetica",
                fontStyle: FontStyle.normal,
                fontSize: 24.0),
          )),
      home: BridgedScreen(),
    );
  }
}

class BridgedScreen extends StatefulWidget {
  @override
  _BridgedScreenState createState() => _BridgedScreenState();
}

class _BridgedScreenState extends State<BridgedScreen> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()

    if (translation["title"] != "Today Escape Sound") {
      translation["title"] = "Today Escape Sound";
    } else {
      translation["title"] = "Today's Escape Sound";
    }
    setState(() {});
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));

    if (translation["title"] != "wooow bridged is cool") {
      translation["title"] = "wooow bridged is cool";
    } else {
      translation["title"] = "ss";
    }
    setState(() {});

    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
          body: TabBarView(
            children: [
              SmartRefresher(
                onLoading: _onLoading,
                onRefresh: _onRefresh,
                controller: _refreshController,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 304,
                        child: Image.network(
                          "https://resource-hosting.s3.us-west-1.amazonaws.com/opkzrGsu-[object Object]",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      // Today Escape Sound
                      Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            translation["title"],
                            style: Theme.of(context).textTheme.headline4,
                          )),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 24,
                              ),
                              ShopListCard(),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/3RZNN1FO-[object Object]",
                                title: "New York restaurant",
                                subtile: "New York",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/Ho8xnVmg-[object Object]",
                                title: "The Alps",
                                subtile: "Alpes",
                              ),
                              ShopListCard(),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/3RZNN1FO-[object Object]",
                                title: "New York restaurant",
                                subtile: "New York",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/Ho8xnVmg-[object Object]",
                                title: "The Alps",
                                subtile: "Alpes",
                              ),
                              ShopListCard(),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/3RZNN1FO-[object Object]",
                                title: "New York restaurant",
                                subtile: "New York",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/Ho8xnVmg-[object Object]",
                                title: "The Alps",
                                subtile: "Alpes",
                              ),
                              ShopListCard(),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/3RZNN1FO-[object Object]",
                                title: "New York restaurant",
                                subtile: "New York",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/Ho8xnVmg-[object Object]",
                                title: "The Alps",
                                subtile: "Alpes",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      // Song of the New Season
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text("Song of the New Season",
                            style: Theme.of(context).textTheme.headline4,
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: GridView.count(
                            scrollDirection: Axis.horizontal,
                            childAspectRatio: 1 / 5,
                            crossAxisCount: 2,
                            children: [
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/tDCAoUAq-[object Object]",
                                title: "Winter",
                                subtile: "The beautiful sound of winter",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/FcLRD6Ml-[object Object]",
                                title: "Fall",
                                subtile: "It\'s a relaxing sound.",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/8BlaVfh5-[object Object]",
                                title: "Spring",
                                subtile: "Warm temperature",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/Y7MSpnAG-[object Object]",
                                title: "Summer",
                                subtile: "The night sky is wonderful.",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/tDCAoUAq-[object Object]",
                                title: "Winter",
                                subtile: "The beautiful sound of winter",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/FcLRD6Ml-[object Object]",
                                title: "Fall",
                                subtile: "It\'s a relaxing sound.",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/8BlaVfh5-[object Object]",
                                title: "Spring",
                                subtile: "Warm temperature",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/Y7MSpnAG-[object Object]",
                                title: "Summer",
                                subtile: "The night sky is wonderful.",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/tDCAoUAq-[object Object]",
                                title: "Winter",
                                subtile: "The beautiful sound of winter",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/FcLRD6Ml-[object Object]",
                                title: "Fall",
                                subtile: "It\'s a relaxing sound.",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/8BlaVfh5-[object Object]",
                                title: "Spring",
                                subtile: "Warm temperature",
                              ),
                              SeasonCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/Y7MSpnAG-[object Object]",
                                title: "Summer",
                                subtile: "The night sky is wonderful.",
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 60,
                      ),

                      // Recommended Sound
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text("Recommended Sound",
                            style: Theme.of(context).textTheme.headline4,
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 24,
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/yncpoTJi-[object Object]",
                                title: "Autumn of Switzerland",
                                subtile: "Switzerland",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/4UWIxKZx-[object Object]",
                                title: "Chernobyl Streets",
                                subtile: "Chernobyl",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/xwhBwP_g-[object Object]",
                                title: "Japan Night",
                                subtile: "Japan",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/yncpoTJi-[object Object]",
                                title: "Autumn of Switzerland",
                                subtile: "Switzerland",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/4UWIxKZx-[object Object]",
                                title: "Chernobyl Streets",
                                subtile: "Chernobyl",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/xwhBwP_g-[object Object]",
                                title: "Japan Night",
                                subtile: "Japan",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/yncpoTJi-[object Object]",
                                title: "Autumn of Switzerland",
                                subtile: "Switzerland",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/4UWIxKZx-[object Object]",
                                title: "Chernobyl Streets",
                                subtile: "Chernobyl",
                              ),
                              ShopListCard(
                                image:
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/xwhBwP_g-[object Object]",
                                title: "Japan Night",
                                subtile: "Japan",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Text("Setting Tab"),
                      Text(
                          "Bridged need More Data about Tabs\n Please make Tab as Variant"),
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        color: Color(0xFF181918),
                        height: 60,
                      ),
                      Container(
                        color: Color(0xFF181918),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Setting",
                                style: TextStyle(
                                  color: Color(
                                    0xfff8f8f8,
                                  ),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Helvetica",
                                ),
                              ),
                              Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          /// Detected as Icon
                                          /// FIXME: Check your design. this is an icon of node "icons/mdi_wb_sunny_round". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: Center(
                                              child: Image.network(
                                                "https://resource-hosting.s3.us-west-1.amazonaws.com/efFss5nR-[object Object]",
                                                width: 16,
                                                height: 16,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),

                                          Container(
                                            width: 52,
                                            height: 36,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                width: 40,
                                                height: 28,
                                                child: Icon(
                                                  Icons.nightlight_round,
                                                  size: 16,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xff313335,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                        mainAxisSize: MainAxisSize.min,
                                      ),
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 18,
                                        right: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xff0f0f0f,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          18,
                                        ),
                                      ),
                                    ),

                                    /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                    Container(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFF181918),
                        height: 32,
                      ),
                      CustomListTile2(
                          title: "Notice",
                          icon:
                              "https://resource-hosting.s3.us-west-1.amazonaws.com/b89_oB7h-[object Object]",
                          banner: "9"),
                      CustomListTile(
                        title: "Version",
                        icon: Icons.layers,
                      ),
                      CustomListTile(
                          title: "Card Registration",
                          icon:
                              "https://resource-hosting.s3.us-west-1.amazonaws.com/gtVHn2JI-[object Object]",
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => CardInput()));
                          }),
                      Container(
                        height: 62,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 24,
                              bottom: 16,
                              child: Text(
                                "More",
                                style: TextStyle(
                                  color: Color(
                                    0xff707278,
                                  ),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomListTile(
                        title: "Privacy Policy",
                        icon:
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/L9MBuUUf-[object Object]",
                      ),
                      CustomListTile(
                        title: "Terms and Conditions",
                        icon: Icons.local_library,
                      ),
                      CustomListTile(
                        title: "FAQ",
                        icon:
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/KP4Xki9T-[object Object]",
                      ),
                      CustomListTile(
                        title: "Share Link",
                        icon:
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/_VZffLbn-[object Object]",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                height: 1,
                color: Color(0xFF323335),
              ),
              Container(
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(vertical: 10.0),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      child: Container(
                        height: 300,
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.home,
                                size: 20,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                  width: 50,
                                  child: Text(
                                    "HOME",
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                            mainAxisSize: MainAxisSize.min,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 20,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                                width: 70,
                                child: Text(
                                  "FAVORITE",
                                  textAlign: TextAlign.center,
                                ))
                          ],
                          mainAxisSize: MainAxisSize.min,
                        ),
                      ),
                    ),
                    Tab(
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.settings,
                              size: 20,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                                width: 50,
                                child: Text(
                                  "SETTING",
                                  textAlign: TextAlign.center,
                                ))
                          ],
                          mainAxisSize: MainAxisSize.min,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class CustomListTile extends StatelessWidget {
  String title;
  var icon;
  Null Function() onTap;

  CustomListTile({this.title, this.icon, Null Function() this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF181918),
      height: 58,
      child: ListTile(
        onTap: onTap,
        title: Text(
          title ?? "Notice",
          style: TextStyle(
            color: Color(
              0xffadadb2,
            ),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: "Helvetica",
          ),
        ),
        leading: icon is IconData
            ? Icon(icon,
                color: Color(
                  0xffadaeb2,
                ))
            : Image.network(
                icon,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xFFADAEB2),
        ),
      ),
    );
  }
}

class CustomListTile2 extends StatelessWidget {
  String title;
  var icon;
  String banner;

  CustomListTile2({this.title, this.icon, this.banner});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF181918),
      height: 58,
      child: ListTile(
        title: Row(
          children: [
            Text(
              title ?? "Notice",
              style: TextStyle(
                color: Color(
                  0xffadadb2,
                ),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "Helvetica",
              ),
            ),
          ],
        ),
        leading: icon is IconData
            ? Icon(
                icon,
                color: Color(
                  0xffadaeb2,
                ),
              )
            : Image.network(
                icon,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xFFADAEB2),
        ),
      ),
    );
  }
}
