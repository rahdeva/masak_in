class Foods {
  String id;
  String name;
  String description;
  String calories;
  String carbo;
  String protein;
  String calcium;
  String imageAsset;
  
  Foods({
    required this.id,
    required this.name,
    required this.description,
    required this.calories,
    required this.carbo,
    required this.protein,
    required this.calcium,
    required this.imageAsset,
  });
}

var foodLists = [
  Foods(
    id: "FOODS001",
    name: 'Ayam Geprek',
    description: 'Ayam geprek adalah makanan ayam goreng tepung khas Indonesia yang diulek atau dilumatkan bersama sambal bajak. Kini ayam geprek telah menjadi hidangan populer yang dapat ditemukan di hampir semua kota besar di Indonesia, tetapi asal mula ayam geprek berasal dari kota Yogyakarta.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/ayam-geprek.png',
  ),
  Foods(
    id: "FOODS002",
    name: 'Bakso',
    description: 'Bakso atau baso adalah jenis bola daging yang lazim ditemukan pada masakan Indonesia. Bakso umumnya dibuat dari campuran daging sapi giling dan tepung tapioka, tetapi ada juga bakso yang terbuat dari daging ayam, ikan, atau udang bahkan daging kerbau.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/bakso.png',
  ),
  // Foods(
  //   name: 'Bubur Ayam',
  //   description: 'Bubur ayam adalah salah satu jenis makanan bubur dari Indonesia. Bubur nasi adalah beras yang dimasak dengan air yang banyak sehingga memiliki tekstur yang lembut dan berair. Bubur biasanya disajikan dalam suhu panas atau hangat.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/bubur-ayam.png',
  // ),
  Foods(
    id: "FOODS003",
    name: 'Coto Makassar',
    description: 'Coto makassar atau coto mangkasara adalah makanan tradisional Suku Makassar, Sulawesi Selatan. Makanan ini terbuat dari jeroan sapi yang direbus dalam waktu yang lama. Rebusan jeroan bercampur daging sapi ini kemudian diiris-iris lalu dibumbui dengan bumbu yang diracik secara khusus.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/coto-makasar.png',
  ),
  Foods(
    id: "FOODS004",
    name: 'Gado Gado',
    description: 'Gado-gado adalah makanan khas Jakarta berisi sayur-sayuran yang direbus, irisan telur dan tahu, serta ditaburi bawang goreng dan kerupuk. Sayur-sayuran ditambahkan dengan bumbu kacang atau saus dari kacang tanah yang telah dihaluskan yang kemudian diaduk merata.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/gado-gado.png',
  ),
  Foods(
    id: "FOODS004",
    name: 'Gudeg',
    description: 'Gudeg adalah hidangan khas Provinsi Yogyakarta dan Jawa Tengah yang terbuat dari nangka muda yang dimasak dengan santan. Perlu waktu berjam-jam untuk membuat hidangan ini. Warna coklat biasanya dihasilkan oleh daun jati yang dimasak bersamaan.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/gudeg.png',
  ),
  Foods(
    id: "FOODS005",
    name: 'Kari Ayam',
    description: 'Kari ayam adalah hidangan umum di Asia Selatan, Asia Tenggara, serta di Caribbean (di mana makanan tersebut biasa disebut sebagai "ayam kari").  Di luar Asia Selatan, kari ayam biasanya dibuat dengan campuran rempah-rempah siap masak yakni bubuk kari.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/kari-ayam.png',
  ),
  Foods(
    id: "FOODS006",
    name: 'Ketupat',
    description: 'Ketupat atau kupat adalah hidangan khas Asia Tenggara maritim berbahan dasar beras yang dibungkus dengan pembungkus terbuat dari anyaman daun kelapa muda, atau kadang-kadang dari daun palma yang lain.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/ketupat.png',
  ),
  Foods(
    id: "FOODS007",
    name: 'Lalapan Ayam',
    description: 'Lalap adalah sayur-sayuran khas Sunda yang biasa disajikan beserta masakan Sunda. Lalap menyerupai salad, yang banyak dijumpai di makanan barat, walau begitu khas bagi lalap adalah bahwa sayur-sayur lalap tidak dimakan bersama saus atau bumbu-bumbu. Lalap biasa dimakan bersama nasi dan lauk-pauk lainnya.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/lalapan-ayam.png',
  ),
  // Foods(
  //   name: 'Martabak Telor',
  //   description: 'Martabak merupakan sajian yang biasa ditemukan di Arab Saudi, Yaman, Indonesia, Malaysia, Singapura, dan Brunei. Bergantung pada lokasinya, nama, dan komposisi martabak dapat bervariasi.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/martabak-telor.png',
  // ),
  Foods(
    id: "FOODS008",
    name: 'Mi Goreng',
    description: 'Mi goreng berarti "mi yang digoreng" adalah hidangan mie yang dimasak dengan digoreng tumis khas Indonesia. Mi goreng juga populer dan juga digemari di Malaysia, dan Singapura.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/mi-goreng.png',
  ),
  Foods(
    id: "FOODS010",
    name: 'Nasi Campur',
    description: 'Nasi campur adalah salah satu masakan khas Indonesia. Makanan ini terdiri atas nasi putih yang dihidangkan dengan bermacam-macam lauk-pauk. Lauk yang digunakan adalah sambal goreng, abon, serundeng, tahu goreng, ikan goreng, telur dan lain-lain.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/nasi-campur.png',
  ),
  Foods(
    id: "FOODS011",
    name: 'Nasi Goreng',
    description: 'Nasi goreng adalah sebuah makanan berupa nasi yang digoreng dan diaduk dalam minyak goreng, margarin, atau mentega. Biasanya ditambah kecap manis, bawang merah, bawang putih, asam jawa, lada dan bumbu-bumbu lainnya; seperti telur, ayam, dan kerupuk.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/nasi-goreng.png',
  ),
  // Foods(
  //   name: 'Nasi Kuning',
  //   description: 'Nasi kuning adalah makanan khas Indonesia. Makanan ini terbuat dari beras yang dimasak bersama dengan kunyit serta santan dan rempah-rempah. Dengan ditambahkannya bumbu-bumbu dan santan, nasi kuning memiliki rasa yang lebih gurih daripada nasi putih.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/nasi-kuning.png',
  // ),
  Foods(
    id: "FOODS012",
    name: 'Nasi Uduk',
    description: 'Nasi uduk adalah hidangan yang dibuat dari nasi putih yang diaron dan dikukus dengan santan, serta dibumbui dengan pala, kayu manis, jahe, daun serai dan merica. Hidangan ini mulai dibuat penduduk pulau Jawa sekitar tahun 1910-1924 dan dipopulerkan oleh Hindia Belanda setelahnya.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/nasi-uduk.png',
  ),
  Foods(
    id: "FOODS013",
    name: 'Opor Ayam',
    description: 'Opor ayam merupakan masakan sejenis kari ayam yang sangat dikenal di Indonesia. Masakan ini telah dikenal luas di daerah lain. Bahkan hampir ke seluruh wilayah Indonesia. Opor ayam sebenarnya adalah ayam rebus yang diberi bumbu kental dari santan yang ditambah berbagai bumbu seperti serai, kencur, dan sebagainya.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/opor-ayam.png',
  ),
  // Foods(
  //   name: 'Pempek',
  //   description: 'Pempek atau empek-empek adalah makanan yang terbuat dari daging ikan yang digiling lembut yang dicampur tepung kanji atau tepung sagu, serta komposisi beberapa bahan lain seperti telur, bawang putih yang dihaluskan, penyedap rasa, dan garam.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/pempek.png',
  // ),
  // Foods(
  //   name: 'Pepes',
  //   description: 'Pepes atau Pais merupakan suatu cara memasak khas masyarakat Sunda untuk mengolah bahan makanan yang telah dibumbui dengan bantuan daun pisang sebagai media pembungkusnya.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/pepes.png',
  // ),
  Foods(
    id: "FOODS014",
    name: 'Rawon',
    description: 'Rawon adalah masakan Indonesia berupa sup daging berkuah hitam dengan campuran bumbu khas yang menggunakan kluwek. Rawon, meskipun dikenal sebagai masakan khas Jawa Timur, dikenal pula oleh masyarakat Jawa Tengah sebelah timur.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/rawon.png',
  ),
  Foods(
    id: "FOODS015",
    name: 'Rendang',
    description: 'Rendang atau randang dalam bahasa Minangkabau adalah masakan yang berbahan dasar daging asli Indonesia yang berasal dari Minangkabau. Masakan ini dihasilkan dari proses memasak suhu rendah dalam waktu lama dengan menggunakan aneka rempah-rempah dan santan.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/rendang.png',
  ),
  Foods(
    id: "FOODS016",
    name: 'Risoles',
    description: 'Risoles, atau hanya risol saja, adalah pastri berisi daging, biasanya daging cincang, dan sayuran yang dibungkus dadar, dan digoreng setelah dilapisi tepung panir dan kocokan telur ayam. Hidangan ini juga dapat dipanggang di dalam oven, dan disajikan sebagai hors-doeuvre atau entrée ringan.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/risoles.png',
  ),
  Foods(
    id: "FOODS017",
    name: 'Sate Ayam',
    description: 'Sate ayam adalah makanan khas Indonesia. Sate Ayam dibuat dari daging ayam. Pada umumnya sate ayam dimasak dengan cara dipanggang dengan menggunakan arang dan disajikan dengan pilihan bumbu kacang atau bumbu kecap. Sate ini biasanya disajikan bersama dengan lontong atau nasi.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/sate-ayam.png',
  ),
  Foods(
    id: "FOODS018",
    name: 'Sate Kambing',
    description: 'Sate kambing adalah sejenis makanan sate terbuat dari daging kambing. Daging kambing tersebut disate (ditusuk dengan bambu yang dibentuk seperti lidi yang agak besar) dan dibumbui dengan rempah-rempah dan bumbu dapur, kemudian dibakar.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/sate-kambing.png',
  ),
  Foods(
    id: "FOODS019",
    name: 'Sate Klathak',
    description: 'Sate klatak adalah sebuah hidangan sate kambing asal Kecamatan Pleret, Kabupaten Bantul, Yogyakarta. Dalam bahasa Jawa, kegiatan membakar sate di pembakaran terbuka disebut "klathak". Sate ini sangat berbeda dari ragam sate lainnya, yang biasanya memakai garam dan lada sebagai bumbu utamanya.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/sate-klathak.png',
  ),
  // Foods(
  //   name: 'Sayur Hijau',
  //   description: 'Sayuran hijau merupakan kelompok makanan yang kaya nutrisi, tidak sulit dicari, relatif murah, pengolahannya mudah, dan dapat divariasikan menjadi beragam menu masakan. Hal-hal ini merupakan alasan yang kuat untuk memasukkan sayuran hijau ke dalam pola makan Anda sehari-hari.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/sayur-hijau.png',
  // ),
  // Foods(
  //   name: 'Siomay Batagor',
  //   description: 'Siomai adalah salah satu jenis dim sum. Dalam bahasa Mandarin, makanan ini disebut shaomai, sementara dalam bahasa Kanton disebut siu maai. Dalam dialek Beijing, makanan ini juga ditulis sebagai 燒麥, dan juga dibaca shaomai. Kulit siomai serupa dengan kulit pangsit. Makanan ini konon berasal dari Mongolia Dalam.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/siomay-batagor.png',
  // ),
  Foods(
    id: "FOODS020",
    name: 'Sop Konro',
    description: 'Sup konro adalah masakan sup iga sapi khas Indonesia yang berasal dari tradisi Bugis dan Makassar. Sup ini biasanya dibuat dengan bahan iga sapi atau daging sapi. Masakan berkuah warna coklat kehitaman ini biasa dimakan dengan burasa dan ketupat yang dipotong-potong terlebih dahulu.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/sop-konro.png',
  ),
  Foods(
    id: "FOODS021",
    name: 'Soto Ayam',
    description: 'Soto ayam adalah makanan khas Indonesia yang berupa sejenis sup ayam dengan kuah yang berwarna kekuningan. Warna kuning ini dikarenakan oleh kunyit yang digunakan sebagai bumbu. Soto ayam banyak ditemukan di daerah-daerah di Indonesia dan Singapura.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/soto-ayam.png',
  ),
  // Foods(
  //   name: 'Soto Babi',
  //   description: 'Soto babi adalah makanan khas Indonesia yang berupa sejenis sup babi dengan kuah yang berwarna kekuningan. Warna kuning ini dikarenakan oleh kunyit yang digunakan sebagai bumbu. Soto babi banyak ditemukan di daerah-daerah di Indonesia dan Singapura.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/soto-babi.png',
  // ),
  Foods(
    id: "FOODS022",
    name: 'Soto Bening',
    description: 'Salah satu jenis soto dengan kuah gurih dan menyegarkan adalah soto bening. Sesuai dengan namanya, soto ini disajikan dengan kuah bening yang terbuat dari campuran rempah. Seperti bawang merah, bawang putih, sereh, jahe, ketumbar, dan merica.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/soto-bening.png',
  ),
  Foods(
    id: "FOODS023",
    name: 'Soto Betawi',
    description: 'Soto Betawi merupakan soto yang khas dari daerah DKI Jakarta. Seperti halnya Soto Madura dan Soto Sulung, soto Betawi juga menggunakan jeroan. Selain jeroan, sering kali organ-organ lain juga disertakan, seperti mata, terpedo, dan juga hati. Daging sapi juga menjadi bahan campuran dalam soto Betawi.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/soto-betawi.png',
  ),
  // Foods(
  //   name: 'Soto Kambing',
  //   description: 'Soto kambing adalah hidangan olahan daging kambing khas Indonesia. hidangan ini berupa sejenis sup kambing dengan kuah yang berwarna kekuningan. Warna kuning ini dikarenakan oleh kunyit yang digunakan sebagai bumbu. Soto kambing banyak ditemukan di berbagai daerah di seluruh Indonesia dan Singapura.',
  //   calories: '250',
  //   carbo: '250',
  //   protein: '115',
  //   calcium: '135',
  //   imageAsset: 'assets/images/foods/soto-kambing.png',
  // ),
  Foods(
    id: "FOODS024",
    name: 'Tongseng',
    description: 'Tongseng adalah sejenis gulai dengan bumbu yang lebih "tajam". Perbedaan yang lebih jelas adalah pada penggunaan dagingnya. Tongseng dibuat dengan menggunakan daging yang masih melekat pada tulang, terutama tulang iga dan tulang belakang.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/tongseng-kambing.png',
  ),
  Foods(
    id: "FOODS025",
    name: 'Tumpeng',
    description: 'Tumpeng atau nasi tumpeng adalah makanan masyarakat Jawa yang penyajian nasinya dibentuk kerucut dan ditata bersama dengan lauk-pauknya. Olahan nasi yang dipakai umumnya berupa nasi kuning, nasi putih biasa, atau nasi uduk.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/tumpeng.png',
  ),
  Foods(
    id: "FOODS026",
    name: 'Ikan Bakar',
    description: 'Ikan bakar adalah hidangan ikan yang dibakar atau dipanggang di atas api atau bara api.yang diciptakan oleh mario aji Hidangan ikan yang dibakar, muncul secara universal di berbagai belahan dunia.',
    calories: '250',
    carbo: '250',
    protein: '115',
    calcium: '135',
    imageAsset: 'assets/images/foods/ikan-bakar.png',
  ),
];