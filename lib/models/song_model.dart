class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [

    //raridade album
    Song(
      title: 'A Igreja Vem', 
      description: 'Anderson Freire', 
      url: 'assets/music/raridade/01AIgrejaVem.mp3', 
      coverUrl: 'assets/images/raridade.jpg'),
    Song(
      title: 'Raridade', 
      description: 'Anderson Freire', 
      url: 'assets/music/raridade/02Raridade.mp3', 
      coverUrl: 'assets/images/raridade.jpg'),
    Song(
      title: 'Efesios 6', 
      description: 'Anderson Freire', 
      url: 'assets/music/raridade/05Efesios6.mp3.mp3',  
      coverUrl: 'assets/images/raridade.jpg'),
    Song(
      title: 'Ele Chegou', 
      description: 'Anderson Freire', 
      url: 'assets/music/raridade/09EleChegou.mp3.mp3',  
      coverUrl: 'assets/images/raridade.jpg'),
    Song(
      title: 'Meu Hospital', 
      description: 'Anderson Freire', 
      url: 'assets/music/raridade/10MeuHospital.mp3.mp3',  
      coverUrl: 'assets/images/raridade.jpg'),
  
    
    

  ];
}