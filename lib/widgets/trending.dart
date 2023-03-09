import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/utils/text.dart';

class TrendingMovies extends StatelessWidget {

  final List trending;

  const TrendingMovies({super.key, required this.trending});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text("Trending Movies",style: GoogleFonts.poppins(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          Container(height: 220,
          child: ListView.builder(itemCount: trending.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){

                    },
                    child: Container(width: 140,
                      child: Column(
                        children: [
                          Container(height:200,

                            decoration: BoxDecoration(image: DecorationImage(
                                image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500'+trending[index]['poster_path']
                            )
                            )),
                          ),
                          // Container(height: 46,
                          //   child: modified_text(text: trending[index]['title']!=null?
                          //     trending[index]['title']:'Loading',color: Colors.white,size: 20,),
                          // )
                        ],
                      ),
                    ),
                  );
              }),)
        ],
      ),
    );
  }
}
