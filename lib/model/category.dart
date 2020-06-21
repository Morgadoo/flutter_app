class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {"name": "Programação", 'courses': 17, 'image': "assets/images/prog_h.png"},
  {"name": "Efeitos Visuais", 'courses': 12, 'image': "assets/images/vfx_h.png"},
  {"name": "Ambientes Virtuais", 'courses': 6, 'image': "assets/images/amb_h.png"},
  {"name": "Photoscan",'courses': 23,'image': "assets/images/phot_h.png"},
  {"name": "Criação de Personagens", 'courses': 4, 'image': "assets/images/pers_h.png"},
  {"name": "Design de Jogos", 'courses': 12, 'image': "assets/images/game_h.png"},
  {"name": "Iluminação e Renderização", 'courses': 7, 'image': "assets/images/rend2_h.png"},
  {"name": "Modelação 3D", 'courses': 19, 'image': "assets/images/mod_h.png"},
];