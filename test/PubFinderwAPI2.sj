

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    // --- DATA and API KEYS ---
   const mapsApiKey = "AIzaSyDSzDA6LCEpatRQd6wY-jwwnKTpD3xjLVo"; 
    const geocodeApiKey = "AIzaSyDSzDA6LCEpatRQd6wY-jwwnKTpD3xjLVo"; 
    
   const pubData = [{
    outlet_local_id:1057,outlet_name:"The Foley",outlet_address_street_1:"106 Hare Ln",outlet_address_city:"Claygate",outlet_address_postalcode:"KT10 0LZ",outlet_address_location_lat:51.3597868,outlet_address_location_lon:-.3450963,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1117,outlet_name:"Alexander Pope",outlet_address_street_1:"Cross Deep",outlet_address_city:"Twickenham",outlet_address_postalcode:"TW1 4RB",outlet_address_location_lat:51.44047,outlet_address_location_lon:-.33269,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1087,outlet_name:"Lamb Tavern",outlet_address_street_1:"10-12 Leadenhall Market",outlet_address_city:"London",outlet_address_postalcode:"EC3V 1LR",outlet_address_location_lat:51.5128772,outlet_address_location_lon:-.0833185,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1608,outlet_name:"The Crown",outlet_address_street_1:"223 Grove Road",outlet_address_city:"London",outlet_address_postalcode:"E3 5SN",outlet_address_location_lat:51.5329,outlet_address_location_lon:-.04166,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1058,outlet_name:"Founder's Arms",outlet_address_street_1:"52 Hopton Street",outlet_address_city:"London",outlet_address_postalcode:"SE1 9JH",outlet_address_location_lat:51.5085187,outlet_address_location_lon:-.1015827,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1637,outlet_name:"Leman Street Tavern",outlet_address_street_1:"31 Leman Street",outlet_address_city:"London",outlet_address_postalcode:"E1 8PT",outlet_address_location_lat:51.5137562,outlet_address_location_lon:-.070356,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1634,outlet_name:"Owl & Pussycat",outlet_address_street_1:"34 Redchurch St",outlet_address_city:"Shoreditch",outlet_address_postalcode:"E2 7DP",outlet_address_location_lat:51.5242966,outlet_address_location_lon:-.075487,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1264,outlet_name:"Royal Oak",outlet_address_street_1:"73 Columbia Rd",outlet_address_city:"London",outlet_address_postalcode:"E2 7RG",outlet_address_location_lat:51.52955,outlet_address_location_lon:-.06928,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1215,outlet_name:"The Paternoster",outlet_address_street_1:"2-4 Queens Head Passage",outlet_address_city:"Paternoster Square",outlet_address_postalcode:"EC4M 7DZ",outlet_address_location_lat:51.5150893,outlet_address_location_lon:-.0984456,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1629,outlet_name:"Oyster Shed",outlet_address_street_1:"1 Angel Lane",outlet_address_city:"London",outlet_address_postalcode:"EC4R 3AB",outlet_address_location_lat:51.5091001,outlet_address_location_lon:-.0897135,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:2006,outlet_name:"Dirty Dicks",outlet_address_street_1:"202 Bishopsgate",outlet_address_city:"London",outlet_address_postalcode:"EC2M 4NR",outlet_address_location_lat:51.518,outlet_address_location_lon:-.07941,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1626,outlet_name:"The Cow",outlet_address_street_1:"4 Chestnut Plaza",outlet_address_city:"Montfichet Road",outlet_address_postalcode:"E20 1GL",outlet_address_location_lat:51.542299,outlet_address_location_lon:-.007889,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1161,outlet_name:"Bunch of Grapes",outlet_address_street_1:"2 St Thomas St",outlet_address_city:"London",outlet_address_postalcode:"SE1 9RS",outlet_address_location_lat:51.50497,outlet_address_location_lon:-.08915,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1037,outlet_name:"The Coborn",outlet_address_street_1:"8 Coborn Road Bow",outlet_address_city:"London",outlet_address_postalcode:"E3 2DA",outlet_address_location_lat:51.52701,outlet_address_location_lon:-.03002,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1297,outlet_name:"The Candlemaker",outlet_address_street_1:"The Walbrook Building",outlet_address_city:"99 Cannon Street",outlet_address_postalcode:"EC4N 5AE",outlet_address_location_lat:51.5120678,outlet_address_location_lon:-.0902187,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1630,outlet_name:"The Grocer",outlet_address_street_1:"4 Crispin Pl",outlet_address_city:"London",outlet_address_postalcode:"E1 6DW",outlet_address_location_lat:51.5201333,outlet_address_location_lon:-.0761222,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1078,outlet_name:"Hope & Anchor",outlet_address_street_1:"123 Acre Lane",outlet_address_city:"Brixton",outlet_address_postalcode:"SW2 5UA",outlet_address_location_lat:51.45959,outlet_address_location_lon:-.12668,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1247,outlet_name:"The Porchester",outlet_address_street_1:"88 Bishop's Bridge Rd",outlet_address_city:"Bayswater",outlet_address_postalcode:"W2 5AA",outlet_address_location_lat:51.5161425,outlet_address_location_lon:-.1877597,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1211,outlet_name:"The Wheatsheaf",outlet_address_street_1:"6 Stoney St",outlet_address_city:"Borough",outlet_address_postalcode:"SE1 9AA",outlet_address_location_lat:51.5051503,outlet_address_location_lon:-.0910373,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1146,outlet_name:"Trinity Arms",outlet_address_street_1:"45 Trinity Gardens",outlet_address_city:"Brixton",outlet_address_postalcode:"SW9 8DR",outlet_address_location_lat:51.46177,outlet_address_location_lon:-.11929,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1320,outlet_name:"Cherry Tree",outlet_address_street_1:"31-33 Grove Vale",outlet_address_city:"East Dulwich",outlet_address_postalcode:"SE228EQ",outlet_address_location_lat:51.46158,outlet_address_location_lon:-.07906,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1272,outlet_name:"White Bear",outlet_address_street_1:"138 Kennington Park Road",outlet_address_city:"Kennington",outlet_address_postalcode:"SE11 4DJ",outlet_address_location_lat:51.4867886,outlet_address_location_lon:-.1078144,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1279,outlet_name:"Old Brewery",outlet_address_street_1:"The Pepys Building, The Old Royal Naval College",outlet_address_city:"Greenwich",outlet_address_postalcode:"SE10 9NN",outlet_address_location_lat:51.4827142,outlet_address_location_lon:-.0066964,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1324,outlet_name:"Old Manor",outlet_address_street_1:"Wyllyotts Place, Darkes Ln",outlet_address_city:"Potters Bar",outlet_address_postalcode:"EN6 2JD",outlet_address_location_lat:51.6959831,outlet_address_location_lon:-.1928421,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1126,outlet_name:"Richard The First",outlet_address_street_1:"52/54 Royal Hill",outlet_address_city:"Greenwich",outlet_address_postalcode:"SE10 8RT",outlet_address_location_lat:51.47656,outlet_address_location_lon:-.00963,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1056,outlet_name:"The Flask",outlet_address_street_1:"14 Flask Walk",outlet_address_city:"Hampstead",outlet_address_postalcode:"NW3 1HE",outlet_address_location_lat:51.55659,outlet_address_location_lon:-.17734,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1329,outlet_name:"Village Inn",outlet_address_street_1:"122-124 Pitshanger Ln",outlet_address_city:"Ealing",outlet_address_postalcode:"W5 1QP",outlet_address_location_lat:51.52647,outlet_address_location_lon:-.31275,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1236,outlet_name:"The Grange",outlet_address_street_1:"Warwick Rd",outlet_address_city:"Ealing",outlet_address_postalcode:"W5 3XH",outlet_address_location_lat:51.5083,outlet_address_location_lon:-.29615,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1263,outlet_name:"New Inn",outlet_address_street_1:"62 Saint Mary's Rd",outlet_address_city:"Ealing",outlet_address_postalcode:"W5 5EX",outlet_address_location_lat:51.50504,outlet_address_location_lon:-.30568,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1226,outlet_name:"The Riverside",outlet_address_street_1:"5 Saint George Wharf",outlet_address_city:"Hamilton House",outlet_address_postalcode:"SW8 2LE",outlet_address_location_lat:51.4857123,outlet_address_location_lon:-.1269905,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1321,outlet_name:"Coach & Horses",outlet_address_street_1:"5B Greenwich Market",outlet_address_city:"Greenwich",outlet_address_postalcode:"SE10 9HZ",outlet_address_location_lat:51.4812638,outlet_address_location_lon:-.0091349,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1615,outlet_name:"Fentiman Arms",outlet_address_street_1:"64 Fentiman Road",outlet_address_city:"Oval",outlet_address_postalcode:"SW8 1LA",outlet_address_location_lat:51.4810042,outlet_address_location_lon:-.118221,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1280,outlet_name:"The Woolpack",outlet_address_street_1:"98 Bermondsey Street",outlet_address_city:"London Bridge",outlet_address_postalcode:"SE1 3UB",outlet_address_location_lat:51.5007585,outlet_address_location_lon:-.0819758,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1614,outlet_name:"The Elgin",outlet_address_street_1:"96 Ladbroke Grove",outlet_address_city:"Notting Hill",outlet_address_postalcode:"W11 1PY",outlet_address_location_lat:51.5162316,outlet_address_location_lon:-.2088872,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1244,outlet_name:"The Beaufort",outlet_address_street_1:"2 Heritage Ave",outlet_address_city:"Grahame Park Way",outlet_address_postalcode:"NW9 5AA",outlet_address_location_lat:51.5965445,outlet_address_location_lon:-.2429272,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1604,outlet_name:"The Bull",outlet_address_street_1:"Ariel Way",outlet_address_city:"Westfield Shopping Centre",outlet_address_postalcode:"W12 7GF",outlet_address_location_lat:51.5072135,outlet_address_location_lon:-.2211747,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:2007,outlet_name:"Duke of Wellington",outlet_address_street_1:"179 Portobello Rd",outlet_address_city:"Notting Hill",outlet_address_postalcode:"W11 2ED",outlet_address_location_lat:51.5151785,outlet_address_location_lon:-.2047727,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1616,outlet_name:"King's Head",outlet_address_street_1:"1 The Green",outlet_address_city:"Winchmore Hill",outlet_address_postalcode:"N21 1BB",outlet_address_location_lat:51.6346751,outlet_address_location_lon:-.1032572,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1246,outlet_name:"The Mitre",outlet_address_street_1:"24 Craven Terrace",outlet_address_city:"Lancaster Gate",outlet_address_postalcode:"W2 3QH",outlet_address_location_lat:51.5123789,outlet_address_location_lon:-.178404,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1322,outlet_name:"Lockhouse",outlet_address_street_1:"3 Merchant Square",outlet_address_city:"Paddington",outlet_address_postalcode:"W2 1JZ",outlet_address_location_lat:51.51889,outlet_address_location_lon:-.17223,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:2020,outlet_name:"The Queens",outlet_address_street_1:"49 Regent's Park Rd",outlet_address_city:"Primrose Hill",outlet_address_postalcode:"NW1 8XD",outlet_address_location_lat:51.54057,outlet_address_location_lon:-.15769,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1237,outlet_name:"Prince Alfred",outlet_address_street_1:"5A Formosa St",outlet_address_city:"Maida Vale",outlet_address_postalcode:"W9 1EE",outlet_address_location_lat:51.5244491,outlet_address_location_lon:-.1848976,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1256,outlet_name:"The Roebuck",outlet_address_street_1:"15 Pond St",outlet_address_city:"Hampstead",outlet_address_postalcode:"NW3 2PN",outlet_address_location_lat:51.5538,outlet_address_location_lon:-.16751,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1002,outlet_name:"The Albert",outlet_address_street_1:"57 Kingston Hill",outlet_address_city:"Norbiton",outlet_address_postalcode:"KT2 7PX",outlet_address_location_lat:51.41622,outlet_address_location_lon:-.28397,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1261,outlet_name:"Cutty Sark",outlet_address_street_1:"4-6 Ballast Quay",outlet_address_city:"Greenwich",outlet_address_postalcode:"SE10 9PD",outlet_address_location_lat:51.4863589,outlet_address_location_lon:-.0004965,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1096,outlet_name:"Morpeth Arms",outlet_address_street_1:"58 Millbank",outlet_address_city:"Westminister",outlet_address_postalcode:"SW1P 4RW",outlet_address_location_lat:51.48938,outlet_address_location_lon:-.12866,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1009,outlet_name:"The Bishop",outlet_address_street_1:"2 Bishop's Hall, Off Thames Street",outlet_address_city:"Kingston-upon-Thames",outlet_address_postalcode:"KT1 1PY",outlet_address_location_lat:51.41058,outlet_address_location_lon:-.30768,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1030,outlet_name:"The Castle",outlet_address_street_1:"38 High Street",outlet_address_city:"Tooting",outlet_address_postalcode:"SW17 0RG",outlet_address_location_lat:51.4285583,outlet_address_location_lon:-.1681693,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1042,outlet_name:"Crooked Billet",outlet_address_street_1:"15 Crooked Billet",outlet_address_city:"Wimbledon",outlet_address_postalcode:"SW19 4RQ",outlet_address_location_lat:51.42144,outlet_address_location_lon:-.22776,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1067,outlet_name:"Green Man",outlet_address_street_1:"Wildcroft Rd",outlet_address_city:"Putney",outlet_address_postalcode:"SW15 3NG",outlet_address_location_lat:51.4532156,outlet_address_location_lon:-.2224152,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1259,outlet_name:"King's Head",outlet_address_street_1:"1 Roehampton High St",outlet_address_city:"Roehampton",outlet_address_postalcode:"SW15 4HL",outlet_address_location_lat:51.45026,outlet_address_location_lon:-.24076,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1632,outlet_name:"Trafalgar Arms",outlet_address_street_1:"148-156 Tooting High Street",outlet_address_city:"Tooting",outlet_address_postalcode:"SW17 0RT",outlet_address_location_lat:51.4251684,outlet_address_location_lon:-.171214,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1140,outlet_name:"Spring Grove",outlet_address_street_1:"13 Bloomfield Road",outlet_address_city:"Kingston Upon Thames",outlet_address_postalcode:"KT1 2SF",outlet_address_location_lat:51.4033753,outlet_address_location_lon:-.2995079,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1149,outlet_name:"The Victoria",outlet_address_street_1:"28 Victoria Road",outlet_address_city:"Surbiton",outlet_address_postalcode:"KT6 4JT",outlet_address_location_lat:51.39217,outlet_address_location_lon:-.30703,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1239,outlet_name:"Fire Stables",outlet_address_street_1:"27-29 Church Road",outlet_address_city:"Wimbledon",outlet_address_postalcode:"SW19 5DQ",outlet_address_location_lat:51.42612,outlet_address_location_lon:-.21726,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1073,outlet_name:"Halfway House",outlet_address_street_1:"521 Garratt Lane",outlet_address_city:"Earlsfield",outlet_address_postalcode:"SW18 4SR",outlet_address_location_lat:51.44169,outlet_address_location_lon:-.18736,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1074,outlet_name:"Hand in Hand",outlet_address_street_1:"6 Crooked Billet",outlet_address_city:"Wimbledon Common",outlet_address_postalcode:"SW19 4RQ",outlet_address_location_lat:51.42158,outlet_address_location_lon:-.22721,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1069,outlet_name:"The Greyhound",outlet_address_street_1:"2 High Street",outlet_address_city:"Carshalton",outlet_address_postalcode:"SM5 3PE",outlet_address_location_lat:51.3649652,outlet_address_location_lon:-.1644969,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1053,outlet_name:"Duke's Head",outlet_address_street_1:"6 Manor Road",outlet_address_city:"Wallington",outlet_address_postalcode:"SM6 0AA",outlet_address_location_lat:51.366718,outlet_address_location_lon:-.1538093,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1088,outlet_name:"Leather Bottle",outlet_address_street_1:"538 Garratt Lane",outlet_address_city:"Earlsfield",outlet_address_postalcode:"SW17 0NY",outlet_address_location_lat:51.43686,outlet_address_location_lon:-.18709,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1045,outlet_name:"Crown Tavern",outlet_address_street_1:"117 Burnt Ash Hill",outlet_address_city:"Lee",outlet_address_postalcode:"SE12 0AJ",outlet_address_location_lat:51.4436781,outlet_address_location_lon:.0178217,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1022,outlet_name:"Bull's Head",outlet_address_street_1:"Royal Parade",outlet_address_city:"Chislehurst",outlet_address_postalcode:"BR7 6NR",outlet_address_location_lat:51.41179,outlet_address_location_lon:.07553,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1267,outlet_name:"The Depot",outlet_address_street_1:"7 Pegler Square",outlet_address_city:"Kidbrooke",outlet_address_postalcode:"SE3 9FW",outlet_address_location_lat:51.46194,outlet_address_location_lon:.02649,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1317,outlet_name:"Bickley Arms",outlet_address_street_1:"Chislehurst Road",outlet_address_city:"Chislehurst",outlet_address_postalcode:"BR7 5NP",outlet_address_location_lat:51.40741,outlet_address_location_lon:.05588,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1327,outlet_name:"The Station",outlet_address_street_1:"14 Staplehurst Road",outlet_address_city:"Hither Green",outlet_address_postalcode:"SE13 5NB",outlet_address_location_lat:51.4530705,outlet_address_location_lon:-.00294,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1255,outlet_name:"Dial Arch",outlet_address_street_1:"Riverside, No 1 Street",outlet_address_city:"The Warren Royal Arsenal",outlet_address_postalcode:"SE18 6GH",outlet_address_location_lat:51.49256,outlet_address_location_lon:.06996,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1054,outlet_name:"Wood House",outlet_address_street_1:"39 Sydenham Hill",outlet_address_city:"Dulwich",outlet_address_postalcode:"SE26 6RS",outlet_address_location_lat:51.4328634,outlet_address_location_lon:-.0726499,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1636,outlet_name:"Guard House",outlet_address_street_1:"No 1 Street",outlet_address_city:"Woolwich",outlet_address_postalcode:"SE18 6GH",outlet_address_location_lat:51.49254,outlet_address_location_lon:.06949,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1003,outlet_name:"The Alexandra",outlet_address_street_1:"33 Wimbledon Hill Road",outlet_address_city:"Wimbledon",outlet_address_postalcode:"SW19 7NE",outlet_address_location_lat:51.42204,outlet_address_location_lon:-.20805,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1250,outlet_name:"The Albion",outlet_address_street_1:"2-3 New Bridge St",outlet_address_city:"London",outlet_address_postalcode:"EC4V 6AA",outlet_address_location_lat:51.5139068,outlet_address_location_lon:-.1045806,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1018,outlet_name:"Buckingham Arms",outlet_address_street_1:"62 Petty France",outlet_address_city:"Westminster",outlet_address_postalcode:"SW1H 9EU",outlet_address_location_lat:51.49918,outlet_address_location_lon:-.13682,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1601,outlet_name:"Adam and Eve",outlet_address_street_1:"77a Wells Street",outlet_address_city:"Fitzrovia",outlet_address_postalcode:"W1T 3QQ",outlet_address_location_lat:51.51651,outlet_address_location_lon:-.13732,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1173,outlet_name:"Finch's",outlet_address_street_1:"12a Finsbury Square",outlet_address_city:"City of London",outlet_address_postalcode:"EC2A 1AN",outlet_address_location_lat:51.52173,outlet_address_location_lon:-.08736,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1093,outlet_name:"Marquess of Anglesey",outlet_address_street_1:"39 Bow Street",outlet_address_city:"Covent Garden",outlet_address_postalcode:"WC2E 7AU",outlet_address_location_lat:51.51283,outlet_address_location_lon:-.12127,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1071,outlet_name:"Guinea Grill",outlet_address_street_1:"30 Bruton Place",outlet_address_city:"Mayfair",outlet_address_postalcode:"W1J 6NL",outlet_address_location_lat:51.51109,outlet_address_location_lon:-.145,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1148,outlet_name:"Mulberry Bush",outlet_address_street_1:"89 Upper Ground",outlet_address_city:"Lambeth",outlet_address_postalcode:"SE1 9PP",outlet_address_location_lat:51.50714,outlet_address_location_lon:-.11023,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1086,outlet_name:"The Lamb",outlet_address_street_1:"94 Lamb's Conduit Street",outlet_address_city:"Bloomsbury",outlet_address_postalcode:"WC1N 3LZ",outlet_address_location_lat:51.5231,outlet_address_location_lon:-.11902,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1606,outlet_name:"The Clarence",outlet_address_street_1:"53 Whitehall",outlet_address_city:"Westminster",outlet_address_postalcode:"SW1A 2HP",outlet_address_location_lat:51.5061672,outlet_address_location_lon:-.1267396,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1325,outlet_name:"Old Shades",outlet_address_street_1:"37 Whitehall",outlet_address_city:"Westminster",outlet_address_postalcode:"SW1A 2BX",outlet_address_location_lat:51.50647,outlet_address_location_lon:-.12697,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1157,outlet_name:"Windmill",outlet_address_street_1:"6-8 Mill Street",outlet_address_city:"Mayfair",outlet_address_postalcode:"W1S 2AZ",outlet_address_location_lat:51.51241,outlet_address_location_lon:-.14226,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:2016,outlet_name:"One Tun",outlet_address_street_1:"58-60 Goodge Street",outlet_address_city:"Fitzrovia",outlet_address_postalcode:"W1T 4ND",outlet_address_location_lat:51.51916,outlet_address_location_lon:-.13684,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1298,outlet_name:"Smiths of Smithfield",outlet_address_street_1:"67-77 Charterhouse St",outlet_address_city:"Farringdon",outlet_address_postalcode:"EC1M 6HJ",outlet_address_location_lat:51.51952,outlet_address_location_lon:-.10276,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1328,outlet_name:"Theodore Bullfrog",outlet_address_street_1:"26-30 John Adam St",outlet_address_city:"Westminster",outlet_address_postalcode:"WC2N 6HL",outlet_address_location_lat:51.50884,outlet_address_location_lon:-.12396,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1622,outlet_name:"The Phoenix",outlet_address_street_1:"14 Palace St",outlet_address_city:"Victoria",outlet_address_postalcode:"SW1E 5JA",outlet_address_location_lat:51.49869,outlet_address_location_lon:-.14208,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1313,outlet_name:"The Bear",outlet_address_street_1:"River Hill",outlet_address_city:"Cobham",outlet_address_postalcode:"KT11 3DX",outlet_address_location_lat:51.32692,outlet_address_location_lon:-.40927,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1142,outlet_name:"The Swan",outlet_address_street_1:"50 Manor Rd",outlet_address_city:"Walton-on-Thames",outlet_address_postalcode:"KT12 2PF",outlet_address_location_lat:51.3896585,outlet_address_location_lon:-.4221305,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1007,outlet_name:"The Bear",outlet_address_street_1:"Leatherhead Rd",outlet_address_city:"Oxshott",outlet_address_postalcode:"KT22 0JE",outlet_address_location_lat:51.32817,outlet_address_location_lon:-.35484,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1238,outlet_name:"Crown & Anchor",outlet_address_street_1:"Dell Quay Road",outlet_address_city:"Apuldram",outlet_address_postalcode:"PO20 7EE",outlet_address_location_lat:50.8192,outlet_address_location_lon:-.81513,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1035,outlet_name:"The Chequers",outlet_address_street_1:"Chequers Lane",outlet_address_city:"Walton-on-the-Hill",outlet_address_postalcode:"KT20 7SF",outlet_address_location_lat:51.28086,outlet_address_location_lon:-.24926,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1338,outlet_name:"Onslow Arms",outlet_address_street_1:"The St",outlet_address_city:"West Clandon",outlet_address_postalcode:"GU4 7TE",outlet_address_location_lat:51.26111,outlet_address_location_lon:-.50333,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1311,outlet_name:"The Bridge",outlet_address_street_1:"Chertsey Bridge Rd",outlet_address_city:"Chertsey",outlet_address_postalcode:"KT16 8JZ",outlet_address_location_lat:51.3893069,outlet_address_location_lon:-.4894653,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1337,outlet_name:"Grantley Arms",outlet_address_street_1:"The St",outlet_address_city:"Wonersh",outlet_address_postalcode:"GU5 0PE",outlet_address_location_lat:51.19722,outlet_address_location_lon:-.54632,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1339,outlet_name:"The Wheatsheaf",outlet_address_street_1:"40 Esher Green",outlet_address_city:"Esher",outlet_address_postalcode:"KT10 8AG",outlet_address_location_lat:51.3716,outlet_address_location_lon:-.36652,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1335,outlet_name:"Canbury Arms",outlet_address_street_1:"49 Canbury Park Rd",outlet_address_city:"Kingston-upon-Thames",outlet_address_postalcode:"KT2 6LQ",outlet_address_location_lat:51.41329,outlet_address_location_lon:-.29663,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1336,outlet_name:"The Crown",outlet_address_street_1:"174 Richmond Road",outlet_address_city:"Twickenham",outlet_address_postalcode:"TW1 2NH",outlet_address_location_lat:51.45124,outlet_address_location_lon:-.31864,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1268,outlet_name:"The Weyside",outlet_address_street_1:"Milbrook",outlet_address_city:"Guildford",outlet_address_postalcode:"GU1 3XJ",outlet_address_location_lat:51.23154,outlet_address_location_lon:-.5728,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1258,outlet_name:"Lass O'Richmond Hill",outlet_address_street_1:"8 Queens Road",outlet_address_city:"Richmond",outlet_address_postalcode:"TW10 6JJ",outlet_address_location_lat:51.45155,outlet_address_location_lon:-.29546,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1075,outlet_name:"Hare & Hounds",outlet_address_street_1:"214-216 Upper Richmond Road",outlet_address_city:"East Sheen",outlet_address_postalcode:"SW14 8AH",outlet_address_location_lat:51.4649835,outlet_address_location_lon:-.2647917,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1021,outlet_name:"Bull's Head",outlet_address_street_1:"373 Lonsdale Road",outlet_address_city:"Barnes",outlet_address_postalcode:"SW13 9PY",outlet_address_location_lat:51.4737891,outlet_address_location_lon:-.2510368,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1154,outlet_name:"White Hart",outlet_address_street_1:"The Terrace",outlet_address_city:"Riverside",outlet_address_postalcode:"SW13 0NR",outlet_address_location_lat:51.471038,outlet_address_location_lon:-.2556664,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1023,outlet_name:"Coach & Horses",outlet_address_street_1:"27 Barnes High Street",outlet_address_city:"Barnes",outlet_address_postalcode:"SW13 9LW",outlet_address_location_lat:51.47358,outlet_address_location_lon:-.25004,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1609,outlet_name:"Curtains Up",outlet_address_street_1:"28A Comeragh Rd",outlet_address_city:"Barons Court",outlet_address_postalcode:"W14 9HR",outlet_address_location_lat:51.4893651,outlet_address_location_lon:-.2095003,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1019,outlet_name:"Hammersmith Ram",outlet_address_street_1:"81 King Street",outlet_address_city:"Hammersmith",outlet_address_postalcode:"W6 9HW",outlet_address_location_lat:51.4924778,outlet_address_location_lon:-.2283331,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1133,outlet_name:"The Shaftesbury",outlet_address_street_1:"121-123 Kew Road",outlet_address_city:"Richmond",outlet_address_postalcode:"TW9 2PN",outlet_address_location_lat:51.4656,outlet_address_location_lon:-.29917,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1024,outlet_name:"Coach & Horses",outlet_address_street_1:"183 London Road",outlet_address_city:"Isleworth",outlet_address_postalcode:"TW7 5BQ",outlet_address_location_lat:51.4794798,outlet_address_location_lon:-.3201343,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1249,outlet_name:"The Marlborough",outlet_address_street_1:"46 Friars Stile Road",outlet_address_city:"Richmond",outlet_address_postalcode:"TW10 6NQ",outlet_address_location_lat:51.45525,outlet_address_location_lon:-.29675,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1153,outlet_name:"White Cross",outlet_address_street_1:"Riverside (off Water Lane)",outlet_address_city:"Richmond",outlet_address_postalcode:"TW9 1TH",outlet_address_location_lat:51.4588198,outlet_address_location_lon:-.3078455,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1254,outlet_name:"Old Ship",outlet_address_street_1:"25 Upper Mall",outlet_address_city:"Hammersmith",outlet_address_postalcode:"W6 9TD",outlet_address_location_lat:51.49033,outlet_address_location_lon:-.239971,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1602,outlet_name:"Betjeman Arms",outlet_address_street_1:"Euston Rd",outlet_address_city:"London",outlet_address_postalcode:"N1C 4QL",outlet_address_location_lat:51.5300538,outlet_address_location_lon:-.1247433,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1612,outlet_name:"The Eagle",outlet_address_street_1:"215 Askew Road",outlet_address_city:"Shepherd's Bush",outlet_address_postalcode:"W12 9AZ",outlet_address_location_lat:51.5006,outlet_address_location_lon:-.23933,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1102,outlet_name:"Old Ship",outlet_address_street_1:"3 King St",outlet_address_city:"Richmond",outlet_address_postalcode:"TW9 1ND",outlet_address_location_lat:51.4596637,outlet_address_location_lon:-.3066563,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1262,outlet_name:"Bull & Gate",outlet_address_street_1:"389 Kentish Town Rd",outlet_address_city:"Kentish Town",outlet_address_postalcode:"NW5 2TJ",outlet_address_location_lat:51.5518618,outlet_address_location_lon:-.1415668,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1633,outlet_name:"The Fellow",outlet_address_street_1:"24 York Way",outlet_address_city:"King's Cross",outlet_address_postalcode:"N1 9AA",outlet_address_location_lat:51.53152,outlet_address_location_lon:-.12226,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1276,outlet_name:"Canonbury Tavern",outlet_address_street_1:"21 Canonbury Place",outlet_address_city:"Islington",outlet_address_postalcode:"N1 2NS",outlet_address_location_lat:51.544672,outlet_address_location_lon:-.0975853,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1610,outlet_name:"Duchess of Kent",outlet_address_street_1:"441 Liverpool Road",outlet_address_city:"Islington",outlet_address_postalcode:"N7 8PR",outlet_address_location_lat:51.54636,outlet_address_location_lon:-.10876,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1605,outlet_name:"The Castle",outlet_address_street_1:"54 Pentonville Road",outlet_address_city:"Angel",outlet_address_postalcode:"N1 9HF",outlet_address_location_lat:51.53182,outlet_address_location_lon:-.10914,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1260,outlet_name:"Narrowboat",outlet_address_street_1:"119 St Peter's Street",outlet_address_city:"Islington",outlet_address_postalcode:"N1 8PZ",outlet_address_location_lat:51.53306,outlet_address_location_lon:-.09691,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1617,outlet_name:"Lord Palmerston",outlet_address_street_1:"33 Dartmouth Park Hill",outlet_address_city:"Highgate",outlet_address_postalcode:"NW5 1HU",outlet_address_location_lat:51.55945,outlet_address_location_lon:-.14052,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1628,outlet_name:"Lion & Unicorn",outlet_address_street_1:"42-44 Gaisford Street",outlet_address_city:"Kentish Town",outlet_address_postalcode:"NW5 2ED",outlet_address_location_lat:51.54809,outlet_address_location_lon:-.1398,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1291,outlet_name:"Naturalist",outlet_address_street_1:"14 Woodberry Down",outlet_address_city:"Manor House",outlet_address_postalcode:"N4 2GB",outlet_address_location_lat:51.57118,outlet_address_location_lon:-.09256,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1269,outlet_name:"King's Head",outlet_address_street_1:"115 Upper Street",outlet_address_city:"Angel",outlet_address_postalcode:"N1 1QN",outlet_address_location_lat:51.5383183,outlet_address_location_lon:-.1026015,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1039,outlet_name:"County Arms",outlet_address_street_1:"345 Trinity Rd",outlet_address_city:"Wandsworth",outlet_address_postalcode:"SW18 3SH",outlet_address_location_lat:51.4500952,outlet_address_location_lon:-.1743971,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1051,outlet_name:"The Devonshire",outlet_address_street_1:"39 Balham High Rd",outlet_address_city:"Balham",outlet_address_postalcode:"SW12 9AN",outlet_address_location_lat:51.44688,outlet_address_location_lon:-.14899,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1111,outlet_name:"The Bull",outlet_address_street_1:"498 Streatham High Rd",outlet_address_city:"Streatham",outlet_address_postalcode:"SW16 3QB",outlet_address_location_lat:51.4194257,outlet_address_location_lon:-.1284189,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1293,outlet_name:"Station Tavern",outlet_address_street_1:"2 Station Square",outlet_address_city:"Cambridge",outlet_address_postalcode:"CB1 2GA",outlet_address_location_lat:52.19501,outlet_address_location_lon:.13763,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1216,outlet_name:"The Boathouse",outlet_address_street_1:"32 Brewhouse Ln",outlet_address_city:"Putney",outlet_address_postalcode:"SW15 2JX",outlet_address_location_lat:51.46521,outlet_address_location_lon:-.21277,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1138,outlet_name:"Spread Eagle",outlet_address_street_1:"141 Albert St",outlet_address_city:"Camden Town",outlet_address_postalcode:"NW1 7NB",outlet_address_location_lat:51.5376184,outlet_address_location_lon:-.144839,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1052,outlet_name:"Duke's Head",outlet_address_street_1:"8 Lower Richmond Rd",outlet_address_city:"Putney",outlet_address_postalcode:"SW15 1JN",outlet_address_location_lat:51.4672558,outlet_address_location_lon:-.217101,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1104,outlet_name:"Princess of Wales",outlet_address_street_1:"146 Lea Bridge Rd",outlet_address_city:"Clapton",outlet_address_postalcode:"E5 9RB",outlet_address_location_lat:51.56187,outlet_address_location_lon:-.04578,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1607,outlet_name:"Coat & Badge",outlet_address_street_1:"8 Lacy Rd",outlet_address_city:"Putney",outlet_address_postalcode:"SW15 1NL",outlet_address_location_lat:51.464501,outlet_address_location_lon:-.2166209,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1613,outlet_name:"East Hill",outlet_address_street_1:"21 Alma Rd",outlet_address_city:"Wandsworth",outlet_address_postalcode:"SW18 1AA",outlet_address_location_lat:51.4586861,outlet_address_location_lon:-.1857635,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1070,outlet_name:"The Grove",outlet_address_street_1:"39 Oldridge Rd",outlet_address_city:"Balham",outlet_address_postalcode:"SW12 8PN",outlet_address_location_lat:51.44848,outlet_address_location_lon:-.15102,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1618,outlet_name:"The Northcote",outlet_address_street_1:"2 Northcote Rd",outlet_address_city:"Battersea",outlet_address_postalcode:"SW11 1NT",outlet_address_location_lat:51.4607,outlet_address_location_lon:-.16717,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1098,outlet_name:"The Nightingale",outlet_address_street_1:"97 Nightingale Ln",outlet_address_city:"Balham",outlet_address_postalcode:"SW12 8NX",outlet_address_location_lat:51.45007,outlet_address_location_lon:-.15786,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1290,outlet_name:"Blue Boar",outlet_address_street_1:"1 Goddards Lane",outlet_address_city:"Chipping Norton",outlet_address_postalcode:"OX7 5NP",outlet_address_location_lat:51.94286,outlet_address_location_lon:-1.54452,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1275,outlet_name:"The Bell",outlet_address_street_1:"Park Street",outlet_address_city:"Stow on the Wold",outlet_address_postalcode:"GL54 1AJ",outlet_address_location_lat:51.9285619,outlet_address_location_lon:-1.7182993,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1119,outlet_name:"Queen Adelaide",outlet_address_street_1:"35 Putney Bridge Rd",outlet_address_city:"Wandsworth",outlet_address_postalcode:"SW18 1NP",outlet_address_location_lat:51.4598743,outlet_address_location_lon:-.199293,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1323,outlet_name:"Manor Arms",outlet_address_street_1:"13 Mitcham Ln",outlet_address_city:"Streatham",outlet_address_postalcode:"SW16 6LQ",outlet_address_location_lat:51.42809,outlet_address_location_lon:-.13236,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1072,outlet_name:"Half Moon",outlet_address_street_1:"93 Lower Richmond Rd",outlet_address_city:"Putney",outlet_address_postalcode:"SW15 1EU",outlet_address_location_lat:51.4673218,outlet_address_location_lon:-.2200089,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1137,outlet_name:"Spotted Horse",outlet_address_street_1:"122 Putney High St",outlet_address_city:"Putney",outlet_address_postalcode:"SW15 1RG",outlet_address_location_lat:51.4626469,outlet_address_location_lon:-.216396,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1084,outlet_name:"King's Arms",outlet_address_street_1:"94-96 Wandsworth High St",outlet_address_city:"Wandsworth",outlet_address_postalcode:"SW18 4LB",outlet_address_location_lat:51.4573626,outlet_address_location_lon:-.1946616,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1209,outlet_name:"City Gate",outlet_address_street_1:"1 Iron Bridge",outlet_address_city:"Exeter",outlet_address_postalcode:"EX4 3RB",outlet_address_location_lat:50.723731,outlet_address_location_lon:-3.5348336,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1296,outlet_name:"Chequers Inn",outlet_address_street_1:"Ferry Road",outlet_address_city:"Hanham Mills",outlet_address_postalcode:"BS15 3NU",outlet_address_location_lat:51.4281,outlet_address_location_lon:-2.50776,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1191,outlet_name:"Double Locks",outlet_address_street_1:"Double Locks Canal Banks",outlet_address_city:"Exeter",outlet_address_postalcode:"EX2 6LT",outlet_address_location_lat:50.7,outlet_address_location_lon:-3.51273,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1318,outlet_name:"The Boathouse",outlet_address_street_1:"Marine Parade",outlet_address_city:"Instow",outlet_address_postalcode:"EX39 4JJ",outlet_address_location_lat:51.05552,outlet_address_location_lon:-4.18088,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1114,outlet_name:"The Plough",outlet_address_street_1:"89 Saint John's Hill",outlet_address_city:"Clapham Junction",outlet_address_postalcode:"SW11 1SY",outlet_address_location_lat:51.4615902,outlet_address_location_lon:-.1732171,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1210,outlet_name:"The Grove",outlet_address_street_1:"Esplanade",outlet_address_city:"Exmouth",outlet_address_postalcode:"EX8 1BJ",outlet_address_location_lat:50.61676,outlet_address_location_lon:-3.42028,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1206,outlet_name:"Hort's Townhouse",outlet_address_street_1:"49 Broad Street",outlet_address_city:"Bristol",outlet_address_postalcode:"BS1 2EP",outlet_address_location_lat:51.45549,outlet_address_location_lon:-2.59385,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1083,outlet_name:"King's Arms",outlet_address_street_1:"40 Holywell Street",outlet_address_city:"Oxford",outlet_address_postalcode:"OX1 3SP",outlet_address_location_lat:51.75506,outlet_address_location_lon:-1.2543,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1292,outlet_name:"Riverstation",outlet_address_street_1:"The Grove",outlet_address_city:"Bristol",outlet_address_postalcode:"BS1 4RB",outlet_address_location_lat:51.44914,outlet_address_location_lon:-2.59352,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1193,outlet_name:"Highbury Vaults",outlet_address_street_1:"164 St Michaels Hill",outlet_address_city:"Bristol",outlet_address_postalcode:"BS2 8DE",outlet_address_location_lat:51.46145,outlet_address_location_lon:-2.60248,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1185,outlet_name:"Lock Keeper",outlet_address_street_1:"Keynsham Rd",outlet_address_city:"Keynsham",outlet_address_postalcode:"BS31 2DD",outlet_address_location_lat:51.4190334,outlet_address_location_lon:-2.4902716,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1212,outlet_name:"Dunstan House Inn",outlet_address_street_1:"8/10 Love Lane",outlet_address_city:"Burnham on Sea",outlet_address_postalcode:"TA8 1EU",outlet_address_location_lat:51.2382,outlet_address_location_lon:-2.99314,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1015,outlet_name:"The Britannia",outlet_address_street_1:"1 Allen St",outlet_address_city:"Kensington",outlet_address_postalcode:"W8 6UX",outlet_address_location_lat:51.49865,outlet_address_location_lon:-.19545,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1188,outlet_name:"White Hart",outlet_address_street_1:"Littleton upon severn",outlet_address_city:"Bristol",outlet_address_postalcode:"BS35 1NR",outlet_address_location_lat:51.6073424,outlet_address_location_lon:-2.5860346,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1034,outlet_name:"Chelsea Ram",outlet_address_street_1:"32 Burnaby St",outlet_address_city:"Chelsea",outlet_address_postalcode:"SW10 0PL",outlet_address_location_lat:51.47907,outlet_address_location_lon:-.18288,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1326,outlet_name:"The Seagate",outlet_address_street_1:"The Quay",outlet_address_city:"Appledore",outlet_address_postalcode:"EX39 1QS",outlet_address_location_lat:51.05349,outlet_address_location_lon:-4.19132,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1038,outlet_name:"Coopers Arms",outlet_address_street_1:"87 Flood St",outlet_address_city:"Chelsea",outlet_address_postalcode:"SW3 5TB",outlet_address_location_lat:51.4862037,outlet_address_location_lon:-.1651437,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1245,outlet_name:"Cock Tavern",outlet_address_street_1:"360 North End Rd",outlet_address_city:"Fulham",outlet_address_postalcode:"SW6 1LY",outlet_address_location_lat:51.48141,outlet_address_location_lon:-.1994,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:2012,outlet_name:"Kings Arms Chelsea",outlet_address_street_1:"190 Fulham Rd",outlet_address_city:"Chelsea",outlet_address_postalcode:"SW10 9PN",outlet_address_location_lat:51.48614,outlet_address_location_lon:-.1809,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1611,outlet_name:"Duke of Clarence",outlet_address_street_1:"148 Old Brompton Rd",outlet_address_city:"South Kensington",outlet_address_postalcode:"SW5 0BE",outlet_address_location_lat:51.49095,outlet_address_location_lon:-.18258,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1619,outlet_name:"The Phoenix",outlet_address_street_1:"23 Smith St",outlet_address_city:"Chelsea",outlet_address_postalcode:"SW3 4EE",outlet_address_location_lat:51.4886005,outlet_address_location_lon:-.1625856,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1050,outlet_name:"Duke on the Green",outlet_address_street_1:"235 New King's Rd",outlet_address_city:"Fulham",outlet_address_postalcode:"SW6 4XG",outlet_address_location_lat:51.47267,outlet_address_location_lon:-.19949,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1271,outlet_name:"Nine Elms Tavern",outlet_address_street_1:"Riverlight Quay",outlet_address_city:"Nine Elms Lane",outlet_address_postalcode:"SW11 8AY",outlet_address_location_lat:51.4824742,outlet_address_location_lon:-.1363204,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1049,outlet_name:"Duke of Cambridge",outlet_address_street_1:"228 Battersea Bridge Rd",outlet_address_city:"Battersea",outlet_address_postalcode:"SW11 3AA",outlet_address_location_lat:51.47291,outlet_address_location_lon:-.16607,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1241,outlet_name:"Hollywood Arms",outlet_address_street_1:"45 Hollywood Rd",outlet_address_city:"Chelsea",outlet_address_postalcode:"SW10 9HX",outlet_address_location_lat:51.48607,outlet_address_location_lon:-.18406,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1273,outlet_name:"The Defector's Weld",outlet_address_street_1:"170 Uxbridge Rd",outlet_address_city:"Shepherd's Bush",outlet_address_postalcode:"W12 8AA",outlet_address_location_lat:51.50528,outlet_address_location_lon:-.2244,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1620,outlet_name:"Prince Albert",outlet_address_street_1:"85 Albert Bridge Rd",outlet_address_city:"London",outlet_address_postalcode:"SW11 4PF",outlet_address_location_lat:51.47963,outlet_address_location_lon:-.16571,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1129,outlet_name:"Rose & Crown",outlet_address_street_1:"55 High St",outlet_address_city:"Wimbledon Village",outlet_address_postalcode:"SW19 5BA",outlet_address_location_lat:51.42576,outlet_address_location_lon:-.22074,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1228,outlet_name:"The Waterfront",outlet_address_street_1:"Baltimore House, Juniper Dr",outlet_address_city:"Battersea",outlet_address_postalcode:"SW18 1TS",outlet_address_location_lat:51.46416,outlet_address_location_lon:-.18546,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1004,outlet_name:"The Alma",outlet_address_street_1:"499 Old York Road",outlet_address_city:"Wandsworth",outlet_address_postalcode:"SW18 1TF",outlet_address_location_lat:51.4607401,outlet_address_location_lon:-.1874817,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1227,outlet_name:"The Waterside",outlet_address_street_1:"The Blvd",outlet_address_city:"Imperial Wharf",outlet_address_postalcode:"SW6 2SU",outlet_address_location_lat:51.47274,outlet_address_location_lon:-.18133,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1147,outlet_name:"Brewer's Inn",outlet_address_street_1:"147 East Hill",outlet_address_city:"Wandsworth",outlet_address_postalcode:"SW18 2QB",outlet_address_location_lat:51.4566902,outlet_address_location_lon:-.1894455,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1135,outlet_name:"The Ship",outlet_address_street_1:"41 Jews Row",outlet_address_city:"Wandsworth",outlet_address_postalcode:"SW18 1TB",outlet_address_location_lat:51.46351,outlet_address_location_lon:-.1881,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1047,outlet_name:"Dog & Fox",outlet_address_street_1:"24 High street",outlet_address_city:"Wimbledon Village",outlet_address_postalcode:"SW19 5EA",outlet_address_location_lat:51.42519,outlet_address_location_lon:-.21761,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1017,outlet_name:"Brook Green",outlet_address_street_1:"170 Shepherds Bush Rd",outlet_address_city:"Hammersmith",outlet_address_postalcode:"W6 7PB",outlet_address_location_lat:51.4978002,outlet_address_location_lon:-.2229787,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1270,outlet_name:"Fox & Anchor",outlet_address_street_1:"115 Charterhouse St",outlet_address_city:"Clerkenwell",outlet_address_postalcode:"EC1M 6AA",outlet_address_location_lat:51.52014,outlet_address_location_lon:-.10026,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1314,outlet_name:"The Park",outlet_address_street_1:"19 Park Road",outlet_address_city:"Teddington",outlet_address_postalcode:"TW11 0AB",outlet_address_location_lat:51.4256248,outlet_address_location_lon:-.3340456,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1156,outlet_name:"The Windmill",outlet_address_street_1:"Clapham Common South Side",outlet_address_city:"Clapham",outlet_address_postalcode:"SW4 9DE",outlet_address_location_lat:51.45756,outlet_address_location_lon:-.14422,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1103,outlet_name:"Orange Tree",outlet_address_street_1:"45 Kew Road",outlet_address_city:"Richmond",outlet_address_postalcode:"TW9 2NQ",outlet_address_location_lat:51.4642281,outlet_address_location_lon:-.3015346,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1025,outlet_name:"Coach & Horses",outlet_address_street_1:"8 Kew Green",outlet_address_city:"Kew",outlet_address_postalcode:"TW9 3BH",outlet_address_location_lat:51.4831695,outlet_address_location_lon:-.2861226,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1179,outlet_name:"Red Lion",outlet_address_street_1:"78-80 Watling Street",outlet_address_city:"Radlett",outlet_address_postalcode:"WD7 7NP",outlet_address_location_lat:51.6847313,outlet_address_location_lon:-.3179242,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1224,outlet_name:"The Bell",outlet_address_street_1:"Bell Lane",outlet_address_city:"Fetcham",outlet_address_postalcode:"KT22 9ND",outlet_address_location_lat:51.29102,outlet_address_location_lon:-.35482,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1331,outlet_name:"The Canford",outlet_address_street_1:"53 Cliff Drive, Canford Cliffs",outlet_address_city:"Poole",outlet_address_postalcode:"BH13 7JF",outlet_address_location_lat:50.7034236,outlet_address_location_lon:-1.9226035,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1319,outlet_name:"Carnarvon Arms",outlet_address_street_1:"Winchester Road",outlet_address_city:"Whitway",outlet_address_postalcode:"RG20 9LE",outlet_address_location_lat:51.33413,outlet_address_location_lon:-1.34438,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1214,outlet_name:"The Mitre",outlet_address_street_1:"23 High Street",outlet_address_city:"Shaftesbury",outlet_address_postalcode:"SP7 8JE",outlet_address_location_lat:51.0058021,outlet_address_location_lon:-2.196577,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1076,outlet_name:"Home Cottage",outlet_address_street_1:"Redstone Hill",outlet_address_city:"Redhill",outlet_address_postalcode:"RH1 4AW",outlet_address_location_lat:51.23895,outlet_address_location_lon:-.1645,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1207,outlet_name:"The Lamb",outlet_address_street_1:"Hindon",outlet_address_city:"Salisbury",outlet_address_postalcode:"SP3 6DP",outlet_address_location_lat:51.095,outlet_address_location_lon:-2.12911,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1294,outlet_name:"The Bull",outlet_address_street_1:"56 High Street",outlet_address_city:"Bracknell",outlet_address_postalcode:"RG12 1DP",outlet_address_location_lat:51.4169444,outlet_address_location_lon:-.7507156,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1225,outlet_name:"Penny Black",outlet_address_street_1:"5 North Street",outlet_address_city:"Leatherhead",outlet_address_postalcode:"KT22 7AX",outlet_address_location_lat:51.29551,outlet_address_location_lon:-.33012,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1234,outlet_name:"Hand & Spear",outlet_address_street_1:"Old Heath Road",outlet_address_city:"Weybridge",outlet_address_postalcode:"KT13 8TX",outlet_address_location_lat:51.36275,outlet_address_location_lon:-.45884,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1333,outlet_name:"White Bear",outlet_address_street_1:"84 High St",outlet_address_city:"Royal Tunbridge Wells",outlet_address_postalcode:"TN1 1YB",outlet_address_location_lat:51.1275817,outlet_address_location_lon:.2605573,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1621,outlet_name:"Red Barn",outlet_address_street_1:"Tandridge Lane",outlet_address_city:"Blindley Heath",outlet_address_postalcode:"RH7 6LL",outlet_address_location_lat:51.18979,outlet_address_location_lon:-.04037,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1221,outlet_name:"White Hart",outlet_address_street_1:"Reading Road",outlet_address_city:"Sherfield-on-Loddon",outlet_address_postalcode:"RG27 0BT",outlet_address_location_lat:51.31724,outlet_address_location_lon:-1.02483,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1330,outlet_name:"Worplesdon Place",outlet_address_street_1:"Perry Hill",outlet_address_city:"Worplesdon",outlet_address_postalcode:"GU33RY",outlet_address_location_lat:51.2747168,outlet_address_location_lon:-.6082025,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1006,outlet_name:"The Bear",outlet_address_street_1:"71 High St",outlet_address_city:"Esher",outlet_address_postalcode:"KT10 9RQ",outlet_address_location_lat:51.3692784,outlet_address_location_lon:-.3650277,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1044,outlet_name:"The Crown",outlet_address_street_1:"7 London Street",outlet_address_city:"Chertsey",outlet_address_postalcode:"KT16 8AP",outlet_address_location_lat:51.3921165,outlet_address_location_lon:-.5027686,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:2660,outlet_name:"Grand Junction Arms",outlet_address_street_1:"Acton Ln",outlet_address_city:"Canal Bridge",outlet_address_postalcode:"NW10 7AD",outlet_address_location_lat:51.5340471,outlet_address_location_lon:-.2608159,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1341,outlet_name:"The Bull",outlet_address_street_1:"9 High St",outlet_address_city:"Ditchling",outlet_address_postalcode:"BN6 8SY",outlet_address_location_lat:50.9209922,outlet_address_location_lon:-.1143511,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1342,outlet_name:"Pheasant Inn",outlet_address_street_1:"Ermin St",outlet_address_city:"Hungerford",outlet_address_postalcode:"RG17 7AA",outlet_address_location_lat:51.4581139,outlet_address_location_lon:-1.4802549,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1340,outlet_name:"Alban's Well",outlet_address_street_1:"55-57 Saint Peter's St",outlet_address_city:"St Albans",outlet_address_postalcode:"AL1 3LP",outlet_address_location_lat:51.7537132,outlet_address_location_lon:-.3375161,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1346,outlet_name:"The Crown",outlet_address_street_1:"High St",outlet_address_city:"Minchinhampton",outlet_address_postalcode:"GL6 9BN",outlet_address_location_lat:51.7054003,outlet_address_location_lon:-2.1864619,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1347,outlet_name:"Hollow Bottom",outlet_address_street_1:"The Hollow Bottom",outlet_address_city:"Guiting Power",outlet_address_postalcode:"GL54 5UX",outlet_address_location_lat:51.9230673,outlet_address_location_lon:-1.8682465,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1139,outlet_name:"Spread Eagle",outlet_address_street_1:"69 Wandsworth High St",outlet_address_city:"Wandsworth",outlet_address_postalcode:"SW18 2PT",outlet_address_location_lat:51.4565908,outlet_address_location_lon:-.1923024,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1299,outlet_name:"Enderby House",outlet_address_street_1:"23 Telegraph Ave",outlet_address_city:"23 Telegraph Ave",outlet_address_postalcode:"SE10 0TH",outlet_address_location_lat:51.4907099,outlet_address_location_lon:.0028108,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1350,outlet_name:"White Horse",outlet_address_street_1:"The St",outlet_address_city:"Hascombe",outlet_address_postalcode:"GU8 4JA",outlet_address_location_lat:51.1453478,outlet_address_location_lon:-.5691513,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1177,outlet_name:"Ship Inn",outlet_address_street_1:"Ship St",outlet_address_city:"East Grinstead",outlet_address_postalcode:"RH19 4EG",outlet_address_location_lat:51.1239269,outlet_address_location_lon:-.009169,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1352,outlet_name:"Bedford Arms",outlet_address_street_1:"Chenies House",outlet_address_city:"Chenies",outlet_address_postalcode:"WD3 6EQ",outlet_address_location_lat:51.6739982,outlet_address_location_lon:-.5284241,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1345,outlet_name:"Wheastsheaf Inn",outlet_address_street_1:"The Wheatsheaf Inn",outlet_address_city:"West End",outlet_address_postalcode:"GL54 3EZ",outlet_address_location_lat:51.8311169,outlet_address_location_lon:-1.8386023,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1353,outlet_name:"Merlin's Cave",outlet_address_street_1:"Merlin's Cave",outlet_address_city:"The Village Green",outlet_address_postalcode:"HP8 4QF",outlet_address_location_lat:51.6322124,outlet_address_location_lon:-.569337,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1354,outlet_name:"Half Moon",outlet_address_street_1:"Church Rd",outlet_address_city:"Windlesham",outlet_address_postalcode:"GU20 6BN",outlet_address_location_lat:51.3652246,outlet_address_location_lon:-.6676944,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1355,outlet_name:"Carpenter's Arms",outlet_address_street_1:"Three Elm Ln",outlet_address_city:"Tonbridge",outlet_address_postalcode:"TN11 0AD",outlet_address_location_lat:51.2129805,outlet_address_location_lon:.3151664,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1356,outlet_name:"Griffin Inn",outlet_address_street_1:"The Griffin",outlet_address_city:"Fletching",outlet_address_postalcode:"TN22 3SS",outlet_address_location_lat:50.993619,outlet_address_location_lon:.03456,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1265,outlet_name:"Clapham North",outlet_address_street_1:"409 Clapham Rd",outlet_address_city:"London]",outlet_address_postalcode:"SW9 9BT",outlet_address_location_lat:51.4654065,outlet_address_location_lon:-.1291787,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1358,outlet_name:"The Libertine",outlet_address_street_1:"1 Alumhurst Rd",outlet_address_city:"Westbourne",outlet_address_postalcode:"BH4 8EL",outlet_address_location_lat:50.7224362,outlet_address_location_lon:-1.9046081,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1360,outlet_name:"White Lion",outlet_address_street_1:"High St",outlet_address_city:"Tenterden",outlet_address_postalcode:"TN30 6BD",outlet_address_location_lat:51.0678268,outlet_address_location_lon:.6867101,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1359,outlet_name:"White Hart",outlet_address_street_1:"Ford",outlet_address_city:"Chippenham",outlet_address_postalcode:"SN14 8RP",outlet_address_location_lat:51.4723808,outlet_address_location_lon:-2.2289429,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1334,outlet_name:"The Constitution",outlet_address_street_1:"42 Saint Pancras Way",outlet_address_city:"London",outlet_address_postalcode:"NW1 0QT",outlet_address_location_lat:51.5403118,outlet_address_location_lon:-.1354267,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1361,outlet_name:"The Huntsman",outlet_address_street_1:"Lyndhurst Rd",outlet_address_city:"Brockenhurst",outlet_address_postalcode:"SO42 7RH",outlet_address_location_lat:50.8241337,outlet_address_location_lon:-1.5715482,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1364,outlet_name:"Crooked Billet",outlet_address_street_1:"84 Upper Clapton Rd",outlet_address_city:"London",outlet_address_postalcode:"E5 9JP",outlet_address_location_lat:51.56223,outlet_address_location_lon:-.0572877,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1362,outlet_name:"Ship Inn",outlet_address_street_1:"Noss Mayo",outlet_address_city:"Plymouth",outlet_address_postalcode:"PL8 1EW",outlet_address_location_lat:50.3113973,outlet_address_location_lon:-4.0413029,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1332,outlet_name:"Teller's Arms",outlet_address_street_1:"75 Castle St",outlet_address_city:"Farnham",outlet_address_postalcode:"GU9 7LP",outlet_address_location_lat:51.2153745,outlet_address_location_lon:-.7990535,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                   ,{
                     outlet_local_id:1363,outlet_name:"Tattenham Corner",outlet_address_street_1:"Tattenham Crescent",outlet_address_city:"Epsom",outlet_address_postalcode:"KT18 5NY",outlet_address_location_lat:51.3099229,outlet_address_location_lon:-.2438481,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"Young's Pubs"}
                  ];

    let mapComponent, placesService;
    let userLocation = null;
    let userMarker = null;
    let currentMarkers = [];
    let pubsWithDetails = []; // Store pubs with details globally
    let selectedPubMarker = null;
    const placeIdCache = new Map();
    
    // --- Marker Icons ---
    const iconBase = 'https://maps.google.com/mapfiles/ms/icons/';
    const markerIcons = {
      user: iconBase + 'blue-dot.png',
      pub: iconBase + 'red-dot.png',
      selectedPub: iconBase + 'green-dot.png'
    };
    
    // --- INITIALIZATION ---
    async function init() {
      try {
        await google.maps.importLibrary("maps");
        await google.maps.importLibrary("places");
        mapComponent = document.getElementById('gmp-map');
        placesService = new google.maps.places.PlacesService(mapComponent.innerMap);
        
        document.getElementById('postalCode').addEventListener('keydown', (e) => {
          if (e.key === 'Enter') {
            e.preventDefault();
            updateMap();
          }
        });
        
        // Add directions button event listener
        document.getElementById('getDirectionsBtn').addEventListener('click', () => {
          const userPostcode = document.getElementById('postalCode').value.trim();
          const pubPostcode = document.getElementById('outlet_address_postalcode').value;
          
          if (userPostcode && pubPostcode) {
            const directionsUrl = `https://www.google.com/maps/dir/${encodeURIComponent(userPostcode)}/${encodeURIComponent(pubPostcode)}`;
            window.open(directionsUrl, '_self');
          } else {
            alert('Please enter your postcode and select a pub first.');
          }
        });
      } catch (e) {
        console.error("Could not initialize Google Maps", e);
      }
    }

    // --- CORE FUNCTIONS ---
    async function updateMap() {
        const postalCode = document.getElementById('postalCode').value.trim();
        if (!postalCode) return;

        const pubInfo = document.getElementById('pubInfo');
        const loadingHTML = `<div class="col-12 text-center py-5"><div class="spinner-border text-primary" role="status"><span class="visually-hidden">Loading...</span></div><p class="mt-2">Finding nearby pubs...</p></div>`;
        document.getElementById('pubList').innerHTML = loadingHTML;
        if(document.querySelector('#pubList-mobile .carousel-inner')) document.querySelector('#pubList-mobile .carousel-inner').innerHTML = loadingHTML;
        
        pubInfo.style.display = 'block';
        document.querySelector('.map-container').classList.remove('details-visible');
        document.getElementById('submitSection').style.display = 'none';
        document.getElementById('selectedBar').value = '';

        try {
            const geoResponse = await fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=${encodeURIComponent(postalCode)}&key=${geocodeApiKey}`);
            const geoData = await geoResponse.json();

            if (geoData.status !== "OK" || !geoData.results.length) {
                throw new Error("Postcode not found.");
            }

            const res = geoData.results[0];
            userLocation = res.geometry.location;
            mapComponent.center = userLocation;
            mapComponent.zoom = 11;

            if (userMarker) userMarker.setMap(null);
            userMarker = new google.maps.Marker({
                position: userLocation,
                map: mapComponent.innerMap,
                title: 'Your Location',
                icon: markerIcons.user
            });

            document.getElementById("latitude").value = userLocation.lat;
            document.getElementById("longitude").value = userLocation.lng;
            document.getElementById("country").value = res.address_components.find(c => c.types.includes("country"))?.long_name || "";
            document.getElementById("city").value = res.address_components.find(c => c.types.includes("postal_town"))?.long_name || "";

            const nearbyPubs = findNearbyPubs(userLocation.lat, userLocation.lng);
            const detailPromises = nearbyPubs.map(pub => getEnhancedPubDetails(pub));
            pubsWithDetails = await Promise.all(detailPromises); // Store globally

            addPubMarkers(pubsWithDetails);
            displayPubs(pubsWithDetails);
          
          if (window.innerWidth < 992) {
            const mobilePubList = document.getElementById('pubList-mobile');
            if (mobilePubList) {
             
              mobilePubList.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
          }

        } catch (err) {
            console.error('Update Map Error:', err);
            pubInfo.innerHTML = `<div class="col-12 text-center py-5"><p class="text-danger">An error occurred: ${err.message}</p></div>`;
        }
    }

    function findNearbyPubs(lat, lng) {
      const toRad = v => v * Math.PI / 180;
      const R = 6371; // Earth radius in km
      return pubData.map(pub => {
        const dLat = toRad(pub.outlet_address_location_lat - lat);
        const dLon = toRad(pub.outlet_address_location_lon - lng);
        const a = Math.sin(dLat / 2) ** 2 + Math.cos(toRad(lat)) * Math.cos(toRad(pub.outlet_address_location_lat)) * Math.sin(dLon / 2) ** 2;
        return { ...pub, distance: R * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a)) };
      }).sort((a, b) => a.distance - b.distance).slice(0, 6);
    }

    async function getEnhancedPubDetails(pub) {
        const placeId = await getPlaceIdForPub(pub);
        if (!placeId) return { ...pub, details: null };

        return new Promise((resolve) => {
            placesService.getDetails({ placeId, fields: ['photos', 'rating', 'formatted_phone_number'] }, (place, status) => {
                resolve({ ...pub, details: (status === google.maps.places.PlacesServiceStatus.OK && place) ? place : null });
            });
        });
    }

    function addPubMarkers(pubs) {
      clearMarkers();
      const bounds = new google.maps.LatLngBounds();
      pubs.forEach((pub, index) => {
          const marker = new google.maps.Marker({
              position: { lat: pub.outlet_address_location_lat, lng: pub.outlet_address_location_lon },
              map: mapComponent.innerMap,
              title: pub.outlet_name,
              icon: markerIcons.pub
          });
          marker.addListener('click', () => selectPub(pub, marker));
          currentMarkers.push(marker);
          bounds.extend(marker.getPosition());
      });
      if (userMarker) bounds.extend(userMarker.getPosition());
      if (currentMarkers.length > 0) mapComponent.innerMap.fitBounds(bounds);
    }

    function createPubCardHTML(pub) {
        const details = pub.details;
        const photoUrl = details?.photos?.[0]?.getUrl() || `https://ui-avatars.com/api/?name=${encodeURIComponent(pub.outlet_name)}&background=e9ecef&color=343a40&bold=true`;
        const rating = details?.rating?.toFixed(1) || 'N/A';
        const phone = details?.formatted_phone_number || 'N/A';

        const cardHTML = `
            <div class="pub-card-photo">
                <img src="${photoUrl}" alt="Photo of ${pub.outlet_name}">
            </div>
            <div class="pub-card-info">
                <h6 class="pub-card-name mb-1">${pub.outlet_name}</h6>
                <p class="pub-card-address text-muted small mb-2">${pub.outlet_address_street_1}, ${pub.outlet_address_postalcode}</p>
            </div>
        `;
        
        const ratingDistancePhoneHTML = `
            <div class="text-center d-lg-none">
                <div class="rating-distance-phone-row">
                    <span class="rating-item">⭐ ${rating}</span>
                    <span class="distance-item">📍 ${pub.distance.toFixed(2)}km</span>
                    <button class="call-btn" onclick="window.open('tel:${phone}')">
                        <i class="fas fa-phone"></i> Call
                    </button>
                </div>
            </div>
        `;

        return { cardHTML, ratingDistancePhoneHTML };
    }

    function displayPubs(pubs) {
        const desktopList = document.getElementById('pubList');
        const mobileCarouselEl = document.getElementById('pubList-mobile');
        const mobileCarouselInner = mobileCarouselEl.querySelector('.carousel-inner');
        const pubInfo = document.getElementById('pubInfo');

        const existingCarouselInstance = bootstrap.Carousel.getInstance(mobileCarouselEl);
        if (existingCarouselInstance) {
            existingCarouselInstance.dispose();
        }
        
        desktopList.innerHTML = '';
        mobileCarouselInner.innerHTML = '';

        if (pubs.length > 0) {
            pubInfo.style.display = 'block';

            pubs.forEach((pub, index) => {
                const pubCardData = createPubCardHTML(pub);

                // Desktop Grid Item
                const desktopCard = document.createElement('div');
                desktopCard.className = 'pub-card';
                desktopCard.dataset.pubId = pub.outlet_local_id;
                desktopCard.innerHTML = pubCardData.cardHTML;
                desktopCard.addEventListener('click', () => selectPub(pub, currentMarkers[index]));
                desktopList.appendChild(desktopCard);

                // Mobile Carousel Item
                const carouselItem = document.createElement('div');
                carouselItem.className = `carousel-item${index === 0 ? ' active' : ''}`;
                carouselItem.innerHTML = `
                    <div class="pub-card" data-pub-id="${pub.outlet_local_id}">
                        ${pubCardData.cardHTML}
                    </div>
                    ${pubCardData.ratingDistancePhoneHTML}
                `;
                mobileCarouselInner.appendChild(carouselItem);
            });

            const newCarouselInstance = new bootstrap.Carousel(mobileCarouselEl, { interval: false, wrap: false });
            mobileCarouselEl.addEventListener('slide.bs.carousel', event => {
                if (pubsWithDetails[event.to] && currentMarkers[event.to]) {
                    selectPub(pubsWithDetails[event.to], currentMarkers[event.to], true);
                }
            });
            
            if (pubs.length > 0) {
                selectPub(pubs[0], currentMarkers[0], window.innerWidth < 992);
            }

        } else {
            pubInfo.style.display = 'none';
        }
    }
    
    async function selectPub(pub, marker, isMobile = false) {
      if (selectedPubMarker) {
          selectedPubMarker.setIcon(markerIcons.pub);
      }
      marker.setIcon(markerIcons.selectedPub);
      selectedPubMarker = marker;

      document.querySelectorAll('.pub-card').forEach(c => c.classList.remove('selected'));
      document.querySelectorAll(`.pub-card[data-pub-id='${pub.outlet_local_id}']`).forEach(c => c.classList.add('selected'));
      
      document.getElementById('selectedBar').value = pub.outlet_name || "";
      document.getElementById('outlet_local_id').value = pub.outlet_local_id || "";
      document.getElementById('outlet_address_street_1').value = pub.outlet_address_street_1 || "";
      document.getElementById('outlet_address_postalcode').value = pub.outlet_address_postalcode || "";
      document.getElementById('outlet_address_city').value = pub.outlet_address_city || "";
      document.getElementById('outlet_address_location_lon').value = pub.outlet_address_location_lon || "";
      document.getElementById('outlet_address_location_lat').value = pub.outlet_address_location_lat || "";

      document.getElementById('submitSection').style.display = 'block';
      
      // Show directions section if we have a pub selected
      if (isMobile) {
          document.getElementById('directionsSection').style.display = 'block';
      }

      if (!isMobile) {
          const placeId = await getPlaceIdForPub(pub);
          showPlaceDetails(placeId, pub);
      } else {
          mapComponent.panTo(marker.getPosition());
      }
    }
    
    async function getPlaceIdForPub(pub) {
        if (placeIdCache.has(pub.outlet_local_id)) {
            return placeIdCache.get(pub.outlet_local_id);
        }
        const request = {
            textQuery: `${pub.outlet_name}, ${pub.outlet_address_city}`,
            fields: ['id'],
            locationBias: { lat: pub.outlet_address_location_lat, lng: pub.outlet_address_location_lon }
        };
        try {
            const { places } = await google.maps.places.Place.searchByText(request);
            if (places && places.length > 0) {
                placeIdCache.set(pub.outlet_local_id, places[0].id);
                return places[0].id;
            }
        } catch (e) {
            console.warn("Could not find Place ID for:", pub.outlet_name, e);
        }
        return null;
    }

    function showPlaceDetails(placeId, pub) {
        if (window.innerWidth < 992 || !pub) return;

        document.querySelector('.map-container').classList.add('details-visible');
        const detailsPanel = document.getElementById('place-details-panel');
        const placeRequest = document.getElementById('place-request');
        detailsPanel.style.display = 'block';

        if (!placeId) {
            // Fallback for pubs without a Google Place ID
            placeRequest.removeAttribute('place');
            detailsPanel.innerHTML = `<h5>${pub.outlet_name}</h5><p><strong>Address:</strong> ${pub.outlet_address_street_1}, ${pub.outlet_address_city}</p><p class="text-muted">More details could not be loaded.</p>`;
            return;
        }

        // Set the place ID for the place details component (Google UI Kit)
        placeRequest.setAttribute('place', placeId);
        // Ensure the UI kit is visible (do not overwrite the panel's innerHTML)
    }

    function clearMarkers() {
      currentMarkers.forEach(marker => marker.setMap(null));
      currentMarkers = [];
    }
    </script>

    <script>
      (g => { var h, a, k, p = "The Google Maps JavaScript API", c = "google", l = "importLibrary", q = "__ib__", m = document, b = window; b = b[c] || (b[c] = {}); var d = b.maps || (b.maps = {}), r = new Set, e = new URLSearchParams, u = () => h || (h = new Promise(async (f, n) => { await (a = m.createElement("script")); e.set("libraries", "maps,places"); for (k in g) e.set(k.replace(/[A-Z]/g, t => "_" + t[0].toLowerCase()), g[k]); e.set("callback", c + ".maps."+q); a.src = `https://maps.${c}apis.com/maps/api/js?`+e; d[q]=f; a.onerror=()=>h=n(Error(p+" could not load.")); a.nonce=m.querySelector("script[nonce]")?.nonce||""; m.head.append(a) })); d[l]?console.warn(p+" only loads once. Ignoring:",g):d[l]=(f,...n)=>r.add(f)&&u().then(()=>d[l](f,...n)) })({ key: mapsApiKey, v: "weekly" });
      window.onload = init;
    </script>
</body>
</html>
