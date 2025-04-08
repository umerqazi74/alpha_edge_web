import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main/main_screen.dart';
import 'home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController mySearchController = TextEditingController();
  int selectedMenuIndex = 0;

  bool isEnabled = true;
  bool isLiveEnabled = true;
  int selectedIndex = 0;

  int _currentPage = 0;
  late PageController _controller;

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1, viewportFraction: .6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAppColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  "assets/web_icons/shd.png",
                  height: 550,
                  width: MediaQuery.of(context).size.width / 1.5,
                  fit: BoxFit.fill,
                ),
                // Image.asset(
                //   "assets/web_icons/shd1.png",
                //   height: 550,
                //   width: MediaQuery.of(context).size.width / 1.5,
                //   fit: BoxFit.fill,
                // ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset("assets/web_icons/logo.svg"),
                          SizedBox(width: 30),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    MenuItemWidget(
                                      title: "Home",
                                      isSelected:
                                          selectedMenuIndex == 0 ? true : false,
                                      onTap: () {
                                        setState(() {
                                          selectedMenuIndex = 0;
                                        });
                                      },
                                    ),
                                    MenuItemWidget(
                                      title: "How It Works",
                                      isSelected:
                                          selectedMenuIndex == 1 ? true : false,
                                      onTap: () {
                                        setState(() {
                                          selectedMenuIndex = 1;
                                        });
                                      },
                                    ),
                                    MenuItemWidget(
                                      title: "Liquidity Sniping",
                                      isSelected:
                                          selectedMenuIndex == 2 ? true : false,
                                      onTap: () {
                                        setState(() {
                                          selectedMenuIndex = 2;
                                        });
                                      },
                                    ),
                                    MenuItemWidget(
                                      title: "Developer Tracking",
                                      isSelected:
                                          selectedMenuIndex == 3 ? true : false,
                                      onTap: () {
                                        setState(() {
                                          selectedMenuIndex = 3;
                                        });
                                      },
                                    ),
                                    MenuItemWidget(
                                      title: "Pricing",
                                      isSelected:
                                          selectedMenuIndex == 4 ? true : false,
                                      onTap: () {
                                        setState(() {
                                          selectedMenuIndex = 4;
                                        });
                                      },
                                    ),
                                    MenuItemWidget(
                                      title: "Join Alpha",
                                      isSelected:
                                          selectedMenuIndex == 5 ? true : false,
                                      onTap: () {
                                        setState(() {
                                          selectedMenuIndex = 5;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 50),
                                    ButtonWidget(
                                      text: "Sign In",
                                      height: 50,
                                      width: 120,
                                      borderRadius: 10,
                                      btnColor: bColorThree,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      onPressed: () {},
                                    ),
                                    SizedBox(width: 12),
                                    ButtonWidget(
                                      text: "Get Started",
                                      height: 50,
                                      width: 120,
                                      borderRadius: 10,
                                      btnColor: bColorOne,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MainScreen(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 190),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  "Snipe the Next\n100x Token Before\nIt Goes Public",
                                  style: TextStyle(
                                    height: 1.2,
                                    color: whiteColor,
                                    fontSize: 80,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 24),
                                const Text(
                                  "Instant alerts for new liquidity pools. Track devs before they launch. Stay ahead of the game.",
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 28),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: <Widget>[
                                    ButtonWidget(
                                      text: "Start Sniping Now",
                                      height: 50,
                                      width: 170,
                                      borderRadius: 10,
                                      btnColor: bColorOne,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      onPressed: () {},
                                    ),
                                    SizedBox(width: 16),
                                    const Text(
                                      "See How It Works",
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/web_icons/logo.png",
                                height: 600,
                                width: 780,
                                fit: BoxFit.fill,
                              ),
                              SvgPicture.asset("assets/web_icons/logo4.svg"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 170),
                      const Text(
                        "How AlphaEdge Gives You the\nTrading Edge",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 100),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TradingEdgeWidget(
                              icon: "assets/web_icons/time.png",
                              title: "Watch New Liquidity Pools in\nReal-Time",
                              subTitle1:
                                  "See new tokens the moment they\nadd liquidity.",
                              subTitle2: "No more waiting for DexScreener.",
                            ),
                          ),
                          SizedBox(width: 70),
                          Expanded(
                            child: TradingEdgeWidget(
                              icon: "assets/web_icons/alert.png",
                              title: "Check for Safety Risks\nBefore Sniping",
                              subTitle1: "Built-in honeypot & scam detection.",
                              subTitle2:
                                  "See if LP is locked & contract renounced.",
                            ),
                          ),
                          SizedBox(width: 70),
                          Expanded(
                            child: TradingEdgeWidget(
                              icon: "assets/web_icons/notification.png",
                              title: "Get Alerts When a Top Dev\nLaunches",
                              subTitle1: "Track Solana’s best token creators.",
                              subTitle2: "Be first to their next project.",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 100),
                      ButtonWidget(
                        text: "Start Tracking New Tokens",
                        height: 50,
                        width: 240,
                        borderRadius: 10,
                        btnColor: bColorOne,
                        borderColor: bColorOne,
                        fontWeight: FontWeight.w400,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 120),
                Container(
                  padding: const EdgeInsets.fromLTRB(60, 60, 60, 60),
                  decoration: BoxDecoration(
                    color: Color(0xFF0C1E47),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text(
                        "Live Token Sniping in Action",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 100),
                      LiveTokenWidget(
                        name: "Token Name",
                        price: "Liquidity Pool",
                        address: "Token Address",
                        isHeader: true,
                        isYes: false,
                      ),
                      Column(
                        children: List.generate(
                          3,
                          (int index) {
                            return LiveTokenWidget(
                              name: "Doge",
                              price: "\$53.16B",
                              address: "xy7374834834349343943fferererered",
                              isYes: index.isEven ? true : false,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 100),
                      ButtonWidget(
                        text: "Unlock full acces",
                        height: 50,
                        width: 169,
                        btnColor: bColorOne,
                        borderColor: bColorOne,
                        fontWeight: FontWeight.w400,
                        borderRadius: 10,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 120),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        " Why Top Traders Choose\nAlphaEdge",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 100),
                      GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 66,
                                  mainAxisSpacing: 26,
                                  mainAxisExtent: 123),
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return ReasonItemsWidget(
                              title:
                                  "Real-Time Liquidity Pool Sniping (See tokens before they go public.)",
                            );
                          }),
                      SizedBox(height: 100),
                      ButtonWidget(
                        text: "Get Early Access",
                        height: 50,
                        width: 240,
                        borderRadius: 10,
                        btnColor: bColorOne,
                        borderColor: bColorOne,
                        fontWeight: FontWeight.w400,
                        onPressed: () {},
                      ),
                      SizedBox(height: 60),
                      const Text(
                        "Choose Your AlphaEdge\nPlan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 80),
                      Responsive.isDesktop(context)
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                PlanItemsWidget(
                                  plan: "Free (Basic)",
                                  amount: "\$0",
                                  d1: "Liquidity Sniping",
                                  d2: "Developer Tracking",
                                  d3: "Instant Telegram Alerts",
                                  d4: "Priority API Speed",
                                  d5: "Live Sniper Dashboard",
                                  d6: "Private Alpha Group Access",
                                  isBtnColored: false,
                                  d1True: false,
                                  d2True: false,
                                  d3True: false,
                                  d4True: false,
                                  d5True: false,
                                  d6True: false,
                                ),
                                SizedBox(width: 30),
                                PlanItemsWidget(
                                  plan: "Pro (Most Popular)",
                                  amount: "\$49/mo",
                                  d1: "Liquidity Sniping",
                                  d2: "Developer Tracking",
                                  d3: "Instant Telegram Alerts",
                                  d4: "Priority API Speed",
                                  d5: "Live Sniper Dashboard",
                                  d6: "Private Alpha Group Access",
                                  isBtnColored: true,
                                  d1True: true,
                                  d2True: true,
                                  d3True: true,
                                  d4True: true,
                                  d5True: true,
                                  d6True: false,
                                ),
                                SizedBox(width: 30),
                                PlanItemsWidget(
                                  plan: "VIP (All-Access)",
                                  amount: "\$99/mo",
                                  d1: "Liquidity Sniping",
                                  d2: "Developer Tracking",
                                  d3: "Instant Telegram Alerts",
                                  d4: "Priority API Speed",
                                  d5: "Live Sniper Dashboard",
                                  d6: "Private Alpha Group Access",
                                  isBtnColored: false,
                                  d1True: true,
                                  d2True: true,
                                  d3True: true,
                                  d4True: true,
                                  d5True: true,
                                  d6True: true,
                                ),
                              ],
                            )
                          : Wrap(
                              runSpacing: 30,
                              children: <Widget>[
                                PlanItemsWidget(
                                  plan: "Free (Basic)",
                                  amount: "\$0",
                                  d1: "Liquidity Sniping",
                                  d2: "Developer Tracking",
                                  d3: "Instant Telegram Alerts",
                                  d4: "Priority API Speed",
                                  d5: "Live Sniper Dashboard",
                                  d6: "Private Alpha Group Access",
                                  isBtnColored: false,
                                  d1True: false,
                                  d2True: false,
                                  d3True: false,
                                  d4True: false,
                                  d5True: false,
                                  d6True: false,
                                ),
                                SizedBox(width: 30),
                                PlanItemsWidget(
                                  plan: "Pro (Most Popular)",
                                  amount: "\$49/mo",
                                  d1: "Liquidity Sniping",
                                  d2: "Developer Tracking",
                                  d3: "Instant Telegram Alerts",
                                  d4: "Priority API Speed",
                                  d5: "Live Sniper Dashboard",
                                  d6: "Private Alpha Group Access",
                                  isBtnColored: true,
                                  d1True: true,
                                  d2True: true,
                                  d3True: true,
                                  d4True: true,
                                  d5True: true,
                                  d6True: false,
                                ),
                                SizedBox(width: 30),
                                PlanItemsWidget(
                                  plan: "VIP (All-Access)",
                                  amount: "\$99/mo",
                                  d1: "Liquidity Sniping",
                                  d2: "Developer Tracking",
                                  d3: "Instant Telegram Alerts",
                                  d4: "Priority API Speed",
                                  d5: "Live Sniper Dashboard",
                                  d6: "Private Alpha Group Access",
                                  isBtnColored: false,
                                  d1True: true,
                                  d2True: true,
                                  d3True: true,
                                  d4True: true,
                                  d5True: true,
                                  d6True: true,
                                ),
                              ],
                            ),
                      SizedBox(height: 80),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ButtonWidget(
                            text: "Get Pro Access",
                            height: 50,
                            width: 152,
                            borderRadius: 10,
                            btnColor: bColorOne,
                            borderColor: bColorOne,
                            fontWeight: FontWeight.w400,
                            onPressed: () {},
                          ),
                          SizedBox(width: 14),
                          ButtonWidget(
                            text: "Try Free Mode",
                            height: 50,
                            width: 152,
                            borderRadius: 10,
                            btnColor: Colors.transparent,
                            borderColor: Color(0xFF354ABD),
                            fontWeight: FontWeight.w400,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 200),
                      const Text(
                        "What Traders Say About\nAlphaEdge",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
                SizedBox(
                  height: 190,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    onPageChanged: _onChanged,
                    controller: _controller,
                    itemCount: 3,
                    itemBuilder: (context, int index) {
                      return CommentItemsWidget(
                        image: "assets/web_icons/profile.png",
                        rating: 4,
                        accName: "@CryptoSniper99",
                        comment:
                            "This tool helped me snipe 3 tokens that went 10x before anyone noticed.",
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                          3,
                          (int index) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              height: (index == _currentPage) ? 16 : 10,
                              width: (index == _currentPage) ? 16 : 10,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (index == _currentPage)
                                    ? bColorOne
                                    : Color(0xFF6979A5),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 200),
                      const Text(
                        "Join Our Discord & Connect with\nOther Snipers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 40),
                      CircleIconWidget(
                        height: 100,
                        width: 100,
                        boxColor: Color(0xFF747ED2),
                        borderColor: Color(0xFF747ED2),
                        icon: "assets/web_icons/logo5.svg",
                      ),
                      SizedBox(height: 30),
                      ButtonWidget(
                        text: "Join Now",
                        height: 50,
                        width: 170,
                        borderRadius: 10,
                        btnColor: bColorOne,
                        borderColor: bColorOne,
                        fontWeight: FontWeight.w400,
                        onPressed: () {},
                      ),
                      SizedBox(height: 100),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            XItemsWidget(
                              name: "Alpha Edge",
                              accName: "@alphaedge",
                              comment:
                                  "Lorem ipsum is simply dummy text which use for web for dummy use lorem.",
                            ),
                            SizedBox(width: 30),
                            XItemsWidget(
                              name: "Alpha Edge",
                              accName: "@alphaedge",
                              comment:
                                  "Lorem ipsum is simply dummy text which use for web for dummy use lorem.",
                            ),
                            SizedBox(width: 30),
                            XItemsWidget(
                              name: "Alpha Edge",
                              accName: "@alphaedge",
                              comment:
                                  "Lorem ipsum is simply dummy text which use for web for dummy use lorem.",
                            ),
                            SizedBox(width: 30),
                            XItemsWidget(
                              name: "Alpha Edge",
                              accName: "@alphaedge",
                              comment:
                                  "Lorem ipsum is simply dummy text which use for web for dummy use lorem.",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 150),
                      const Text(
                        "Are You Ready to Snipe Smarter?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 20),
                      const Text(
                        "Get access to real-time liquidity tracking & dev\ninsights before anyone else.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ButtonWidget(
                            text: "Start Sniping Now",
                            height: 50,
                            width: 170,
                            borderRadius: 10,
                            btnColor: bColorOne,
                            borderColor: bColorOne,
                            fontWeight: FontWeight.w400,
                            onPressed: () {},
                          ),
                          SizedBox(width: 14),
                          ButtonWidget(
                            text: "See How It Works",
                            height: 50,
                            width: 170,
                            borderRadius: 10,
                            btnColor: Colors.transparent,
                            borderColor: Color(0xFF354ABD),
                            fontWeight: FontWeight.w400,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF0C1E47),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 60, 60, 0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    "Quick Links",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 24),
                                  const Text(
                                    "Home    How It Works    Pricing    Discord    Contact Support",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            SvgPicture.asset("assets/web_icons/logo.svg"),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  const Text(
                                    "Legal",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 24),
                                  const Text(
                                    "Privacy Policy        Term And Condition",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: whiteColor.withValues(alpha: .35),
                        margin: EdgeInsets.only(top: 60, bottom: 30),
                      ),
                      const Text(
                        "© 2025 Alpha Edge. All rights reserved.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
