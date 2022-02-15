import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:teste_de_dominio/app/models/customstars.dart';
import 'package:teste_de_dominio/app/models/customtext.dart';
import 'package:teste_de_dominio/app/models/custongridview.dart';
import 'package:teste_de_dominio/app/models/options.dart';
import 'package:teste_de_dominio/app/modules/agenda_page/agendpage.dart';
import 'package:teste_de_dominio/app/modules/home/home_page.dart';

class SalaoPage extends StatefulWidget {
  const SalaoPage({Key? key}) : super(key: key);

  @override
  _SalaoPageState createState() => _SalaoPageState();
}

@override
int activeIndex = 0;

class _SalaoPageState extends State<SalaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AgendPage()));
          },
        child: Container(
          color: Colors.white,
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.9,
                color: Colors.deepOrangeAccent,
                child: Center(
                  child: CustomText(Colors.white, 15, "Agende Agora", false),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 120,
                      color: const Color(0xff3d4571),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white10,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        height: 40,
                                        width: 40,
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage()));
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_ios_outlined,
                                            size: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // ignore: prefer_const_constructors
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffe4e6eb),
                            borderRadius: BorderRadius.circular(20)),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: const Color(0xffe4e6eb),
                  height: 890,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          height: 170,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: ImageNetwork(
                                image:
                                    "https://mlabs-s3-blog.s3.amazonaws.com/wp-content/uploads/2020/06/14173126/marketing-digital-para-salao-de-beleza-header.jpg",
                                imageCache: const CachedNetworkImageProvider(
                                  "https://mlabs-s3-blog.s3.amazonaws.com/wp-content/uploads/2020/06/14173126/marketing-digital-para-salao-de-beleza-header.jpg",
                                ),
                                height: 170,
                                width: MediaQuery.of(context).size.width,
                                fitWeb: BoxFitWeb.cover,
                                fitAndroidIos: BoxFit.cover,
                                onLoading: const CircularProgressIndicator(
                                  color: Colors.blue,
                                ),
                                onError: const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CustomText(const Color(0xff3d4571), 20,
                                        "Especialista", true),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        CustomStars(
                                          stars: 5,
                                          rating: 1,
                                          review: 5,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          size: 15,
                                          color: Colors.grey,
                                        ),
                                        CustomText(
                                            Colors.grey,
                                            13,
                                            "Jalan Dl Pandjaitan No 8, Purwokerto",
                                            false),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          size: 15,
                                          color: Colors.grey,
                                        ),
                                        CustomText(Colors.grey, 13,
                                            "10.00 AM - 22.00 PM ", false),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Divider(
                              height: 30,
                            ),
                            SizedBox(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CustomText(const Color(0xff3d4571), 20,
                                        "Serviços", true),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Options(),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    CustomText(const Color(0xff3d4571), 20,
                                        "Galeria", true),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 400,
                                width: MediaQuery.of(context).size.width,
                                child: CustomGridView()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
