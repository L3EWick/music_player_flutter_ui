import 'package:flutter/material.dart';
import 'package:music_player/models/song_model.dart';
import 'package:music_player/widgets/section_header.dart';

import '../widgets/song_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade400.withOpacity(0.8)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const _CustomAppBar(),
        bottomNavigationBar: const _CustomNavBar(),
          
        body: SingleChildScrollView(
          child: Column(
            children: [
             const _DiscoverMusic(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0, 
                    top:20.0, 
                    bottom: 20.0
                    ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: SectionHeader(title: 'Trending Music' ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.27, 
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: songs.length,
                          itemBuilder: (context, index) {
                            return SongCard(song: songs[index]);
                          },
                          ),
                          
                          ),
                    ],
                  ),
                ),
          ]),
        ),
      ),
    );
  }
}






//discover music
class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome',
            style: Theme.of(context).textTheme.bodyLarge
          ),
            const SizedBox(height: 5),
          Text(
            'Enjoy your favorite music',
            style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.bold),
            
          ),
          const SizedBox(height: 20,),

          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade400),                    

              prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none
              ),

              ),
          )
        ],
      ),
    );
  }
}


// Navbar
class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed ,
      backgroundColor: Colors.deepPurple.shade700,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label:'Home'
        ),
         BottomNavigationBarItem(
        icon: Icon(Icons.favorite_outline),
        label:'Favorites'
        ),
         BottomNavigationBarItem(
        icon: Icon(Icons.play_circle_outline),
        label:'Play'
        ),
         BottomNavigationBarItem(
        icon: Icon(Icons.people_outline),
        label:'Profile'
        ),
      ]);
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent-gig4-2.cdninstagram.com/v/t51.2885-15/354608391_217151054045171_7684696559870930632_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=scontent-gig4-2.cdninstagram.com&_nc_cat=111&_nc_ohc=XkBIuCEaYhAAX-LQxd7&edm=AP_V10EBAAAA&ccb=7-5&oh=00_AfBpGAxQGKCqjvX5LeRjIKACTswuXTMJeyiYOCnuuX6OqA&oe=649B2104&_nc_sid=8721cf'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
