import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_network/image_network.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:teste_de_dominio/app/constants/constants.dart';
import 'package:teste_de_dominio/app/models/customrecomendados.dart';
import 'package:teste_de_dominio/app/models/customspecialist.dart';
import 'package:teste_de_dominio/app/models/customtext.dart';
import 'package:teste_de_dominio/app/models/options.dart';
import 'package:teste_de_dominio/app/modules/salaopage/salaopage.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white60,
            icon: Icon(
              Icons.home_filled,
              color: Colors.blue,
              size: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2_outlined,
                color: Colors.blue, size: 25),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shield_sharp,
              color: Colors.blue,
              size: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_sharp,
              color: Colors.blue,
              size: 25,
            ),
            label: "",
          ),
        ],
        currentIndex: 0,
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 340,
                      color: const Color(0xff3d4571),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 40, left: 20, right: 20, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: SizedBox(
                                          height: 60,
                                          width: 60,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Colors.white)),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: ImageNetwork(
                                                  image:
                                                      "https://evorastudio.com.br/wp-content/uploads/2019/09/LE1A2383b-e1595428938826.jpg",
                                                  imageCache:
                                                      CachedNetworkImageProvider(
                                                          "https://evorastudio.com.br/wp-content/uploads/2019/09/LE1A2383b-e1595428938826.jpg"),
                                                  height: 60,
                                                  width: 60,
                                                  fitWeb: BoxFitWeb.cover,
                                                  fitAndroidIos: BoxFit.cover,
                                                  onLoading:
                                                      CircularProgressIndicator(
                                                    color: Colors.blue,
                                                  ),
                                                  onError: Icon(Icons.error),
                                                )),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomText(Colors.white, 21,
                                                "Olá, Grad!", true),
                                            CustomText(
                                                Colors.grey,
                                                12,
                                                "Vamos deixar seu cabelo atraente!",
                                                false),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white10,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      height: 40,
                                      width: 40,
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                // ignore: prefer_const_constructors
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: TextFormField(
                                textInputAction: TextInputAction.newline,
                                cursorColor: Colors.grey,
                                cursorWidth: 2,
                                maxLines: 4,
                                minLines: 1,
                                style: GoogleFonts.rubik(
                                    color: Colors.grey, fontSize: 13),
                                autocorrect: false,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(12)),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 0),
                                    child: Icon(
                                      Icons.search,
                                      size: 25,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  filled: true,
                                  hoverColor: Colors.grey,
                                  fillColor: Colors.transparent,
                                  hintText:
                                      "Procure pela localização ou pelo nome",
                                  hintStyle: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                  focusColor: Colors.grey,
                                  hintMaxLines: 1,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ),
                            ),
                            Options(),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 320,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffe4e6eb),
                            borderRadius: BorderRadius.circular(20)),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ],
                ),
                Container(
                  //padding: EdgeInsets.only(left: 20, right: 20),
                  color: Color(0xffe4e6eb),
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: CustomText(Color(0xff3d4571), 18,
                            "Recomendado para você", true),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                      ),
                      CarouselSlider.builder(
                          itemCount: 5,
                          itemBuilder: (context, index, realIndex) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SalaoPage()));
                                },
                                child: CustomRecommended());
                          },
                          options: CarouselOptions(
                            viewportFraction: 0.6,
                            enableInfiniteScroll: true,
                            height: 130,
                            autoPlay: true,
                            reverse: false,
                            autoPlayAnimationDuration: Duration(seconds: 4),
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex,
                          count: 5,
                          effect: JumpingDotEffect(
                            dotColor: Colors.grey,
                            activeDotColor: starsColor,
                            dotHeight: 7,
                            dotWidth: 7,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                Color(0xff3d4571), 17, "Especialista", true),
                            CustomText(starsColor, 12, "Ver todos", true),
                          ],
                        ),
                      ),
                      CarouselSlider.builder(
                          itemCount: 5,
                          itemBuilder: (context, index, realIndex) {
                            return GestureDetector(
                              child: CustomSpecialist(
                                url: "https://i.pinimg.com/280x280_RS/a3/ea/32/a3ea3267cea944bf955a20b295bc8073.jpg",
                                estrelas: 9.5,
                                name: "João",
                              ),
                            );
                          },
                          options: CarouselOptions(
                            viewportFraction: 0.4,
                            enableInfiniteScroll: true,
                            height: 220,
                            autoPlay: true,
                            reverse: false,
                            autoPlayAnimationDuration: Duration(seconds: 4),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
