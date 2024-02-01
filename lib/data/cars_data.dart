import "package:cars_info_app/models/car.dart";

List<CarModel> carsList = [
  const CarModel(
    id: '1',
    title: 'Audi A4',
    imageUrl:
        'https://media.ed.edmunds-media.com/audi/a4/2022/oem/2022_audi_a4_sedan_prestige-s-line_fq_oem_8_1280.jpg',
    details: [
      'Mileage: 25 km/l',
      'Top Speed: 200 km/h',
      'Power: 200 bhp',
      'Engine: 2.0L Turbo'
    ],
    description: [
      'Price: The Audi A4 is now priced from Rs 43.85 lakh to Rs 51.85 lakh (ex-showroom pan-India).',
      'Variants: Audi A4 is available in 3 broad variants: Premium, Premium Plus, and Technology.',
      'Colour Options: It comes in 5 colour options: Ibis White, Floret Silver, Mythos Black, Navarra Blue, Terra Grey',
      'Engine and Transmission: The Audi A4 is powered by a 2-litre turbo-petrol engine (190 PS and 320 Nm), the same as in the Q2 SUV, paired with a seven-speed DCT. It features an all-wheel-drive system.',
      'Features: Key features of Audi A4 include a 10.1-inch touchscreen infotainment system with Android Auto and Apple CarPlay, a digital driver’s display, three-zone climate control, a 19-speaker B&O sound system, powered front seats, and a sunroof.',
      'Safety: Safety features comprise eight airbags, ABS with EBD, electronic stability control (ESC), all-wheel disc brakes, hill hold assist, and a rear-view camera.',
    ],
    type: Type.sedan,
    capacity: Capacity.fourSeater,
    isPetrol: true,
    isDiesel: false,
    isElectric: false,
    isSedan: true,
    isCoupe: false,
    isHatchback: false,
    isSUV: false,
    brandName: 'Audi',
  ),
  const CarModel(
    id: '2',
    title: 'Audi Q5',
    imageUrl:
        'https://www.topgear.com/sites/default/files/cars-car/carousel/2021/04/a210137_medium_0.jpg',
    details: [
      'Mileage: 20 km/l',
      'Top Speed: 220 km/h',
      'Power: 250 bhp',
      'Engine: 2.0L Turbocharged'
    ],
    description: [
      'Price: The Audi Q5 is priced from Rs 50.75 lakh to Rs 58.75 lakh (ex-showroom pan-India).',
      'Variants: Audi Q5 is available in multiple variants, including Premium, Premium Plus, and Technology.',
      'Colour Options: It comes in 6 colour options: Glacier White, Moonlight Blue, Matador Red, Mythos Black, Navarra Blue, and Floret Silver.',
      'Engine and Transmission: The Audi Q5 is equipped with a powerful 2.0L turbocharged engine (250 PS and 370 Nm) paired with a seven-speed S-Tronic transmission.',
      'Features: Key features include a panoramic sunroof, MMI touch infotainment system, virtual cockpit, adaptive cruise control, and a power tailgate.',
      'Safety: Safety features include multiple airbags, ABS with EBD, electronic stability control (ESC), Audi pre sense basic, and a rear-view camera.'
    ],
    type: Type.suv,
    capacity: Capacity.sixSeater,
    isPetrol: true,
    isDiesel: false,
    isElectric: false,
    isSedan: false,
    isCoupe: false,
    isHatchback: false,
    isSUV: true,
    brandName: 'Audi',
  ),
  const CarModel(
    id: '3',
    title: 'Audi A6',
    imageUrl:
        'https://imgd.aeplcdn.com/1920x1080/n/cw/ec/39472/a6-exterior-left-front-three-quarter-2.jpeg?q=80&q=80',
    details: [
      'Mileage: 18 km/l',
      'Top Speed: 230 km/h',
      'Power: 280 bhp',
      'Engine: 3.0L V6 Turbocharged'
    ],
    description: [
      'Price: The Audi A6 is priced from Rs 55.95 lakh to Rs 63.95 lakh (ex-showroom pan-India).',
      'Variants: Audi A6 is available in three variants: Premium, Premium Plus, and Technology.',
      'Colour Options: It comes in 7 colour options: Ibis White, Carat Beige, Vesuvius Gray, Firmament Blue, Floret Silver, Mythos Black, and Daytona Gray.',
      'Engine and Transmission: The Audi A6 is powered by a 3.0L V6 turbocharged engine (280 PS and 400 Nm) mated to a seven-speed S-Tronic transmission.',
      'Features: Key features include a dual touchscreen infotainment system, Audi virtual cockpit, four-zone automatic climate control, Bang & Olufsen sound system, and Matrix LED headlights.',
      'Safety: Safety features include airbags, ABS with EBD, ESC, Audi pre sense front, rearview camera, and parking sensors.'
    ],
    type: Type.sedan,
    capacity: Capacity.fiveSeater,
    isPetrol: true,
    isDiesel: false,
    isElectric: false,
    isSedan: true,
    isHatchback: false,
    isCoupe: false,
    isSUV: false,
    brandName: 'Audi',
  ),
  const CarModel(
    id: '4',
    title: 'Audi e-tron',
    imageUrl:
        'https://www.audi-mediacenter.com/system/production/media/71164/images/a41672e1a01de586f023e4491da3f88548b52984/A1814539_web_2880.jpg?1698345785',
    details: [
      'Mileage: 400 km per charge',
      'Top Speed: 200 km/h',
      'Power: 355 bhp',
      'Electric Motor: Dual Motor setup'
    ],
    description: [
      'Price: The Audi e-tron is priced from Rs 1.2 crore to Rs 1.4 crore (ex-showroom pan-India).',
      'Variants: Audi e-tron is available in multiple variants, including Standard, Premium Plus, and Prestige.',
      'Colour Options: It comes in 5 colour options: Catalunya Red, Mythos Black, Florett Silver, Galaxy Blue, and Glacier White.',
      'Electric Powertrain: The Audi e-tron features a dual-motor setup providing all-wheel drive and is equipped with advanced electric technology for a sustainable driving experience.',
      'Features: Key features include a virtual cockpit, MMI touch infotainment, adaptive air suspension, panoramic sunroof, and advanced driver assistance systems.',
      'Safety: Safety features include multiple airbags, ABS with EBD, ESC, lane departure warning, forward collision warning, and 360-degree camera.'
    ],
    type: Type.sedan,
    capacity: Capacity.fourSeater,
    isPetrol: false,
    isDiesel: false,
    isElectric: true,
    isSedan: false,
    isHatchback: false,
    isCoupe: false,
    isSUV: true,
    brandName: 'Audi',
  ),
  const CarModel(
    id: '5',
    title: 'BMW X5',
    imageUrl:
        "https://www.motorbiscuit.com/wp-content/uploads/2022/06/2022-BMW-front.jpg?w=1200&strip=all&quality=89",
    details: [
      'Mileage: 20 km/l',
      'Top Speed: 220 km/h',
      'Power: 250 bhp',
      'Engine: 3.0L TwinPower Turbo'
    ],
    description: [
      'Price: Prices for the BMW X5 range from Rs 95.20 lakh to Rs 1.08 crore (ex-showroom pan-India).',
      'Variants: BMW offers the X5 in 2 variants: xLine and M Sport.',
      'Seating Capacity: It is available in a 5-seater configuration.',
      'Colours: The X5 SUV comes in 4 exterior shades: Storm Bay Metallic, Space Silver Metallic, Black Sapphire, and M Portimao Blue.',
      'Engine and Transmission: The BMW X5 comes with 2 engine options: a 3-litre turbo petrol engine which now makes 381PS and 520Nm. The diesel, on the other hand, is a 3-litre unit with an output of 285PS and 650Nm. Both of these engines use 48V mild-hybrid tech for increased performance. They are mated to an 8-speed automatic transmission and power is transferred to all four wheels.',
      'Features: Features on board the X5 include two digital displays (14.9-inch for infotainment and 12.3-inch for instrumentation), 4-zone climate control, ventilated and heated front seats, and panoramic sunroof. The SUV also gets powered front seats with memory function for the driver seat, a heads-up display, and connected car tech with digital key.',
      'Safety: In terms of safety, it gets 6 airbags, dynamic stability control (DSC), cornering brake control (CBC), ISOFIX child seat anchorages, and driver attentiveness alert.'
    ],
    type: Type.hatchBack,
    capacity: Capacity.sixSeater,
    isPetrol: true,
    isDiesel: true,
    isElectric: false,
    brandName: 'BMW',
    isSedan: false,
    isHatchback: true,
    isCoupe: false,
    isSUV: false,
  ),
  const CarModel(
    id: '6',
    title: 'BMW 3 Series',
    imageUrl: 'https://www.bmw.in/content/dam/bmw/marketIN/bmw_in/all-models/3-series/gl/2023/header-banner.jpg',
    details: [
      'Mileage: 18 km/l',
      'Top Speed: 240 km/h',
      'Power: 258 bhp',
      'Engine: 2.0L TwinPower Turbocharged'
    ],
    description: [
      'Price: The BMW 3 Series is priced from Rs 42.50 lakh to Rs 49.50 lakh (ex-showroom pan-India).',
      'Variants: BMW 3 Series is available in multiple variants, including Sport, Luxury Line, and M Sport.',
      'Colour Options: It comes in 6 colour options: Alpine White, Black Sapphire, Portimao Blue, Sunset Orange, Melbourne Red, and Mediterranean Blue.',
      'Engine and Transmission: The BMW 3 Series is powered by a 2.0L TwinPower Turbocharged engine (258 PS and 400 Nm) paired with an eight-speed Steptronic Sport transmission.',
      'Features: Key features include a 12.3-inch touchscreen infotainment system, BMW Live Cockpit Professional, ambient lighting, gesture control, and parking assistant.',
      'Safety: Safety features include airbags, ABS with EBD, stability control, lane departure warning, and a reverse parking camera.'
    ],
    type: Type.sedan,
    capacity: Capacity.fourSeater,
    isPetrol: true,
    isDiesel: true,
    isCoupe: false,
    isElectric: false,
    isSedan: true,
    isHatchback: false,
    isSUV: false,
    brandName: 'BMW',
  ),
  const CarModel(
    id: '7',
    title: 'BMW X3',
    imageUrl: 'https://etimg.etb2bimg.com/photo/89019574.cms',
    details: [
      'Mileage: 15 km/l',
      'Top Speed: 230 km/h',
      'Power: 190 bhp',
      'Engine: 2.0L TwinPower Turbocharged'
    ],
    description: [
      'Price: The BMW X3 is priced from Rs 56.00 lakh to Rs 63.00 lakh (ex-showroom pan-India).',
      'Variants: BMW X3 is available in multiple variants, including Expedition, Luxury Line, and M Sport.',
      'Colour Options: It comes in 5 colour options: Alpine White, Phytonic Blue, Black Sapphire, Sophisto Grey, and Mineral White.',
      'Engine and Transmission: The BMW X3 is equipped with a 2.0L TwinPower Turbocharged engine (190 PS and 400 Nm) coupled with an eight-speed Steptronic automatic transmission.',
      'Features: Key features include a panoramic sunroof, BMW ConnectedDrive services, BMW Virtual Assistant, ambient lighting, and a premium Harman Kardon sound system.',
      'Safety: Safety features include multiple airbags, ABS with EBD, dynamic stability control, hill descent control, and park distance control.'
    ],
    type: Type.suv,
    capacity: Capacity.fiveSeater,
    isPetrol: true,
    isDiesel: true,
    isCoupe: false,
    isElectric: false,
    isSedan: false,
    isHatchback: false,
    isSUV: true,
    brandName: 'BMW',
  ),
  const CarModel(
    id: '8',
    title: 'BMW 7 Series',
    imageUrl: 'https://www.bmw.in/content/dam/bmw/common/all-models/7-series/sedan/2022/highlights/bmw-7-series-sedan-cp-design-exterior-desktop.jpg',
    details: [
      'Mileage: 12 km/l',
      'Top Speed: 250 km/h',
      'Power: 320 bhp',
      'Engine: 3.0L TwinPower Turbocharged'
    ],
    description: [
      'Price: The BMW 7 Series is priced from Rs 1.20 crore to Rs 1.50 crore (ex-showroom pan-India).',
      'Variants: BMW 7 Series is available in multiple variants, including 730Li Luxury Line, 740Li M Sport, and 745Le xDrive.',
      'Colour Options: It comes in 8 colour options: Bernina Grey, Cashmere Silver, Royal Burgundy, Black Sapphire, Imperial Blue, Mineral White, Sophisto Grey, and Arctic Grey.',
      'Engine and Transmission: The BMW 7 Series features a powerful 3.0L TwinPower Turbocharged engine (320 PS and 500 Nm) paired with an eight-speed Steptronic automatic transmission.',
      'Features: Key features include a panoramic sky lounge, ambient air package, rear-seat entertainment, gesture control, and BMW Touch Command.',
      'Safety: Safety features include airbags, ABS with EBD, adaptive cruise control, lane departure warning, and a 360-degree surround-view camera.'
    ],
    type: Type.sedan,
    capacity: Capacity.fourSeater,
    isPetrol: true,
    isDiesel: false,
    isElectric: false,
    isCoupe: false,
    isSedan: true,
    isHatchback: false,
    isSUV: false,
    brandName: 'BMW',
  ),
  const CarModel(
    id: '9',
    title: 'BMW i4',
    imageUrl: 'https://www.bmw.com.my/content/dam/bmw/common/all-models/i-series/i4/onepager-new/bmw-i4-edrive-40-onepager-sp-desktop.jpg.asset.1625584117626.jpg',
    details: [
      'Mileage: 500 km per charge',
      'Top Speed: 200 km/h',
      'Power: 530 bhp',
      'Electric Motor: Dual Motor setup'
    ],
    description: [
      'Price: The BMW i4 is priced from Rs 1.00 crore to Rs 1.20 crore (ex-showroom pan-India).',
      'Variants: BMW i4 is available in multiple variants, including eDrive40 and M50.',
      'Colour Options: It comes in 6 colour options: Capparis White, Frozen Portimao Blue, Mineral White, Brooklyn Grey, Phytonic Blue, and Black Sapphire.',
      'Electric Powertrain: The BMW i4 features a dual-motor setup providing all-wheel drive and is equipped with advanced electric technology for an efficient and powerful driving experience.',
      'Features: Key features include a curved display, iDrive 8 infotainment system, adaptive cruise control, BMW Personal CoPilot, and a high-end audio system.',
      'Safety: Safety features include multiple airbags, ABS with EBD, collision and pedestrian warning, lane-keeping assist, and parking assistance systems.'
    ],
    type: Type.sedan,
    capacity: Capacity.fourSeater,
    isPetrol: false,
    isDiesel: false,
    isElectric: true,
    isCoupe: false,
    isSedan: true,
    isHatchback: false,
    isSUV: false,
    brandName: 'BMW',
  ),
  const CarModel(
    id: '10',
    title: 'Ford Mustang',
    imageUrl: 'https://cdn.motor1.com/images/mgl/J7EjQ/s1/electric-ford-mustang-by-charge-cars.jpg',
    details: [
      'Mileage: 12 km/l',
      'Top Speed: 250 km/h',
      'Power: 450 bhp',
      'Engine: 5.0L V8'
    ],
    description: [
      'Price: The Ford Mustang is priced from Rs 75.00 lakh to Rs 80.00 lakh (ex-showroom pan-India).',
      'Variants: Ford Mustang is available in GT Fastback and GT Convertible variants.',
      'Colour Options: It comes in 5 colour options: Oxford White, Shadow Black, Velocity Blue, Race Red, and Magnetic Grey.',
      'Engine and Transmission: The Ford Mustang features a powerful 5.0L V8 engine (450 PS and 529 Nm) paired with a 10-speed automatic transmission.',
      'Features: Key features include a SYNC 3 infotainment system, selectable drive modes, electronic line-lock, and advanced driver assistance features.',
      'Safety: Safety features include multiple airbags, ABS with EBD, electronic stability control, and rearview camera.'
    ],
    type: Type.coupe,
    capacity: Capacity.twoSeater,
    isPetrol: true,
    isDiesel: false,
    isElectric: false,
    isCoupe: true,
    isSedan: false,
    isHatchback: false,
    isSUV: false,
    brandName: 'Ford',
  ),
  const CarModel(
    id: '11',
    title: 'Ford EcoSport',
    imageUrl: 'https://d2m3nfprmhqjvd.cloudfront.net/blog/20220228142407/ezgif.com-gif-maker-9ll-1.jpg',
    details: [
      'Mileage: 18 km/l',
      'Top Speed: 180 km/h',
      'Power: 123 bhp',
      'Engine: 1.5L Ti-VCT'
    ],
    description: [
      'Price: The Ford EcoSport is priced from Rs 8.50 lakh to Rs 11.50 lakh (ex-showroom pan-India).',
      'Variants: Ford EcoSport is available in multiple variants, including Ambiente, Trend, Titanium, and Sports.',
      'Colour Options: It comes in 7 colour options: Diamond White, Lightning Blue, Moondust Silver, Smoke Grey, Absolute Black, Race Red, and Canyon Ridge.',
      'Engine and Transmission: The Ford EcoSport is equipped with a 1.5L Ti-VCT engine (123 PS and 150 Nm) paired with a 5-speed manual or 6-speed automatic transmission.',
      'Features: Key features include Ford SYNC infotainment system, Apple CarPlay, Android Auto, FordPass, and a sunroof.',
      'Safety: Safety features include dual front airbags, ABS with EBD, rearview camera, electronic stability control, and hill launch assist.'
    ],
    type: Type.suv,
    capacity: Capacity.fiveSeater,
    isPetrol: true,
    isDiesel: true,
    isElectric: false,
    isSedan: false,
    isCoupe: false,
    isHatchback: false,
    isSUV: true,
    brandName: 'Ford',
  ),
  const CarModel(
    id: '12',
    title: 'Ford Endeavour',
    imageUrl: 'https://wallpapercave.com/wp/wp2397305.jpg',
    details: [
      'Mileage: 12 km/l',
      'Top Speed: 190 km/h',
      'Power: 168 bhp',
      'Engine: 2.0L EcoBlue Diesel'
    ],
    description: [
      'Price: The Ford Endeavour is priced from Rs 32.75 lakh to Rs 38.75 lakh (ex-showroom pan-India).',
      'Variants: Ford Endeavour is available in multiple variants, including Titanium 4X2, Titanium 4X4, and Sport.',
      'Colour Options: It comes in 4 colour options: Diamond White, Diffused Silver, Absolute Black, and Sunset Red.',
      'Engine and Transmission: The Ford Endeavour features a 2.0L EcoBlue Diesel engine (168 PS and 420 Nm) paired with a 10-speed automatic transmission.',
      'Features: Key features include Ford SYNC 3 infotainment system, terrain management system, panoramic sunroof, and power-folding third-row seats.',
      'Safety: Safety features include multiple airbags, ABS with EBD, hill descent control, electronic stability control, and Ford\'s advanced Co-Pilot360 suite.'
    ],
    type: Type.suv,
    capacity: Capacity.sevenSeater,
    isPetrol: false,
    isDiesel: true,
    isElectric: false,
    isCoupe: false,
    isSedan: false,
    isHatchback: false,
    isSUV: true,
    brandName: 'Ford',
  ),
  const CarModel(
    id: '13',
    title: 'Ford Figo',
    imageUrl: 'https://www.ppsford.com/uploads/blog/1623119077_pps-ford-figo-great-car-for-indian-market.webp',
    details: [
      'Mileage: 20 km/l',
      'Top Speed: 160 km/h',
      'Power: 96 bhp',
      'Engine: 1.2L Ti-VCT'
    ],
    description: [
      'Price: The Ford Figo is priced from Rs 5.50 lakh to Rs 7.50 lakh (ex-showroom pan-India).',
      'Variants: Ford Figo is available in multiple variants, including Ambiente, Trend, Titanium, and Titanium Blu.',
      'Colour Options: It comes in 5 colour options: Moondust Silver, Smoke Grey, Diamond White, Ruby Red, and Oxford White.',
      'Engine and Transmission: The Ford Figo is powered by a 1.2L Ti-VCT engine (96 PS and 119 Nm) mated to a 5-speed manual transmission.',
      'Features: Key features include FordPass, 7-inch touchscreen infotainment, automatic climate control, and push-button start.',
      'Safety: Safety features include dual front airbags, ABS with EBD, traction control, electronic stability control, and rear parking sensors.'
    ],
    type: Type.hatchBack,
    capacity: Capacity.fiveSeater,
    isPetrol: true,
    isDiesel: true,
    isElectric: false,
    isSedan: false,
    isCoupe: false,
    isHatchback: true,
    isSUV: false,
    brandName: 'Ford',
  ),
  const CarModel(
    id: '14',
    title: 'Hyundai Creta',
    imageUrl: 'https://www.hyundai.com/content/dam/hyundai/in/en/data/find-a-car/Creta/Highlights/cretahighlightbig2.jpg',
    details: [
      'Mileage: 21 km/l',
      'Top Speed: 185 km/h',
      'Power: 138 bhp',
      'Engine: 1.5L U2 CRDi Diesel'
    ],
    description: [
      'Price: The Hyundai Creta is priced from Rs 10.00 lakh to Rs 17.50 lakh (ex-showroom pan-India).',
      'Variants: Hyundai Creta is available in multiple variants, including E, EX, S, SX, and SX(O).',
      'Colour Options: It comes in 10 colour options: Polar White, Typhoon Silver, Phantom Black, Lava Orange, Titan Grey, Deep Forest, Galaxy Blue, Mulberry Red, Red Mulberry, and Polar White with Phantom Black.',
      'Engine and Transmission: The Hyundai Creta features a 1.5L U2 CRDi Diesel engine (138 PS and 242 Nm) paired with a 6-speed manual or automatic transmission.',
      'Features: Key features include a 10.25-inch touchscreen infotainment system, BlueLink connected car technology, panoramic sunroof, wireless phone charger, and smart key with push-button start.',
      'Safety: Safety features include multiple airbags, ABS with EBD, electronic stability control, hill start assist control, and rear parking sensors.'
    ],
    type: Type.suv,
    capacity: Capacity.fiveSeater,
    isPetrol: true,
    isDiesel: true,
    isElectric: false,
    isCoupe: false,
    isSedan: false,
    isHatchback: false,
    isSUV: true,
    brandName: 'Hyundai',
  ),
  const CarModel(
    id: '15',
    title: 'Hyundai i20',
    imageUrl: 'https://www.cartoq.com/wp-content/uploads/2020/10/2020-hyundai-i20-N-Line-featured.jpg',
    details: [
      'Mileage: 20 km/l',
      'Top Speed: 170 km/h',
      'Power: 83 bhp',
      'Engine: 1.2L Kappa Petrol'
    ],
    description: [
      'Price: The Hyundai i20 is priced from Rs 6.80 lakh to Rs 11.20 lakh (ex-showroom pan-India).',
      'Variants: Hyundai i20 is available in multiple variants, including Magna, Sportz, Asta, and Asta(O).',
      'Colour Options: It comes in 9 colour options: Polar White, Typhoon Silver, Titan Grey, Fiery Red, Starry Night, Metallic Copper, Metallic Blue, Aqua Teal, and Polar White with Black Roof.',
      'Engine and Transmission: The Hyundai i20 is powered by a 1.2L Kappa Petrol engine (83 PS and 113 Nm) mated to a 5-speed manual or CVT automatic transmission.',
      'Features: Key features include a 10.25-inch touchscreen infotainment system, BlueLink connected car technology, wireless phone charger, Bose premium sound system, and sunroof.',
      'Safety: Safety features include dual airbags, ABS with EBD, vehicle stability management, hill assist control, and rear parking camera.'
    ],
    type: Type.hatchBack,
    capacity: Capacity.fiveSeater,
    isPetrol: true,
    isDiesel: false,
    isElectric: false,
    isCoupe: false,
    isSedan: false,
    isHatchback: true,
    isSUV: false,
    brandName: 'Hyundai',
  ),
  const CarModel(
    id: '16',
    title: 'Hyundai Verna',
    imageUrl: 'https://imgd-ct.aeplcdn.com/1056x660/n/cw/ec/121943/verna-facelift-exterior-right-front-three-quarter-100.jpeg?isig=0&q=80',
    details: [
      'Mileage: 25 km/l',
      'Top Speed: 190 km/h',
      'Power: 113 bhp',
      'Engine: 1.5L U2 CRDi Diesel'
    ],
    description: [
      'Price: The Hyundai Verna is priced from Rs 9.10 lakh to Rs 15.20 lakh (ex-showroom pan-India).',
      'Variants: Hyundai Verna is available in multiple variants, including E, S, SX, and SX(O).',
      'Colour Options: It comes in 6 colour options: Phantom Black, Typhoon Silver, Titan Grey, Fiery Red, Starry Night, and Polar White.',
      'Engine and Transmission: The Hyundai Verna is equipped with a 1.5L U2 CRDi Diesel engine (113 PS and 250 Nm) paired with a 6-speed manual or automatic transmission.',
      'Features: Key features include a 8.0-inch touchscreen infotainment system, BlueLink connected car technology, ventilated front seats, sunroof, and wireless phone charger.',
      'Safety: Safety features include multiple airbags, ABS with EBD, electronic stability control, hill start assist control, and rear parking sensors.'
    ],
    type: Type.sedan,
    capacity: Capacity.fiveSeater,
    isPetrol: true,
    isDiesel: true,
    isElectric: false,
    isCoupe: false,
    isSedan: true,
    isHatchback: false,
    isSUV: false,
    brandName: 'Hyundai',
  ),
  const CarModel(
    id: '17',
    title: 'Hyundai Kona Electric',
    imageUrl: 'https://cdn.motor1.com/images/mgl/7Ze9pq/s1/hyundai-kona-2023.jpg',
    details: [
      'Mileage: 452 km per charge',
      'Top Speed: 167 km/h',
      'Power: 134 bhp',
      'Electric Motor: Permanent Magnet Synchronous Motor'
    ],
    description: [
      'Price: The Hyundai Kona Electric is priced from Rs 23.75 lakh to Rs 23.94 lakh (ex-showroom pan-India).',
      'Variants: Hyundai Kona Electric is available in Premium and Premium Dual Tone variants.',
      'Colour Options: It comes in 5 colour options: Phantom Black, Typhoon Silver, Polar White, Marina Blue, and Pulse Red.',
      'Electric Powertrain: The Hyundai Kona Electric features a Permanent Magnet Synchronous Motor providing an electric range of up to 452 km on a single charge.',
      'Features: Key features include a 10.25-inch touchscreen infotainment system, BlueLink connected car technology, sunroof, wireless phone charger, and ventilated seats.',
      'Safety: Safety features include multiple airbags, ABS with EBD, electronic stability control, hill start assist control, and rearview camera.'
    ],
    type: Type.suv,
    capacity: Capacity.fiveSeater,
    isPetrol: false,
    isDiesel: false,
    isElectric: true,
    isSedan: false,
    isCoupe: false,
    isHatchback: false,
    isSUV: true,
    brandName: 'Hyundai',
  ),
];