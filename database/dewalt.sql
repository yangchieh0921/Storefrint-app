-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 01, 2021 at 05:57 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dewalt`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `product_info` text NOT NULL,
  `product_video` varchar(100) NOT NULL,
  `product_price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_image`, `product_info`, `product_video`, `product_price`) VALUES
(1, 'EGO BRUSHLESS 20-IN STEEL DECK SELF PROPELLED', 'lawn-mover.jpg', 'BRUSHLESS 20-IN STEEL DECK SELF PROPELLEDM\r\n\r\nThe EGO POWER+ 20\" Self-Propelled Mower delivers the torque of gas. No other cordless mower matches or surpasses the power of gas mowers, making the EGO POWER+ Mowers a true gas replacement lawn mower. A 20\" steel deck, a 60-minute run time, a brushless motor and a variable-speed, self-propelled system are just a few of the features that make this mower incredible. The EGO Power+ 56-Volt battery uses industry-leading ARC Lithium technology to deliver Power Beyond Belief. All EGO ARC Lithium batteries are compatible with all EGO POWER+ products.\r\n\r\nUp to 70-minutes of run time with the included 7.5 Ah ARC Lithium battery\r\nHigh-efficiency brushless motor\r\nDurable 20 steel mower deck\r\nVariable-speed self-propulsion\r\nLED headlights\r\n3-in-1 mulching, bagging and side discharge\r\nWeather-resistant construction (ipx4)\r\nSingle-lever, 6-position deck-height adjustment\r\n60-minute charge time with the included 7.5 Ah ARC Lithium battery and POWER+ Rapid Charger', 'lawn-mower-video.mp4', '$1049'),
(2, 'Kobalt 40V 20in Brushless Self Propelled Mower with 5AH Battery', 'lawn-mower-2.jpg', '\r\nKobalt 40V 20in Brushless Self Propelled Mower with 5AH Battery\r\n\r\nSay goodbye to the fumes, mess and the hassle. Start enjoying the cordless freedom you deserve. Every Kobalt 40 Volt tool works off the same rechargeable and interchangeable battery platform, so you can pop in a new one and keep going for as long as it takes. Plus, with Kobalt\'s state-of-the-art lithium-ion technology, you get more torque and more speed with fewer recharges.\r\n\r\nKobalt 40-volt self-propelled cordless lawn mower offers up to 30 minutes runtime with fully charged 5.0 Ah battery (battery and charger included)\r\nProvides more traction and power to maneuver steep hills and tough terrain\r\nSelf propelled rear wheel drive with cruise control can be easily adjusted to your stride\r\n5.0 Ah battery and Brushless motor offer gas like power and runtime for yards up to 1/2 acre\r\n3-In-1 feature offers mulching, rear bagging, or side discharge capabilities\r\n20-In steel deck for added durability\r\n7-Position single lever height adjuster for the perfect cut on all grass types\r\nCompatible with Kobalt 40 Volt max family of products; stores vertically for more space in your garage\r\n5-Year limited warranty', 'lawn-mower-video.mp4', '$649'),
(3, 'Greenworks Cordless and Brushless Push Lawn Mower - 40-Volt - 20-in - 1 Lithium-Ion Battery', 'lawn-mower-3.jpg', '\r\nGet ready for spring this year with the Greenworks 40-volt system. This efficient cordless battery platform gives you all the power you need to tackle your yard. Kick gas to the curb this spring and go green: no fumes, no mixing, no maintenance, and no pull cords. Life gets easier with Greenworks: let us help you take the work, out of yard work.\r\n\r\nBrushless mower delivers more torque to tackle thick grass and cuts for up to 45 minutes on a powerful 40 Volts, 4 AH lithium-ion battery\r\n\r\nThe DigiPro™ brushless motor is comparable to a gas-powered engine and delivers 80% longer life and 30% more torque than a conventional motor with brushes\r\nFeatures 20 inches (51cm) cutting deck\r\n3-in-1 feature provides mulching, side and rear discharge capabilities\r\n5.0 Ah battery and Brushless motor offer gas like power and runtime for yards up to 1/2 acre\r\n3-In-1 feature offers mulching, rear bagging, or side discharge capabilities\r\n7-position single lever height adjustment system that can cut grass from 1-3/8-in to 3-3/4-in\r\nVertical storage capable', 'lawn-mower-video.mp4', '$499'),
(4, 'EGO 21-IN SELF PROPELLED (TWIN BATTERY, PEAK POWER)', 'lawn-mower-4.jpg', '\r\nThe EGO POWER+ 21\" Select Cut Push Mower delivers the power and performance of gas. The Select Cut multi-blade cutting system is equipped with two, interchangeable lower blades; the Mulching Blade and the Extended Run Time Blade. The Mulching Blade comes installed on the mower and is ideal for weekly mulching, giving you the mulching quality you would expected from a high-end gas lawn mower. The Extended Runtime Blade provides an optimal balance of cut quality and runtime for all around performance. Both blades can be used interchangeably based on the desired cut. The EGO Upper Blade is used in combination with the lower blade chosen to slice the grass into fine fragments; this greatly enhances cutting performance with all grass types. Experience Power Beyond Belief without the noise, fuss and fumes. Compatible with all EGO POWER+ ARC Lithium batteries.\r\n\r\nSelect Cut Multi-Blade System for premium cutting performance that exceeds gas.\r\n\r\nGet 45-minutes of run time on single charge with the included 56V 5.0 Ah ARC Lithium battery\r\nHigh-efficiency brushless motor\r\n7-Position cutting height adjustments: 1.5-in - 4-in\r\n3-in-1 function: mulching, bagging, side discharge\r\nQuick and easy push-button start\r\nEasy-access 2-bushel grass collection bag\r\nMulching blade and Extended Runtime blade included\r\n50 Minute charge time with the included 5.0 Ah ARC Lithium Fuel Gauge battery and Power+ Rapid Charger', 'lawn-mower-video.mp4', '$849'),
(5, 'Kobalt 80-Volt 21-in Self Propelled Lawn Mower', 'lawn-mower-5.jpg', '\r\nTKobalt 80-Volt 21-in Self Propelled Lawn Mower\r\n\r\nWhat do you get when the best gets even better? Kobalts robust lineup of second-generation 80V battery-operated yard tools boast bigger batteries to help tackle even tougher jobs. You don\'t slow down, and neither do we. Larger batteries mean longer runtime, even more power and a host of technological and design upgrades that deliver unmatched performance. No matter what your list includes, our exceptional new line helps you master it.\r\n\r\nDual battery port with auto switch over pulls power from a second battery once the first is depleted to eliminate downtime\r\nEasy fold aluminum handles with no visible cords, adjust and fold with a simple pull, great for vertical storage\r\nAuto-sensing technology automatically adjusts motor performance for greater power or runtime based on changing grass conditions from area to area\r\nBrushless motor provides more power and torque\r\nLED headlights illuminate your path in low light conditions\r\nOn-board indicator helps you monitor remaining battery charge\r\n6.0 Ah battery and charger included\r\n5-Year limited tool warranty and 3-year limited battery warranty', 'lawn-mower-video.mp4', '$849'),
(6, 'DEWALT 12-in Dual Bevel Compound Miter Saw', 'saw-1.jpg', '\r\n12-in Dual Bevel Compound Miter Saw\r\n\r\n15.0 Amp, 3,600 rpm motor provides extended power and durability while the adjustable stainless steel detent plate with 11 positive miter stops delivers repeatable accuracy and jobsite durability. Tall sliding fences support crown molding 6-5/8 In. nested and base molding 6-1/2 In. vertically against the fence while easily sliding out of the way for bevel cuts. Exclusive Back Fence Design delivers ability to cut 2 x 10 dimensional lumber at 90 degrees and 2 x 8 at 45. Cam lock miter handle with detent override deliver quick and accurate miter angles.\r\n\r\n15.0 Amp, 3,600 rpm motor provides extended power and durability\r\nEasy fold aluminum handles with no visible cords, adjust and fold with a simple pull, great for vertical storage\r\nAuto-sensing technology automatically adjusts motor performance for greater power or runtime based on changing grass conditions from area to area\r\nAdjustable stainless steel miter detent plate with 11 positive stops delivers repeatable accuracy and worksite durability\r\nTall sliding fences support up to 6-5/8 In. nested and base molding up to 6-1/2 In. vertically against the fence while easily sliding out of the way for bevel cuts\r\n3-year limited warranty\r\nSpindle lock allows for fast and easy blade changes with the included wrench, and the electric brake stops blade momentum for increased safety\r\nDust port with included bag helps keep work area free of debris', 'saw.mp4', '$549'),
(7, 'Bosch Glide 12-in 15-Amp Dual Bevel Sliding Compound Corded Miter Saw', 'saw-2.jpg', '\r\nGlide 12-in 15-Amp Dual Bevel Sliding Compound Corded Miter Saw\r\n\r\nThe Bosch-exclusive Axial-Glide offers wider cross-cuts, enhanced alignment and smooth glide for the life of the tool. The Bosch miter saw\'s 15 Amp motor delivers no-load speeds of 3,800 RPM for quick, accurate cuts in many materials. For added convenience and versatility, the saw is compatible with a variety of 12 In. blades and it has a clear lower guard to provide unobstructed cut-line visibility. The GCM12SD provides easy adjustments with upfront bevel and miter controls and detents at common angles. The saw\'s all-metal bevel lock lever and range selector are located up front to make bevel adjustments easy.\r\n\r\nThe Bosch GCM12SD is a 12 In. Dual-Bevel Glide miter saw that features a smooth cutting motion, accurate performance and a space-saving design of the Bosch-exclusive Axial-Glide system\r\nPre-aligned SquareLockfences help the saw maintain precision throughout its life\r\nA soft-grip ambidextrous handle along with a combination dust chute and vacuum adaptor add to user comfort\r\nThe saw also offers a large cutting capacity, easy-to-read bevel and miter scales with detents at common angles, and easy-access upfront controls\r\nIntegrated expanding base extensions: 60% more left-to-right material support than leading competitor - 40 In. left to right\r\nLarge easy-to-read uniform bevel and stainless steel miter scales: 52° left/60° right miter capacity; 47° left/47° right bevel capacity with marked detents and roof pitch angles\r\nAdjustable miter detents: detents at 0°, 15°, 31.6°, 22.5°, 45°, 60° right super-accurate and durable design\r\nPush-button miter Detent override - easy-to-access thumb actuated control right up front for fine miter angle adjustmentpublic/videos/saw.mp4', 'saw.mp4', '$799'),
(9, 'Metabo HPT (was Hitachi Power Tools) 10-in Compound Miter Saw', 'saw-3.jpg', '\r\n10-in Compound Miter Saw\r\n\r\nThe Metabo HPT C10FCGS 15 Amp 10 In. compound miter saw is ideal for trim carpenters, framers, and woodworkers who demand precision, reliability and versatility on the job. The 15 amp motor generates a no-load speed of up to 5,000 RPM for making crosscuts and miters with ease, even on the toughest cutting jobs. The C10FCG is lighter than its predecessor (model C10FCE2) weighing just 24.2 lbs. for easier transport. It\'s the lightest 10 In. compound miter saw in its class to date. It has a large table with a vice clamping system to hold your workpiece safely in place. The thumb-actuated positive miter stops allow for simple miter adjustments. The bevel has a range of 45-degrees to the left to provide clean and accurate bevel cuts. The C10FCG has a large extended flip fence which rises to 4 In. to allow for accurate cutting of large workpieces. To keep your work space clean and safe, a dust collector attachment is included. It is covered by Metabo HPT\'s 5-year warranty.\r\n\r\nTMOTOR: 15 Amp motor delivers high power for the toughest of cuts generating a no-load speed of up to 5,000 RPM\r\nLIGHTWEIGHT: Only 24.2 lbs. to facilitate maneuverability and portability\r\nMITER ANGLE RANGE: 0-52 degrees, to the right and left for increased flexibility\r\nBEVEL RANGE: 0-45 degrees, to the left with adjustable bevel stops for precision cuts\r\nLARGE TABLE: Offers better material support with vice clamping system to secure work piece\r\nTHUMB ACTUATED POSITIVE STOPS: For quick miter adjustments\r\nHORIZONTAL HANDLE: For a secure hold', 'saw.mp4', '$199'),
(10, 'CRAFTSMAN 20 V 7-1/4-in Sliding Miter Saw', 'saw-4.jpg', '\r\n20 V 7-1/4-in Sliding Miter Saw\r\n\r\nV20 7-1/4-in Cordless Sliding Miter Saw has a powerful motor designed for cutting 2x dimensional lumber, hardwoods, baseboard and trim with ease. The sliding 7-1/4-in blade allows for a cross cut capacity of up to 8-in while the 9 miter detents and single bevel blade allow for angled cuts. The LED light eliminates shadows and provides an accurate easy cut line to follow. With a lightweight design and side carry handles provides the user with additional portability..\r\n\r\nPOWERFUL MOTOR: 3,800 RPM motor for cutting 2X dimensional lumber, hardwoods, baseboard and trim with ease\r\nSLIDE CAPABILITIES: 8-in cross cut at 90 and 5-1/2-in cross cut at 45\r\nADDED CAPACITY: Cuts 3-5/8-in nested crowns and 3-1/2-in baseboards vertically\r\nACCURACY AND VISIBILITY: LED cut line positioning system\r\nQUICK AND ACCRUATE: 9 casted miter detent stops for adjustments\r\nSINGLE CHARGE: Makes up to 585 cuts in 3-1/4-in MDF baseboard on a single charge -on one charge with 4.0Ah battery\r\nPORTABILITY: Lightweight design with side carry handles\r\n20V MAX battery, maximum initial battery voltage (measured without a workload) is 20 volts, nominal voltage is 18', 'saw.mp4', '$329'),
(11, 'Bosch Profactor 12-in 8-Amp 18-Volt Dual Bevel Folding Cordless Mitre Saw', 'saw-5.jpg', '\r\nThis Bosch Surgeon 12 inches mitre saw features the Axial-Glide system and Biturbo brushless technology to deliver a professional cordless solution to the job site. The GCM18V-12GDC features the Bosch-exclusive Axial-Glide for wider crosscuts, enhanced alignment and smooth glide for the life of the tool. This system features and articulating arm with no slide arms behind the saw, so it takes less space than a sliding-rail mitre saw. It delivers a large cutting capacity, with a 4.7 inches depth and a 15.7 inches width/crosscut. The bevel controls are upfront for easy access. This compact saw is portable while being compatible with a variety of 12 inches blades. This mitre saw is part of the Profactor system, which pairs Biturbo brushless technology with a Core 18 V Profactor battery. Biturbo brushless technology is a high-performance motor and drive-train system designed to deliver power comparable to high-demand corded tools.\r\n\r\nSurgeon Profactor performance: for a truly mobile jobsite solution, this saw provides light weight and pro capacity\r\n\r\nAxial-Glide system: has an articulating arm, for wider cross-cuts enhanced alignment, and smooth glide while taking less space\r\nLarge cutting capacity: features a cut capacity of 4.7 inches depth and a 15.7 inches width cross-cut\r\nBiturbo brushless technology: featuring a brushless high-performance motor and drive-train system engineered to take full advantage of the additional power generated by Core 18 V Profactor batteries (sold separately)\r\nConvenient portability: weighs only 59.3 lbs (tool only, not including battery)\r\nEco mode: extends the battery runtime by up to 20%, for getting work done\r\nLarge easy-to-read uniform bevel and stainless steel miter scales: 52° left/60° right miter capacity; 47° left/47° right bevel capacity with marked detents and roof pitch angles\r\nIntegrated base extensions: extend material support up to 43 inches\r\nTall fence design: supports taller material for accurate cuts with 4 3/4 inches fences', 'saw.mp4', '$1099'),
(12, 'BLACK & DECKER 12-Volt Max 3/8-in Variable Speed Cordless Drill (1 -Battery Included and Charger Included)\r\n$79.99', 'drill-1.jpg', '\r\n12-Volt Max 3/8-in Variable Speed Cordless Drill (1 -Battery Included and Charger Included)\r\n\r\nPerfect combination of power and performance in a compact size. 35% Smaller than the previous 12-volt nicad version (GCO1200C). Powerful 550 RPM motor with 11-position clutch can tackle most projects while the compact 2.18-lb design eliminates struggle of fitting into tight corners and spaces. LED work light, keyless chuck and ergonomic handle allow for convenience and enhanced user ability.\r\n\r\nIncludes (1) 12-volt MAX cordless drill/driver, (1) 12-volt MAX battery, (1) charger and (1) double-ende\r\nLED work light illuminates the surface for easier drilling in dark places\r\nSoft grip handle provides added comfort during use\r\nLi-ion battery is always ready - holds a charge for up to 18 months\r\nMaximum initial battery voltage (measured without a workload) is 12-volts; nominal voltage is 10.8\r\n11 position clutch for precision control\r\nKeyless chuck for quick and easy bit changes\r\nVariable speed trigger', 'drill.mp4', '$79.99'),
(13, 'CRAFTSMAN 20-Volt Max 1/2-in Variable Speed Cordless Drill (1 -Battery Included and Charger Included)', 'drill-2.jpg', '\r\n20-Volt Max 1/2-in Variable Speed Cordless Drill (1 -Battery Included and Charger Included)\r\n\r\nV20, 1/2-in Cordless Drill/Driver (1 Battery) is ready for your drilling and fastening needs featuring a high performance motor providing you the power needed to help complete a variety of applications. Need to work in a dark area, no worries. The Drill/Driver has you covered featuring an LED light to help improve visibility in dark work areas.\r\n\r\nHIGH PERFORMANCE: Produces 280 unit watts out for completing a variety of applications\r\nINCREASED SPEED: 2-Speed gearbox with speeds of 0-350/0-1,500\r\nEASY BIT CHANGES: 1/2-in keyless chuck\r\nIMPROVED VISIBILITY: LED light helps in dark work areas\r\nCommon applications include drilling and fastening in soft and hard wood\r\nIncludes (1) CMCD700 Drill/Driver; (1) Double sided bit; (1) V20 20V MAX 1.3Ah Lithium Ion Battery; (1) V20 20V MAX Lithium Ion Charger\r\n20V MAX battery, maximum initial battery voltage (measured without a workload) is 20 volts, nominal voltage is 18', 'drill.mp4', '$109'),
(14, 'WORX 20-Volt Max 3/8-in Variable Speed Cordless Drill (1 -Battery Included and Charger Included)', 'drill-3.jpg', '\r\n20-Volt Max 3/8-in Variable Speed Cordless Drill (1 -Battery Included and Charger Included)\r\n\r\nWith Advanced Intelligence Technology, the Ai drill makes every project easier\r\n\r\nThe motorized BITLOCK automatically tightens around the bit with 30% more holding force than the average manual chuck\r\nSAFEDRIVE stops a driven screw flush with the work surface to prevent damage to the work, and damage to the screw\r\nPULSE ASSIST helps prevent the bit from slipping when drilling hard surfaces, or driving or removing soft or worn screws\r\nThe bright LED light illuminates dark work zones, and has prelight and stay-on enhancements\r\n180 in-lbs max torque 0-800 rpm 3/8in chuck and 1in drilling capacity in wood 3/8in in steel\r\n1Includes one 1.5Ah Lithium Ion battery, 5 hour charger, double ended screwdriving bit and carry bag\r\nKeyless chuck for quick and easy bit changes\r\nPart of the Worx 20V Powershare program', 'drill.mp4', '$149'),
(15, 'DEWALT 8 Amp 3/8-in VSR Corded Drill Kit', 'drill-4.jpg', '\r\n8 Amp 3/8-in VSR Corded Drill Kit\r\n\r\n8-amp motor handles heavy-duty tasks\r\n\r\n3/8-in ratcheting keyless chuck for greater bit retention\r\nVariable speed (0-2,500-RPM) for a variety of drilling and fastening applications\r\nSoft, pistol-grip handle design offers comfort and increased gripping surface\r\n8-ft cord length\r\nIncludes heavy-duty kit bag\r\n3-year base warranty', 'drill.mp4', '$109'),
(16, 'Kobalt 24-Volt XTR Brushless Drill/Driver Kit', 'drill-5.jpg', '\r\n224-Volt XTR Brushless Drill/Driver Kit\r\n\r\nIntroducing the most powerful line of KOBALT Power Tools - Kobalt 24V Max XTR! The XTR Drill Driver is designed with a brushless motor that delivers up to 50% Extra Performance and Power to meet your most demanding jobs. While the compact design allows you to work in tight spaces and reduce fatigue. XTR, elevating the Kobalt 24-volt Max system to new heights.\r\n\r\nBrushless motor delivers up to 1,200 in-lbs of torque\r\nAnti-kickback technology for improved control\r\n2-Speed gear box and variable-speed trigger with 24-position clutch\r\nBuilt-in LED work light to illuminate work area\r\n4.0 Ah Ultimate Output battery and charger included\r\nCompact design for tight spaces and reduced fatigue\r\nKobalt has a 5-year tool warranty and a 3-year battery warranty', 'drill.mp4', '$229'),
(17, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;