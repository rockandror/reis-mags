# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([
  #user
  { email: "user@suspender.com",  role: :user, password: "qwer1234", password_confirmation: "qwer1234"},

  #Admins
  { email: "admin@suspender.com", role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
])

Street.create!([
  #street
  { name: "VERGE DEL REFUGI", position: 10 },
  { name: "XALET", position: 20 },
  { name: "SANT VICENÇ FERRER", position: 30 },
  { name: "PLAÇA DE LA VILA (AJUNTAMENT)", position: 40 },
  { name: "PLAÇA NOVA", position: 50 },
  { name: "RECTORIA", position: 60 },
  { name: "CAMPANAR", position: 70 },
  { name: "PETIT", position: 80 },
  { name: "CAN ROS", position: 90 },
  { name: "ALEXANDRE ROSSELLO", position: 100 },
  { name: "RETAT", position: 110 },
  { name: "CAMP ROIG", position: 120 },
  { name: "PINTAT", position: 130 },
  { name: "AVDA. CONSTITUCIÓ I     (1-40)", position: 140 },
  { name: "GERMANS PERELLO", position: 150 },
  { name: "PLAÇA DEL ROSARI", position: 151 },
  { name: "TOCADO", position: 160 },
  { name: "BARBUT", position: 170 },
  { name: "SANT BARTOMEU", position: 180 },
  { name: "CLADERA, CAN", position: 190 },
  { name: "SON SANT JOAN", position: 191 },
  { name: "PERE ROSSELLO I OLIVER, BATLE", position: 200 },
  { name: "SON AMENGUAL", position: 210 },
  { name: "PLAÇA DEL TREN", position: 220 },
  { name: "S´HORT DEN TAPI", position: 230 },
  { name: "FONOLL", position: 240 },
  { name: "LLORENÇ ROSSELLO, ESCULTOR", position: 250 },
  { name: "ANTONI MARIA ALCOVER, FILOLEG", position: 260 },
  { name: "CAMI DEL CAMP ROIG D´ABAIX", position: 270 },
  { name: "AVDA. CONSTITUCIÓ II    (41- 150)", position: 280 },
  { name: "JOAN ROSSELLO DE SON FORTEZA, ESCRIPTOR", position: 290 },
  { name: "GOMEZ ULLA, METGE", position: 300 },
  { name: "JOAN MIR, ERMITA", position: 320 },
  { name: "ALEXANDRE FLEMING, METGE", position: 330 },
  { name: "MIQUEL COSTA I LLOBERA", position: 340 },
  { name: "PERE SAMPOL DE SON CURT, ERUDIT", position: 350 },
  { name: "BARTOMEU GUASP, LITERAT", position: 360 },
  { name: "JOAN ALCOVER, ESCRIPTOR", position: 370 },
  { name: "MANYOLES", position: 380 },
  { name: "SOLLERIC", position: 390 },
  { name: "PUIG DE SA COMUNA", position: 400 },
  { name: "PONTARRÓ", position: 410 },
  { name: "CAMI DE SES BARRERES", position: 420 },
  { name: "SON TUGORES", position: 421 },
  { name: "JAUME COLOM, METGE", position: 430 },
  { name: "BLANCA DE SON PENYAFLOR", position: 431 },
  { name: "SANT ROC", position: 440 },
  { name: "PLAÇA DES MERCAT", position: 441 },
  { name: "GERRERIA", position: 450 },
  { name: "SON SITGES", position: 460 },
  { name: "SIQUIA", position: 470 },
  { name: "ENMIG", position: 480 },
  { name: "NOU", position: 490 },
  { name: "COXETI, CAN", position: 491 },
  { name: "PLAÇA CABRIT I BASSA", position: 500 },
  { name: "QUARTER", position: 501 },
  { name: "PLAÇA DE SES ROTES", position: 502 },
  { name: "PUJOL", position: 510 },
  { name: "POUADOR", position: 520 },
  { name: "SON RAFALET", position: 530 },
  { name: "CA NA FARA", position: 540 },
  { name: "PLAÇA DELS HORTS", position: 550 },
  { name: "TORRENT DE S´ESTRET", position: 551 },
  { name: "CAN CRESTA", position: 560 },
  { name: "SON DURAN", position: 570 },
  { name: "SON BORRAS", position: 580 },
  { name: "SON ROS", position: 590 },
  { name: "SON MUNTANER", position: 600 },
  { name: "TIA RIOG, CAN", position: 610 },
  { name: "SA BASTIDA", position: 620 },
  { name: "CAMI DE VELA", position: 621 },
  { name: "PORROSSAR", position: 640 },
  { name: "GERMA JULIO DE LA SALLE", position: 650 },
  { name: "PALOU, CAN", position: 660 },
  { name: "SON ANTELM", position: 670 }
])

Edition.create!([
  { name: "Reis Mags Alaró 2017" }
])

Gift.create!([
 { name: "Joan", street_number: "1", street_id: 1, edition_id: 1 },
 { name: "Feliu", street_number: "2", street_id: 1, edition_id: 1 },
 { name: "Bartomeu", street_number: "3", street_id: 1, edition_id: 1 },

 { name: "Tofol", street_number: "1", street_id: 2, edition_id: 1 },
 { name: "Andreu", street_number: "2", street_id: 2, edition_id: 1 },
 { name: "Ana", street_number: "3", street_id: 2, edition_id: 1 }, 
])
