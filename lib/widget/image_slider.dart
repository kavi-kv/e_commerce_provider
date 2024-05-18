import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final  Function(int) onChange;
  final int currentSlide;
  const ImageSlider({super.key,required this.onChange,required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset('images/slider.jpg',
                fit: BoxFit.cover,),
                Image.asset('images/image1.png',
                fit: BoxFit.cover,),
                Image.asset('images/slider3.png',
                fit: BoxFit.cover,),
                
              ],
            ),
          ),
        ),
        Positioned.fill(

          bottom: 10,
          
          child: Align(
            alignment:Alignment.bottomCenter ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
                List.generate(
                  5,
                   (index)=>AnimatedContainer(duration: 
                   Duration(microseconds: 300),
                   width: currentSlide==index ?20:0,
                   height: 8,
                   margin: EdgeInsets.only(right: 3),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide==index ?Colors.black :Colors.transparent,
                    border: Border.all(color: Colors.black)
                   ),
                   )
                   
                   )

            ,),
          )
          
       
        
        )
      ],
    );
  }
}

