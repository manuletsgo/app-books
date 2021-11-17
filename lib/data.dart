class Book {
  String title,
      writer,
      image,
      description =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.';
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.image, this.rating, this.pages);
}

final List<Book> books = [
  Book('CorelDraw untuk Tingkat Pemula Sampai Mahir', 'Jubilee Enterprise',
      'res/corel.jpg', 3.5, 123),
  Book('Harry Potter e as Reliquias da Morte', 'J.K. Rowling',
      'res/harry-potter-reliquias.jpg', 5.0, 355),
  Book('Um Gato de Rua Chamado Bob', 'James Bowen',
      'res/gato-bob.jpg', 4.0, 205),
  Book('O Pequeno Príncipe', 'Antonie de Saint-Exupéry',
      'res/pequeno-principe.jpg', 5.0, 107),
  Book('Viagem ao Centro da Terra', 'Julio Verne',
      'res/viagem-centro-terra.jpg', 4.5, 357),
  Book('Pemodelan Objek Dengan 3Ds Max 2014', 'Wahana Komputer', 'res/max_3d.jpeg', 3.0, 200),
  Book('Penerapan Visualisasi 3D Dengan Autodesk Maya', 'Dhani Ariatmanto',
      'res/maya.jpeg', 4.8, 234),
  Book('Teknik Lancar Menggunakan Adobe Photoshop', 'Jubilee Enterprise',
      'res/photoshop.jpg', 4.5, 240),
  Book('Adobe Premiere Terlengkap dan Termudah', 'Jubilee Enterprise',
      'res/premier.jpg', 4.8, 432),
  Book('Cad Series : Google Sketchup Untuk Desain 3D', 'Wahana Komputer',
      'res/sketchup.jpeg', 4.5, 321),
  Book('Webmaster Series : Trik Cepat Menguasai CSS', 'Wahana Komputer',
      'res/webmaster.jpeg', 3.5, 431),
];
