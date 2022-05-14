import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/custom_color.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key : key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isplaying = false;

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        SvgPicture.asset("assets/logo.svg",
                            width: 40, height: 40)
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Dio",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Cast",
                          style: TextStyle(
                            color: CustomColor.pink700,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(right: 2, left: 20),
                height: 35,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'PHP',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Java',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Dart',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Flutter',
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                  child: const Text(
                    'Podcasts Recentes',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding( 
                padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: SingleChildScrollView(
                    child: Column(
                      children:[
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/philips.jpg",
                          title: "Philips Fullstack Developer",
                          description: "Bootcamp fullstack",
                          click: () {
                            setState(() {
                              isplaying = !isplaying;
                            });
                          },
                          icon: Icon(
                            isplaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                          ),
                          color: isplaying
                              ? CustomColor.pink700
                              : CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/impulso.jpg",
                          title: "Impulso",
                          description: "Como é trabalhar na Impulso",
                          click: () {},
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                      ],
                      
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

class PodcastWidget extends StatelessWidget {
  const PodcastWidget({
    Key? key,
    required this.img,
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
    required this.click,
  }) : super(key: key);

  final String img;
  final String title;
  final String description;
  final Color color;
  final Icon icon;
  final Function()? click;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover)),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  description,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: click,
            child: icon,
          ),
        ),
      ],
    );
  }
}

class CategoryWidget extends StatelessWidget{
  const CategoryWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 30,
      width: 130,
      decoration: 
        BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ), 
      ),
    );
  }
}