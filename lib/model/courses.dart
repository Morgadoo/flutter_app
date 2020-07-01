class Course {
  final int id;
  final int indexID;
  final String name;
  final int numOfStudent;
  final int numOfStar;
  final String created;
  final String image;

  Course(this.id, this.indexID, this.name, this.numOfStudent, this.numOfStar,
      this.created, this.image);
}


var coursesData = [
[[1, 0, "Mastering Environment Creation in Houdini", 2.2, 4.8,"James Hodgart","assets/images/amb_h.png","https://youtu.be/2-0B4ucP1Qg"], 
 [1, 1, "Creating 3D Environments in Blender", 4.6, 4.6,"Rob Tuytel, Erik Selin","assets/images/amb_h2.png","https://www.udemy.com/course/blender-environments/"],
 [1, 2, "Environment Design and Illustration", 4.4, 4.2,"Aaron Limonick","assets/images/amb_h3.png","https://www.thegnomonworkshop.com/tutorials/environment-design-and-illustration"]],

[[2, 0, "Introduction to FX in Houdini", 3.4, 4.2,"Saber Jlassi","assets/images/vfx_h.png","https://youtu.be/XzyqP2rXer0"],
 [2, 1, "Futuristic UI Design in Houdini", 1.2, 3.8,"Russ Gautier","assets/images/vfx_h2.png","https://www.rebelway.net/fui-design-in-houdini"],
 [2, 2, "FX Compositing in Nuke", 2.7, 4.6,"Nick Chamberlain","assets/images/vfx_h3.1.png","https://www.rebelway.net/nuke-for-fx"],
 [2, 3, "Water FX in Houdini", 1.1, 4.9,"Igor Zanic","assets/images/vfx_h4.png","https://www.rebelway.net/water-fx-in-houdini"]],

[[3, 0, "Introduction to Flutter", 8.1, 4.7,"Google","assets/images/prog_h1.png","https://flutter.dev/docs/get-started/codelab"]],

[[4, "Curso Photoscan"]],

[[5, "Curso de Criação de Personagem"]],

[[6, "Curso de Design"]],

[[7, "Curso de Iluminação e Renderização"]],

[[8, 0, "Introduction to Modelling in Blender", 6.4, 4.2,"Blender Guru","assets/images/mod_h1.png","https://www.youtube.com/playlist?list=PLjEaoINr3zgEL9UjPTLWQhLFAK7wVaRMR"],
 [8, 1, "Sculpting in Blender", 1.6, 4.3," FlippedNormals","assets/images/mod_h2.png","https://youtu.be/A-Wq8K8icpQ"]]
];