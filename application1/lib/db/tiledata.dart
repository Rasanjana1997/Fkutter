class MyTile {
  String title;
  String id;
  List<MyTile> children;
  MyTile(this.title, this.id, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile(
    'RAM',
    'R',
    <MyTile>[
      new MyTile('T-FORCE GAMING NIGHT HAWK RGB 16GB (2 X 8GB) 4000MHZ - 29000LKR','R001'),
      new MyTile('T-FORCE GAMING NIGHT HAWK RGB 32GB (2 X 16GB) 3200MHZ - 42000LKR','R002'),
      new MyTile('T-FORCE GAMING NIGHT HAWK RGB 16GB (2 X 8GB) 3200MHZ - 25000LKR', 'R003'),
    ],
  ),
  new MyTile(
    'PROCESSOR',
    'PR',
    <MyTile>[
      new MyTile('AMD RYZEN™ 9 3950X (UP TO 4.7GHZ 16-CORES 32-THREADS) 72M CACHE - 120000LKR','PR001'),
      new MyTile('AMD RYZEN™ 9 3900X - 100000LKR','PR002'),
    ],
  ),
  new MyTile(
    'POWER SUPPLY',
    'PS',
    <MyTile>[
      new MyTile('NZXT C750 80+ GOLD 750W FULLY MODULAR - 29000LKR','PS001'),
      new MyTile('ASUS ROG-THOR-850P 850W 80+ PLATINUM MODULAR - 42000LKR','PS002'),
    ],
  ),
  new MyTile(
    'MOTHERBOARD',
    'MM',
    <MyTile>[
      new MyTile('ASUS ROG MAXIMUS XI FORMULA - 90000LKR','MM001'),
      new MyTile('ASUS ROG STRIX Z390-E GAMING - 50000LKR','MM002'),
    ],
  ),
  new MyTile(
    'GRAPHIC CARDS',
    'GC',
    <MyTile>[
      new MyTile('ASUS ROG MAXIMUS XI FORMULA - 90000LKR','GC001'),
      new MyTile('ASUS ROG STRIX Z390-E GAMING - 50000LKR','GC002'),
    ],
  ),
  new MyTile(
    'COOLING AND LIGHTNING',
    'CAL',
    <MyTile>[
      new MyTile('ASUS ROG MAXIMUS XI FORMULA - 90000LKR','CAL001'),
      new MyTile('ASUS ROG STRIX Z390-E GAMING - 50000LKR','CAL002'),
    ],
  ),
  new MyTile(
    'STORAGE',
    'SG',
    <MyTile>[
      new MyTile('ASUS ROG MAXIMUS XI FORMULA - 90000LKR','SG001'),
      new MyTile('ASUS ROG STRIX Z390-E GAMING - 50000LKR','SG002'),
    ],
  ),
  new MyTile(
    'CASINGS',
    'CS',
    <MyTile>[
      new MyTile('ASUS ROG MAXIMUS XI FORMULA - 90000LKR','CS001'),
      new MyTile('ASUS ROG STRIX Z390-E GAMING - 50000LKR','CS002'),
    ],
  ),
];