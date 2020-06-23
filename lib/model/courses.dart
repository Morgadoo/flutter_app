class Course {
  final int id;
  final int indexID;
  final String name;
  final int numOfStudent;
  final int numOfStar;
  final String created;
  final String image;


  Course(this.id, this.indexID, this.name, this.numOfStudent, this.numOfStar, this.created, this.image);

}

/*
List<Course> courses = coursesData
    .map((item) => Course(item['id'],item['indexID'],item['name'], item['numOfStudent'], item['numOfStar'], item['created'], item['image']))
    .toList();


var coursesData = [
  {"id": 1, 'indexID': 0,'name': "Curso 1 de Ambientes Virtuais", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/amb_h.png"},
  {"id": 1, 'indexID': 1,'name': "Curso 2 de Ambientes Virtuais", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/amb_h.png"},
  {"id": 1, 'indexID': 2,'name': "Curso 3 de Ambientes Virtuais", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/amb_h.png"},
  {"id": 2, 'indexID': 0,'name': "Curso 1 de FX", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"},
  {"id": 2, 'indexID': 1,'name': "Curso 2 de FX", "numOfStudent": 1, "numOfStar": 2, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"},
  {"id": 2, 'indexID': 2,'name': "Curso 3 de FX", "numOfStudent": 1, "numOfStar": 3, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"},
  {"id": 2, 'indexID': 3,'name': "Curso 4 de FX", "numOfStudent": 1, "numOfStar": 4, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"},
  {"id": 3, 'indexID': 0,'name': "Curso 1 de Programação", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/prog_h.png"},
  {"id": 4, 'indexID': 0,'name': "Curso 1 de Modelação 3D", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/mod_h.png"},
  {"id": 4, 'indexID': 1,'name': "Curso 2 de Modelação 3D", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/mod_h.png"},
];

var coursesData = [
[{"id": 1, 'indexID': 0,'name': "Curso 1 de Ambientes Virtuais", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/amb_h.png"},
  {"id": 1, 'indexID': 1,'name': "Curso 2 de Ambientes Virtuais", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/amb_h.png"},
  {"id": 1, 'indexID': 2,'name': "Curso 3 de Ambientes Virtuais", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/amb_h.png"}],

[{"id": 2, 'indexID': 0,'name': "Curso 1 de FX", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"},
  {"id": 2, 'indexID': 1,'name': "Curso 2 de FX", "numOfStudent": 1, "numOfStar": 2, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"},
  {"id": 2, 'indexID': 2,'name': "Curso 3 de FX", "numOfStudent": 1, "numOfStar": 3, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"},
  {"id": 2, 'indexID': 3,'name': "Curso 4 de FX", "numOfStudent": 1, "numOfStar": 4, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"}],
 
[{"id": 2, 'indexID': 3,'name': "Curso 4 de FX", "numOfStudent": 1, "numOfStar": 4, 'created': "Criador 1", 'image': "assets/images/vfx_h.png"}],

[{"id": 4, 'indexID': 0,'name': "Curso 1 de Modelação 3D", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/mod_h.png"},
  {"id": 4, 'indexID': 1,'name': "Curso 2 de Modelação 3D", "numOfStudent": 1, "numOfStar": 1, 'created': "Criador 1", 'image': "assets/images/mod_h.png"}]
];
*/


//List<Course> courses = coursesData.map((item) => Course(item['id'],item['indexID'],item['name'], item['numOfStudent'], item['numOfStar'], item['created'], item['image']));

var coursesData = [
[[1, 0, "Curso 1 de Ambientes Virtuais", 1, 1,"Criador 1","assets/images/amb_h.png"], 
 [1, 1, "Curso 2 de Ambientes Virtuais", 1, 1,"Criador 1","assets/images/amb_h.png"],
 [1, 2, "Curso 3 de Ambientes Virtuais", 1, 1,"Criador 1","assets/images/amb_h.png"]],

[[2, 0, "Curso 1 de FX", 1, 1,"Criador 1","assets/images/vfx_h.png"],
 [2, 1, "Curso 2 de FX", 1, 1,"Criador 1","assets/images/vfx_h.png"],
 [2, 2, "Curso 3 de FX", 1, 1,"Criador 1","assets/images/vfx_h.png"],
 [2, 3, "Curso 4 de FX", 1, 1,"Criador 1","assets/images/vfx_h.png"]],

[[3, 0, "Curso 1 de Programação", 1, 1,"Criador 1","assets/images/prog_h.png"]],

[[4, "Curso Photoscan"]],

[[5, "Curso de Criação de Personagem"]],

[[6, "Curso de Design"]],

[[7, "Curso de Iluminação e Renderização"]],

[[8, 0, "Curso 1 de Modelação 3D", 1, 1,"Criador 1","assets/images/mod_h.png"],
 [8, 1, "Curso 2 de Modelação 3D", 1, 1,"Criador 1","assets/images/mod_h.png"]]
];