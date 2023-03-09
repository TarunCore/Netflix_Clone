import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/toprated.dart';
import 'package:netflix/widgets/trending.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendingmovies = [];
  List topRatedMovies = [];
  @override
  void initState() {
    loadmovies();
    super.initState();
  }
  Color whiteclr = Colors.white;
  Color blackclr = Colors.black;


  final String apikey = "015549f4118c515c2089db6f41807cea";
  final readAccestoken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwMTU1NDlmNDExOGM1MTVjMjA4OWRiNmY0MTgwN2NlYSIsInN1YiI6IjY0MDlhY2VlMzE2NDRiMDA3YzlkZDNiMiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.sw7vPyNAItT7g40H2wyhQpRklpo2fZPKZ93rn0wJcFo";
  loadmovies()async{
    TMDB tmdbwithCustomLogs = TMDB(ApiKeys(apikey, readAccestoken),
        logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendingResult = await tmdbwithCustomLogs.v3.trending.getTrending();
    Map topRatedResult = await tmdbwithCustomLogs.v3.movies.getTopRated();
    setState(() {
      trendingmovies = trendingResult['results'];
      topRatedMovies = topRatedResult['results'];
    });
    print(trendingmovies);
  }



  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blackclr,
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Row(
            children: <Widget> [
              Image(
                width: w / 5.9,
                image: AssetImage('assets/nlogo.png'),
              ),
              SizedBox(
                width: w / 1.5,
              ),
              Image(
                width: w / 12,
                image: AssetImage('assets/search2.png'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12.0,top: 10),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Series",style: GoogleFonts.poppins(fontSize: 16,color: Colors.grey.shade200,fontWeight: FontWeight.w600,),),
                Text("Films",style: GoogleFonts.poppins(fontSize: 16,color: Colors.grey.shade200,fontWeight: FontWeight.w600),),
                Row(
                  children: [
                    Text("Categories",style: GoogleFonts.poppins(fontSize: 16,color: Colors.grey.shade200,fontWeight: FontWeight.w600),),
                    Image(width: w/25,image: AssetImage('assets/expand.png')),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          TrendingMovies(trending: trendingmovies),
          TopRated(toprated: topRatedMovies),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.sports_esports),label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.video_library),label: "New & Hot"),
          BottomNavigationBarItem(icon: Icon(Icons.download_for_offline_outlined),label: "Downloads"),
        ],
      ),
    );
  }
}
