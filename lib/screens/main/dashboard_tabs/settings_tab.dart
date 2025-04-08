import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/core/text_form_field_widget.dart';
import 'package:alpha_edge_web/screens/home/home_widgets.dart';
import 'package:alpha_edge_web/screens/main/main_one_widgets.dart';
import 'package:alpha_edge_web/screens/main/main_widgets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  TextEditingController myNameController = TextEditingController();
  TextEditingController myHeliusAPIKeyController = TextEditingController();
  TextEditingController mySetURLController = TextEditingController();
  TextEditingController myCToNovaBotController = TextEditingController();
  TextEditingController myCToPhantomController = TextEditingController();
  TextEditingController myCToSolFlareController = TextEditingController();
  String selectedWallet = '';
  String selectedNotification = '';

  final List<String> walletItems = [
    "Linked Wallets",
  ];
  final List<String> notificationItems = [
    "Notification Preferences",
  ];

  @override
  void initState() {
    myNameController.text = "Jhon Doe";
    selectedWallet = walletItems[0];
    selectedNotification = notificationItems[0];
    super.initState();
  }

  @override
  void dispose() {
    myNameController.dispose();
    myHeliusAPIKeyController.dispose();
    mySetURLController.dispose();
    myCToNovaBotController.dispose();
    myCToPhantomController.dispose();
    myCToSolFlareController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 670,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 40),
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF0A2051),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: bColorOne,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Profile Settings",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormFieldWidget(
                      myController: myNameController,
                      hintText: "Enter Name",
                      suffixIcon: SvgPicture.asset("assets/web_icons/edit.svg"),
                    ),
                    Container(
                      height: 58,
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xFF051945),
                        border: Border.all(
                          color: bColorOne,
                          width: 1,
                        ),
                      ),
                      child: Theme(
                        data: ThemeData(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            iconStyleData: IconStyleData(
                              icon: SvgPicture.asset(
                                "assets/web_icons/down_side.svg",
                              ),
                            ),
                            selectedItemBuilder: (BuildContext context) {
                              return walletItems.map<Widget>((String item) {
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    item,
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              }).toList();
                            },
                            items: walletItems
                                .map(
                                  (item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: item == selectedWallet
                                        ? Text(
                                            item,
                                            style: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          )
                                        : Text(
                                            item,
                                            style: const TextStyle(
                                              color: Color(0xFFB1B2B2),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                  ),
                                )
                                .toList(),
                            value: selectedWallet,
                            onChanged: (value) {
                              setState(() {
                                selectedWallet = value as String;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              height: 55,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              elevation: 1,
                              offset: const Offset(0, -10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xFF051945),
                                border: Border.all(
                                  color: bColorOne,
                                  width: 1,
                                ),
                              ),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: WidgetStateProperty.all(2),
                                thumbVisibility: WidgetStateProperty.all(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 55,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: bColorOne,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Account 1",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleIconWidget(
                          height: 33,
                          width: 33,
                          icon: "assets/web_icons/tick2.svg",
                          boxColor: whiteColor,
                          borderColor: whiteColor,
                        ),
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          "assets/web_icons/delete.svg",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: bColorOne,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Account 2",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleIconWidget(
                          height: 33,
                          width: 33,
                          icon: "assets/web_icons/tick2.svg",
                          boxColor: whiteColor,
                          borderColor: whiteColor,
                        ),
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          "assets/web_icons/delete.svg",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        SquareIconWidget(
                          height: 46,
                          width: 46,
                          icon: "assets/web_icons/add1.svg",
                          boxColor: whiteColor,
                          borderColor: whiteColor,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Add Account",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 58,
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                        bottom: 16,
                        top: 30,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xFF051945),
                        border: Border.all(
                          color: bColorOne,
                          width: 1,
                        ),
                      ),
                      child: Theme(
                        data: ThemeData(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            iconStyleData: IconStyleData(
                              icon: SvgPicture.asset(
                                "assets/web_icons/down_side.svg",
                              ),
                            ),
                            selectedItemBuilder: (BuildContext context) {
                              return notificationItems
                                  .map<Widget>((String item) {
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    item,
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              }).toList();
                            },
                            items: notificationItems
                                .map(
                                  (item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: item == selectedNotification
                                        ? Text(
                                            item,
                                            style: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          )
                                        : Text(
                                            item,
                                            style: const TextStyle(
                                              color: Color(0xFFB1B2B2),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                  ),
                                )
                                .toList(),
                            value: selectedNotification,
                            onChanged: (value) {
                              setState(() {
                                selectedNotification = value as String;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              height: 55,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              elevation: 1,
                              offset: const Offset(0, -10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xFF051945),
                                border: Border.all(
                                  color: bColorOne,
                                  width: 1,
                                ),
                              ),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: WidgetStateProperty.all(2),
                                thumbVisibility: WidgetStateProperty.all(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 55,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SwitchItemWidget(
                      title: "SMS",
                      defaultValue: false,
                    ),
                    SizedBox(height: 16),
                    SwitchItemWidget(
                      title: "Email",
                      defaultValue: false,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 670,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 40),
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF0A2051),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: bColorOne,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Helius API Integration",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 24),
                    const Text(
                      "Connect your Helius API for live token data and alerts",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFFAFAFAF),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    TextFormFieldWidget(
                      myController: myHeliusAPIKeyController,
                      hintText: "Enter Helius API Key",
                    ),
                    ButtonWidget(
                      text: "Save",
                      height: 58,
                      btnColor: bColorOne,
                      borderColor: bColorOne,
                      onPressed: () {},
                    ),
                    SizedBox(height: 24),
                    TextFormFieldWidget(
                      myController: mySetURLController,
                      hintText: "Set Webhook URL for Live Token Data",
                    ),
                    ButtonWidget(
                      text: "Save",
                      height: 58,
                      btnColor: bColorOne,
                      borderColor: bColorOne,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 670,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 40),
                margin: EdgeInsets.only(right: 60),
                decoration: BoxDecoration(
                  color: Color(0xFF0A2051),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: bColorOne,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "DEX & Sniping Tool Integration",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 24),
                    const Text(
                      "Connect your wallets and sniping tools for seamless trading.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFFAFAFAF),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    TextFormFieldWidget(
                      myController: myCToNovaBotController,
                      hintText: "Connect to NovaBot for Auto-Sniping",
                    ),
                    ButtonWidget(
                      text: "Connect",
                      height: 58,
                      btnColor: bColorOne,
                      borderColor: bColorOne,
                      onPressed: () {},
                    ),
                    SizedBox(height: 24),
                    TextFormFieldWidget(
                      myController: myCToPhantomController,
                      hintText: "Connect to Phantom Wallet",
                    ),
                    ButtonWidget(
                      text: "Connect",
                      height: 58,
                      btnColor: bColorOne,
                      borderColor: bColorOne,
                      onPressed: () {},
                    ),
                    SizedBox(height: 24),
                    TextFormFieldWidget(
                      myController: myCToSolFlareController,
                      hintText: "Connect to Solflare Wallet",
                    ),
                    ButtonWidget(
                      text: "Connect",
                      height: 58,
                      btnColor: bColorOne,
                      borderColor: bColorOne,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 120),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "© 2025 Alpha Edge. All rights reserved.",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  "Terms of Service",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 30),
                const Text(
                  "Contact Support",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
