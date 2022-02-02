import 'package:behancedesign/third.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  bool show1 = false;
  bool show2 = false;
  //bool show3 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 400),(){setState(() {show1 = true;});});
    Future.delayed(Duration(milliseconds: 600),(){setState(() {show2 = true;});});
    //Future.delayed(Duration(milliseconds: 1000),(){setState(() {show3 = true;});});

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 45,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(padding: EdgeInsets.only(left: 7),height: 40,width: 40,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                      child: Center(child: IconButton(iconSize: 20,onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back_ios,color: Colors.grey[400],)))),
                  Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 5,width: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                          Container(height: 5,width: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                          Container(height: 5,width: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),

                        ],)),
                ],
              ),


            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.035,),



            Padding(
              padding:  EdgeInsets.only(left: 20,right: 15),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: show1? 1 : 0,
                    child: Container(
                      padding: EdgeInsets.only(top: 3,right: 3,left: 5), height: 80,width: 80,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.withOpacity(0.4))),
                      child: Image.asset("assets/workerindustrial.png",fit: BoxFit.cover,),),
                  ),
                  SizedBox(width: 20,),

                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: show1? 1 : 0,

                    child: Container(width: MediaQuery.of(context).size.width*0.6,child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Glorious Shine",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ),),
                        SizedBox(height: 2,),
                        Text("Repairing Service",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ),),
                        SizedBox(height: 4,),

                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 4,),
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 4,),
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 4,),
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 4,),
                            Icon(Icons.star,color: Colors.amber,size: 17,),
                            SizedBox(width: 10,),
                            Text("5.0")

                          ],
                        )


                      ],
                    ),),
                  ),
                ],
              ),


            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.045,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Text("Description",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),textAlign: TextAlign.left,),

              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.03,),

            AnimatedPadding(
              duration: Duration(milliseconds: 900),
              padding:  EdgeInsets.only(left: 20,right: 10,top: show1? 0 : 10),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                  "when an unknown printer took a galley of type and scrambled it to make a "
                  "type specimen book.",textAlign: TextAlign.left,style: TextStyle(color: Colors.grey[500]),),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.06,),

            SizedBox(
              height:30,
              width: double.infinity,
              child: AnimatedPadding(
                curve: Curves.fastLinearToSlowEaseIn,
                padding: EdgeInsets.only(left: show1? 20 : MediaQuery.of(context).size.width),
                duration: Duration(milliseconds: 800),

                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1000),
                  opacity: show1?1:0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildContainer("assets/star.png","High rating"),
                      buildContainer("assets/correcticon.png","Verified"),
                      buildContainer("assets/money.gif","Money saving"),
                      buildContainer("assets/star.png","High rating"),
                      buildContainer("assets/correcticon.png","Verified"),
                      buildContainer("assets/money.gif","Money saving"),
                    ],
                  ),
                ),
              )
            ),


            SizedBox(height: MediaQuery.of(context).size.height*0.06,),

            Row(
              children: [
                SizedBox(width: 20,),

                Text("Our Members",style: TextStyle(fontSize: 20,fontWeight:FontWeight .w500),textAlign: TextAlign.left,),
              ],
            ),

            SizedBox(height: 30,),


            SizedBox(
                height:180,
                width: double.infinity,
                child: AnimatedPadding(
                  curve: Curves.fastLinearToSlowEaseIn,

                  padding: EdgeInsets.only(left: show2? 20 : MediaQuery.of(context).size.width),
                  duration: Duration(milliseconds: 1000),

                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: show1?1:0,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [


                        MainScreen("assets/man1.png","William James"),
                        MainScreen("assets/man2.png","Lucas Naoh"),
                        MainScreen("assets/man3.png","Elijah Lucas"),

                      ],
                    ),
                  ),
                )
            ),




          ],
        ),
      ),
    );
  }

  Container buildContainer( String image , String title ) {
    return Container(height: 30,margin: EdgeInsets.only(left: 10,right: 10),padding: EdgeInsets.only(left: 10,right: 10),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15) ),
                child: Row(
                  children: [
                    Image.asset(image,height: 20,width: 20,),
                    SizedBox(width: 5,),
                    Text(title)
                  ],
                ),);
  }


}






class MainScreen extends StatelessWidget {
  const MainScreen(this.image,this.title,{Key? key}) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
          padding: const EdgeInsets.only(left: 8),
          child: BouncingWidget(
              duration: Duration(milliseconds: 100),
              scaleFactor: 1.5,
              onPressed: () {
                Future.delayed(Duration(milliseconds: 200),(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  Third(image,title);
                  }));
                });
              },
              child: Card(
                //margin: EdgeInsets.only(left: 10),
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(height: 180,width: 120,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10) ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4,top: 4,right: 4),
                        child: Hero(
                          tag: image,
                          child: Image.asset(image,height: 75,width: 100,),
                          flightShuttleBuilder: (flightContext, animation, direction,
                              fromContext, toContext) {
                            return Image.asset(image,height: 75,width: 100,);
                          },
                        ),

                      ),
                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(title,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500, ),textAlign: TextAlign.left,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 2,),
                          Icon(Icons.location_on_rounded,size: 15,color: Colors.grey[400],),
                          Text("Egypt",style: TextStyle(fontSize: 12,fontWeight:FontWeight.w300 ,color: Colors.grey[400]),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("\$27/hour",style: TextStyle(fontSize: 12,fontWeight:FontWeight.w300, ),),
                            ),
                            Row(
                              children: [
                                Image.asset("assets/star.png",height: 10,width: 10,),
                                SizedBox(width: 3,),
                                Text("4.7",style: TextStyle(fontSize: 9,fontWeight:FontWeight.w300 ,color: Colors.grey[400]),),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),),
              ),

          )


      );



  }
}

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onTap: () {
//           Navigator.pop(context);
//         },
//         child: Center(
//           child: Hero(
//             tag: 'imageHero',
//             child: Image.network(
//               'https://picsum.photos/250?image=9',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }










// class PhotoHero extends StatelessWidget {
//   const PhotoHero({
//     Key? key,
//     required this.photo,
//     this.onTap,
//     required this.width,
//   }) : super(key: key);
//
//   final String photo;
//   final VoidCallback? onTap;
//   final double width;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 75,
//       width: width,
//       child: Hero(
//         tag: photo,
//         child: Material(
//           color: Colors.transparent,
//           child: InkWell(
//             onTap: onTap,
//             child: Image.asset(
//               photo,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class HeroAnimation extends StatelessWidget {
//   const HeroAnimation(this.image,{Key? key}) : super(key: key);
// final String image;
//   @override
//   Widget build(BuildContext context) {
//     timeDilation = 10.0; // 1.0 means normal animation speed.
//
//     return PhotoHero(
//       photo: image,
//       width: 300.0,
//       onTap: () {
//         Navigator.of(context)
//             .push(MaterialPageRoute<void>(builder: (BuildContext context) {
//           return Scaffold(
//             appBar: AppBar(
//               title: const Text('Flippers Page'),
//             ),
//             body: Container(
//               // Set background to blue to emphasize that it's a new route.
//               color: Colors.lightBlueAccent,
//               padding: const EdgeInsets.all(16.0),
//               alignment: Alignment.topLeft,
//               child: PhotoHero(
//                 photo: image,
//                 width: 100.0,
//                 onTap: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ),
//           );
//         }));
//       },
//     );
//   }
// }
