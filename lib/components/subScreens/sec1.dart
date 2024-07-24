import 'package:flutter/material.dart';

class FeaturingToday extends StatefulWidget {
   const FeaturingToday({super.key});

  @override
  State<FeaturingToday> createState() => _FeaturingTodayState();

}

class _FeaturingTodayState extends State<FeaturingToday> {
  List<Widget> recentSongs = [ RecentlyPlayed(
    title: 'Inside Out',
    imageUrl: 'assets/images/recently.png',
  ),
    RecentlyPlayed(
      title: 'Memories',
      imageUrl: 'assets/images/memories.png',
    ),
    RecentlyPlayed(
      title: 'Beach House',
      imageUrl: 'assets/images/beach.png',
    ),
    RecentlyPlayed(
      title: 'Remind me',
      imageUrl: 'assets/images/kid.png',
    ),
    RecentlyPlayed(
      title: 'young',
      imageUrl: 'assets/images/kill.png',
    ),
    RecentlyPlayed(
      title: 'It wont kill',
      imageUrl: 'assets/images/smokers.png',
    ),
    RecentlyPlayed(
      title: 'somebody',
      imageUrl: 'assets/images/somebody.png',
    ),];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featuring Today',
            style: TextStyle(
                color: Colors.white, fontSize: screenSize.width * 0.06),
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.white,
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FeaturingCard(
                    screenSize: screenSize,
                    imageUrl: 'assets/images/english.png',
                    cname: 'ENGLISH\nSONGS',
                    category: 'NEW',
                  ),
                  FeaturingCard(
                    screenSize: screenSize,
                    imageUrl: 'assets/images/weekly.png',
                    cname: 'Top 20',
                    category: 'Weekly',
                  ),
                  FeaturingCard(
                    screenSize: screenSize,
                    imageUrl:  'assets/images/sing.png',
                    cname: 'Tye Tribbet',
                    category: 'sing along with',
                  ),
                  FeaturingCard(
                    screenSize: screenSize,
                    imageUrl:  'assets/images/allnew.png',
                    cname: 'Tamil\nTrending',
                    category: 'All New from',
                  ),
                  FeaturingCard(
                    screenSize: screenSize,
                    imageUrl:     'assets/images/thisweek.png',
                    cname:  'AFRO\nGOSPEL',
                    category:  'This Weeks',
                  ),
                ],
              );
            }),
          ),
          FullRow(screenSize: screenSize,  rowName: 'Recently Played', songs: recentSongs,),
          FullRow(screenSize: screenSize,  rowName: 'Your Artists', songs: recentSongs,),
          FullRow(screenSize: screenSize,  rowName: 'New Releases', songs: recentSongs,),
          FullRow(screenSize: screenSize,  rowName: 'Top Playlist', songs: recentSongs,),

        ],
      ),
    );
  }
}

class FullRow extends StatelessWidget {
  const FullRow({
    super.key,
    required this.screenSize, required this.songs, required this.rowName,
  });

  final Size screenSize;
  final List <Widget> songs;
  final String rowName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              rowName,
              style: TextStyle(
                  fontSize: screenSize.width * 0.06, color: Colors.white),
            ),
            Text(
              'see more',
              style: TextStyle(
                  fontSize: screenSize.width * 0.04, color: Colors.white),
            )
          ],
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children:
                  songs,
              );
            },
          ),
        ),
      ],
    );
  }
}

class FeaturingCard extends StatelessWidget {
  const FeaturingCard({
    super.key,
    required this.screenSize,
    required this.imageUrl,
    required this.cname,
    required this.category,
  });

  final Size screenSize;
  final String imageUrl;
  final String cname;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.fill),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                category,
                style: TextStyle(
                  fontSize: screenSize.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                cname,
                style: TextStyle(
                    fontSize: screenSize.width * 0.07,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed(
      {super.key, required this.title, required this.imageUrl});

  final String title;

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: 120,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.fill),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_circle,
                    color: Colors.white,
                    size: 40,
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
