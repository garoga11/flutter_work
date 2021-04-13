import 'package:flutter/material.dart';
import 'card_img.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 330,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('https://blog.condo-world.com/wp-content/uploads/simpsons-universal-orlando-main.jpg'),
          CardImage('https://www.visitcalifornia.com/sites/visitcalifornia.com/files/VCW_D_Universal_T5_Ahmad%20Tarek_2776751961_283359ffe5_o_1280x642.jpg'),
          CardImage('https://orlandoinformer.com/wp-content/uploads/2013/12/002-lard-lad-donuts-chief-wiggum-simpsons-universal-studios-florida-3645-oi.jpg'),
          CardImage('https://www.tripsavvy.com/thmb/2XGaEeB2XUGBd7x25uHiCjLguEo=/700x502/filters:no_upscale():max_bytes(150000):strip_icc()/The-Simpsons-Universal-Studios-Florida-Moes-56a950075f9b58b7d0fa3a9a.jpg'),
          CardImage('https://media-cdn.tripadvisor.com/media/photo-s/08/15/42/79/krusty-burger.jpg'),
          CardImage('https://orlandoinformer.com/wp-content/uploads/2015/10/UNIVERSAL-20_Springfield_Kang-Kodos.jpg'),
          CardImage('https://i.ytimg.com/vi/bFdLkm-iZ5g/maxresdefault.jpg'),
        ],
      ),
    );
  }
}