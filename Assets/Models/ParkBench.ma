//Maya ASCII 2024 scene
//Name: ParkBench.ma
//Last modified: Fri, Mar 07, 2025 12:09:54 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.4";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Enterprise v2009 (Build: 19045)";
fileInfo "UUID" "E0021E1B-4842-4BE9-3004-BBAE7D9D6138";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "44E1A9AB-4A1D-539D-4A3D-DCA11A00CA24";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.5411816020066773 40.424813141383012 64.549837648703203 ;
	setAttr ".r" -type "double3" 686.39999999998759 -727.99999999991212 -8.0295295331108422e-16 ;
	setAttr ".rpt" -type "double3" -5.9299527552079131e-16 -2.2238425770406595e-15 5.9929288565511959e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5DFCCC59-4C4F-AB72-203B-AF878DF68426";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 64.756178642445064;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8.0721073150634766 3.5941545963287354 11.545564651489258 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "2E9636E1-4A24-50A3-7807-D9843EB0BC07";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.10432466878607594 1000.1 7.3662391343676354 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "77D11F2B-4E0D-7A34-EB78-3092046EEB5A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.1268623580038755;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "6A28A19F-44E6-546B-4C57-C6A93129E4B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.623804556069536 10.135860198404107 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "27697CD7-4274-F2C8-9754-B3884B8CA264";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 27.241398101930059;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "6160712C-4706-353E-B54E-1AB308FE6467";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1013782783969 5.0528732520258641 8.0931356311194627 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7EEFEDD4-4CF1-4061-0E28-F8948283A87A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 987.21786858286691;
	setAttr ".ow" 37.206327080991976;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 12.883509695529938 4.4600048101042766 12.274233329418129 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Bench";
	rename -uid "3AD36BED-4428-DE1C-ADE0-83BAA0238D9C";
	setAttr ".rp" -type "double3" 0 4.3441543018912334 11.795565116527504 ;
	setAttr ".sp" -type "double3" 0 4.3441543018912334 11.795565116527504 ;
createNode mesh -n "BenchShape" -p "Bench";
	rename -uid "8D4B99EF-418E-8201-D357-CBA6A28F8430";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49984924495220184 0.4865412712097168 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "BenchShape1" -p "Bench";
	rename -uid "E6A73698-4670-BE81-71C9-37BAF398CC92";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:126]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 5 "f[5]" "f[10]" "f[68]" "f[116]" "f[121]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[49]" "e[52]" "e[58]" "e[60]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[3:4]";
	setAttr ".gtag[3].gtagnm" -type "string" "front";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[8]" "f[76]" "f[113:114]" "f[118:119]";
	setAttr ".gtag[4].gtagnm" -type "string" "left";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[11]" "f[115]" "f[122]";
	setAttr ".gtag[5].gtagnm" -type "string" "right";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 15 "f[0:2]" "f[14:15]" "f[18:39]" "f[41:67]" "f[69:71]" "f[73:74]" "f[77:80]" "f[82:87]" "f[89]" "f[91:93]" "f[98]" "f[101]" "f[117]" "f[120]" "f[123:126]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 13 "f[6:7]" "f[9]" "f[12:13]" "f[16:17]" "f[40]" "f[72]" "f[75]" "f[81]" "f[88]" "f[90]" "f[94:97]" "f[99:100]" "f[102:112]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 159 ".uvst[0].uvsp[0:158]" -type "float2" 0.625 0.24226889
		 0.625 0 0.625 0 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.625 0.2475061 0.625 0 0.625 0.24002439
		 0.625 0.25 0.625 0 0.5 0.25 0.5 0.25 0.5 0.25 0.5 0.25 0.375 0.75 0.625 0.75 0.625
		 1 0.375 1 0.5 1 0.5 0.75 0.61874193 0.74999839 0.61872369 0.99998748 0.61874998 0.5
		 0.61874998 0.5 0.61874998 0.5 0.5 0 0.61874199 6.2496874e-06 0.61874998 0.25 0.61874998
		 0.5 0.375 0.5 0.625 0.5 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.61874998 0.25 0.61873806
		 0.25 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.61873662 0.25 0.875 0 0.875
		 0 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.875 0 0.875 0 0.875 0 0.625 0 0.625 0 0.625
		 0 0.875 0 0.875 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.875 0 0.875 0 0.625 0
		 0.625 0 0.625 0 0.625 0 0.625 0 0.875 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625
		 0 0.625 0 0.87500012 0 0.875 0 0.625 0 0.87500006 0 0.625 0 0.87500006 0 0.62500453
		 0 0.87499589 0 0.87499672 0 0.62500364 0 0.625 0 0.625 0 0.87500006 0 0.625 0 0.875
		 0 0.875 0 0.625 0 0.625 0 0.625 0 0.875 0 0.625 0 0.875 0 0.875 0 0.625 0.5 0.625
		 0.75 0.625 0 0.875 0 0.875 0 0.625 0.5 0.625 0.5 0.625 0 0.625 0.25 0.875 0 0.625
		 0 0.625 0 0.625 0.5 0.875 0.25 0.875 0.25 0.625 0 0.625 0 0.875 0.25 0.625 0.25 0.875
		 0.25 0.62498748 0.25 0.625 0.5 0.625 0.5 0.62498593 0.25 0.625 0.25 0.625 0.5 0.625
		 0.5 0.625 0.25 0.625 0.5 0.625 0.5 0.625 0.25 0.625 0.24874204 0.625 0.24837683 0.625
		 0.25 0.625 0.24959421 0.625 0.25 0.56303853 0.034662187 0.56303853 0.014112294 0.42880949
		 0.014112294 0.42880946 0.034662187 0.375 0.03466225 0.375 0.71533775 0.125 0.03466225
		 0.625 0.71533775 0.875 0.034662247 0.625 0.034662247 0.625 0.014112283 0.625 0.73588771
		 0.875 0.014112283 0.375 0.73588771 0.125 0.014112285 0.375 0.014112285 0.875 0 0.875
		 0.25 0.875 0.25 0.875 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[29]" -type "float3" 0 0.29181722 0 ;
	setAttr ".pt[30]" -type "float3" 0 0.29181722 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.29181722 0 ;
	setAttr ".pt[43]" -type "float3" 0 0.29181722 0 ;
	setAttr -s 134 ".vt[0:133]"  12.67257786 5.094154358 12.32004166 12.5 3.59415436 12.32062149
		 12.67257786 3.59415436 12.32062149 0 5.094154358 11.54556465 8.8817842e-16 5.32585526 11.54556465
		 8.8817842e-16 5.32585526 11.040491104 0 5.094154358 11.040491104 13.075264931 5.094154358 12.32043457
		 13.075264931 3.59415436 12.32062149 12.5 5.094154358 12.31987381 13.26701927 5.094154358 12.32062149
		 13.26701927 3.59415436 12.32062149 0 5.094154358 12.045564651 8.8817842e-16 5.32585526 12.045564651
		 0 5.094154358 12.31987381 8.8817842e-16 5.32585526 12.31987381 12.51114941 0.034668684 7.25368595
		 13.26114941 0.034668684 7.25368595 13.26114941 0.034668684 8.0036859512 12.51114941 0.034668684 8.0036859512
		 0 3.59415436 12.045564651 0 3.59415436 11.54556465 11.17738056 3.59415436 11.54556465
		 11.17738056 3.59415436 12.045564651 11.17738056 5.094154358 11.54556465 11.17738056 5.32585526 11.040491104
		 11.17738056 5.094154358 11.040491104 11.17738056 5.094154358 12.045564651 11.17738056 5.32585526 11.54556465
		 12.51114941 5.034668922 7.25368595 13.26114941 5.034668922 7.25368595 12.51114941 5.034668922 8.0036859512
		 11.17738056 5.32585526 12.045564651 11.17738056 5.094154358 12.31987381 13.075264931 0.31691456 8.0036859512
		 13.075264931 0.31691456 11.54556465 12.67257786 0.31691456 11.54556465 12.67257786 0.31691456 8.0036859512
		 12.67257786 0.72791243 11.54556465 12.67257786 0.72791243 8.0036859512 11.17738056 5.32585526 12.31987381
		 13.075264931 0.72791243 8.0036859512 13.075264931 0.72791243 11.54556465 13.26114941 5.034668922 8.0036859512
		 12.5 0.31691456 11.54556465 12.67257786 0.012471199 11.54556465 12.5 0.012471199 11.54556465
		 12.5 0.012471199 12.045564651 12.67257786 0.012471199 12.045564651 12.5 0.31691456 12.045564651
		 13.075264931 0.012471199 11.54556465 12.5 0.72791243 11.54556465 13.075264931 0.012471199 12.045564651
		 12.67257786 0.012471199 12.32062149 12.5 0.012471199 12.32062149 12.5 0.72791243 12.045564651
		 12.5 0.31691456 12.32062149 13.26701927 0.31691456 11.54556465 13.26701927 0.012471199 11.54556465
		 13.26701927 0.012471199 12.045564651 13.075264931 0.012471199 12.32062149 12.67257786 0.31691456 12.32062149
		 12.5 0.72791243 12.32062149 13.26701927 0.31691456 12.045564651 13.26701927 0.72791243 11.54556465
		 13.075264931 0.31691456 12.32062149 13.26701927 0.012471199 12.32062149 12.67257786 0.72791243 12.32062149
		 13.26701927 0.72791243 12.045564651 13.26701927 0.31691456 12.32062149 13.075264931 0.72791243 12.32062149
		 13.26701927 0.72791243 12.32062149 12.5 3.05690217 11.54556465 12.67257786 3.05690217 11.54556465
		 12.5 3.05690217 12.045564651 13.075264931 3.05690217 11.54556465 12.5 3.05690217 12.32062149
		 13.26701927 3.05690217 11.54556465 11.37807178 3.48387718 11.54556465 11.37807178 3.48387718 12.045564651
		 12.67257786 3.05690217 12.32062149 13.26701927 3.05690217 12.045564651 12.18083954 3.2791822 11.54556465
		 12.18083954 3.2791822 12.045564651 12.5 3.59415436 11.54556465 12.5 3.43942118 11.54556465
		 13.075264931 3.05690217 12.32062149 12.5 3.59415436 12.045564651 13.26701927 3.05690217 12.32062149
		 12.67257786 3.43942118 11.54556465 12.5 3.43942118 12.045564651 12.67257786 3.59415436 11.54556465
		 13.075264931 3.43942118 11.54556465 12.5 5.094154358 11.54556465 12.5 3.43942118 12.32062149
		 13.075264931 3.59415436 11.54556465 13.26701927 3.43942118 11.54556465 12.5 5.094154358 11.040491104
		 12.5 5.32585526 11.040491104 12.67257786 3.43942118 12.32062149 12.5 5.094154358 12.045564651
		 13.26701927 3.59415436 11.54556465 13.26701927 3.43942118 12.045564651 13.075264931 3.43942118 12.32062149
		 12.5 5.32585526 11.54556465 12.67257786 5.094154358 11.54556465 13.26701927 3.59415436 12.045564651
		 13.26701927 3.43942118 12.32062149 13.075264931 5.094154358 11.54556465 12.5 5.32585526 12.045564651
		 13.26701927 5.094154358 11.54556465 12.67257786 5.32585526 11.54556465 12.5 5.32585526 12.31987381
		 13.26701927 5.094154358 12.045564651 13.075264931 5.32585526 11.54556465 12.67257786 5.32585526 12.045564651
		 13.26701927 5.32585526 11.54556465 13.075264931 5.32585526 12.045564651 12.67257786 5.32585526 12.32004166
		 13.26701927 5.32585526 12.045564651 13.075264931 5.32585526 12.32043457 13.26701927 5.32585526 12.32062149
		 12.51114941 0.72791374 8.0036859512 12.51114941 0.72791374 7.25368595 13.26114941 0.72791368 7.25368595
		 13.26114941 0.72791368 8.0036859512 13.26114941 0.31691435 8.0036859512 13.26114941 0.31691435 7.25368595
		 12.51114845 0.31691438 7.25368595 12.51114845 0.31691438 8.0036859512 12.67257786 5.094154358 8.062894821
		 12.67257786 3.59415436 8.062894821 13.075264931 5.094154358 8.062894821 13.075264931 3.59415436 8.062894821;
	setAttr -s 266 ".ed";
	setAttr ".ed[0:165]"  1 2 1 2 0 1 4 5 0 5 6 0 6 3 0 2 8 1 8 7 1 9 1 0 0 9 1
		 8 11 1 11 10 0 7 0 1 10 7 1 13 4 0 12 14 0 14 15 0 15 13 0 16 17 0 17 18 0 18 19 0
		 19 16 0 20 21 0 21 22 0 22 23 0 23 20 0 21 3 0 3 24 0 24 22 1 25 26 1 26 6 0 5 25 0
		 26 24 1 12 20 0 23 27 1 27 12 0 4 28 1 28 25 1 29 30 0 30 124 0 16 128 0 19 129 0
		 31 29 0 13 32 1 32 28 1 27 33 1 33 14 0 34 35 0 35 36 0 36 37 0 37 34 0 36 38 0 38 39 0
		 39 37 0 40 32 1 15 40 0 33 40 1 41 42 0 42 35 0 34 41 0 38 42 0 41 39 0 30 43 0 43 125 0
		 44 36 1 36 45 1 45 46 0 46 44 0 47 46 0 45 48 1 48 47 1 49 44 1 47 49 1 35 50 1 50 45 0
		 51 38 1 44 51 0 50 52 1 52 48 1 48 53 1 53 54 0 54 47 0 55 51 1 49 55 1 56 49 1 54 56 0
		 35 57 1 57 58 0 58 50 0 58 59 0 59 52 1 52 60 1 60 53 0 53 61 1 61 56 1 62 55 1 56 62 0
		 57 63 1 63 59 1 42 64 1 64 57 0 60 65 1 65 61 1 59 66 0 66 60 0 61 67 1 67 62 1 31 43 0
		 64 68 1 68 63 1 63 69 1 69 66 0 69 65 1 65 70 1 70 67 1 68 71 1 71 69 0 71 70 1 72 73 1
		 73 38 1 51 72 0 74 72 0 55 74 1 73 75 1 75 42 1 76 74 1 62 76 0 75 77 1 77 64 0 23 22 0
		 22 78 0 78 79 1 79 23 0 67 80 1 80 76 1 77 81 1 81 68 1 78 82 0 82 83 0 83 79 0 84 85 1
		 85 78 1 22 84 0 85 72 1 72 82 0 70 86 1 86 80 1 87 84 0 84 22 0 22 23 0 23 87 0 74 83 0
		 81 88 1 88 71 0 85 89 1 89 73 1 88 86 1 79 90 1 90 87 0 87 23 0 74 90 0 84 91 1 91 89 1
		 89 92 1 92 75 1 24 93 0 93 84 1;
	setAttr ".ed[166:265]" 84 22 0 94 90 1 76 94 0 91 95 0 95 92 1 92 96 1 96 77 0
		 97 26 0 25 98 0 98 97 0 80 99 1 99 94 1 1 87 1 94 1 0 97 93 0 23 87 0 87 100 0 100 27 0
		 95 101 1 101 96 0 96 102 1 102 81 1 99 2 1 86 103 1 103 99 1 28 104 1 104 98 0 93 105 1
		 105 91 0 101 106 1 106 102 1 102 107 1 107 88 0 103 8 1 107 103 1 105 108 0 108 95 0
		 32 109 1 109 104 1 106 11 1 11 107 0 104 93 0 9 100 0 108 110 1 110 101 0 9 33 0
		 104 111 0 111 105 1 40 112 0 112 109 0 9 112 0 110 113 1 113 106 1 111 114 0 114 108 1
		 109 115 1 115 111 1 113 10 1 114 116 0 116 110 0 115 117 1 117 114 1 118 115 1 112 118 0
		 0 118 1 116 119 0 119 113 1 117 119 1 120 117 1 118 120 0 7 120 1 119 121 0 121 10 0
		 120 121 0 122 31 0 39 122 1 123 29 0 124 127 0 125 126 0 122 123 1 123 124 1 124 125 1
		 125 41 1 126 18 0 127 17 0 128 123 0 129 122 0 34 126 1 126 127 1 127 128 1 128 129 1
		 129 37 1 105 130 0 91 131 0 130 131 0 108 132 0 130 132 0 95 133 0 132 133 0 131 133 0;
	setAttr -s 127 -ch 512 ".fc[0:126]" -type "polyFaces" 
		f 4 0 1 8 7
		mu 0 4 1 2 0 9
		f 4 5 6 11 -2
		mu 0 4 2 8 7 0
		f 4 9 10 12 -7
		mu 0 4 8 11 10 7
		f 4 17 18 19 20
		mu 0 4 16 17 18 19
		f 4 21 22 23 24
		mu 0 4 20 21 22 23
		f 4 25 26 27 -23
		mu 0 4 21 3 24 22
		f 4 28 29 -4 30
		mu 0 4 25 26 6 5
		f 4 31 -27 -5 -30
		mu 0 4 26 24 3 6
		f 4 32 -25 33 34
		mu 0 4 12 27 28 29
		f 4 35 36 -31 -3
		mu 0 4 4 30 25 5
		f 4 246 243 255 251
		mu 0 4 144 146 150 152
		f 4 256 252 245 -252
		mu 0 4 153 154 143 145
		f 4 -14 42 43 -36
		mu 0 4 4 13 37 30
		f 4 -35 44 45 -15
		mu 0 4 12 29 38 14
		f 4 46 47 48 49
		mu 0 4 39 40 41 42
		f 4 -49 50 51 52
		mu 0 4 42 41 43 44
		f 4 53 -43 -17 54
		mu 0 4 45 37 13 15
		f 4 -46 55 -55 -16
		mu 0 4 14 38 45 15
		f 4 56 57 -47 58
		mu 0 4 46 47 40 39
		f 4 -52 59 -57 60
		mu 0 4 44 43 47 46
		f 4 254 -244 247 244
		mu 0 4 149 151 147 148
		f 4 63 64 65 66
		mu 0 4 52 41 53 54
		f 4 67 -66 68 69
		mu 0 4 55 54 53 56
		f 4 70 -67 -68 71
		mu 0 4 57 52 54 55
		f 4 -65 -48 72 73
		mu 0 4 53 41 40 58
		f 4 74 -51 -64 75
		mu 0 4 59 43 41 52
		f 4 -69 -74 76 77
		mu 0 4 56 53 58 60
		f 4 -70 78 79 80
		mu 0 4 55 56 61 62
		f 4 81 -76 -71 82
		mu 0 4 63 59 52 57
		f 4 83 -72 -81 84
		mu 0 4 64 57 55 62
		f 4 -73 85 86 87
		mu 0 4 58 40 65 66
		f 4 -77 -88 88 89
		mu 0 4 60 58 66 67
		f 4 -79 -78 90 91
		mu 0 4 61 56 60 68
		f 4 92 93 -85 -80
		mu 0 4 61 69 64 62
		f 4 94 -83 -84 95
		mu 0 4 70 63 57 64
		f 4 96 97 -89 -87
		mu 0 4 65 71 67 66
		f 4 -58 98 99 -86
		mu 0 4 40 47 72 65
		f 4 100 101 -93 -92
		mu 0 4 68 73 69 61
		f 4 -91 -90 102 103
		mu 0 4 68 60 67 74
		f 4 104 105 -96 -94
		mu 0 4 69 75 70 64
		f 4 106 -62 -38 -42
		mu 0 4 35 51 32 31
		f 4 107 108 -97 -100
		mu 0 4 72 76 71 65
		f 4 109 110 -103 -98
		mu 0 4 71 77 74 67
		f 4 111 -101 -104 -111
		mu 0 4 77 73 68 74
		f 4 112 113 -105 -102
		mu 0 4 73 78 75 69
		f 4 114 115 -110 -109
		mu 0 4 76 79 77 71
		f 4 116 -113 -112 -116
		mu 0 4 79 78 73 77
		f 4 117 118 -75 119
		mu 0 4 80 81 43 59
		f 4 120 -120 -82 121
		mu 0 4 82 80 59 63
		f 4 -119 122 123 -60
		mu 0 4 43 81 83 47
		f 4 124 -122 -95 125
		mu 0 4 84 82 63 70
		f 4 -124 126 127 -99
		mu 0 4 47 83 85 72
		f 4 128 129 130 131
		mu 0 4 86 87 88 89
		f 4 132 133 -126 -106
		mu 0 4 75 90 84 70
		f 4 134 135 -108 -128
		mu 0 4 85 91 76 72
		f 4 -131 136 137 138
		mu 0 4 89 88 92 93
		f 4 139 140 -130 141
		mu 0 4 94 95 88 87
		f 4 -141 142 143 -137
		mu 0 4 88 95 80 92
		f 4 144 145 -133 -114
		mu 0 4 78 96 90 75
		f 4 146 147 148 149
		mu 0 4 97 94 87 86
		f 4 -121 150 -138 -144
		mu 0 4 80 82 93 92
		f 4 151 152 -115 -136
		mu 0 4 91 98 79 76
		f 4 153 154 -118 -143
		mu 0 4 95 99 81 80
		f 4 155 -145 -117 -153
		mu 0 4 98 96 78 79
		f 4 156 157 158 -132
		mu 0 4 89 100 97 86
		f 4 159 -157 -139 -151
		mu 0 4 82 100 89 93
		f 4 160 161 -154 -140
		mu 0 4 94 101 99 95
		f 4 -155 162 163 -123
		mu 0 4 81 99 102 83
		f 4 -28 164 165 166
		mu 0 4 22 24 103 104
		f 4 167 -160 -125 168
		mu 0 4 105 100 82 84
		f 4 -162 169 170 -163
		mu 0 4 99 101 106 102
		f 4 -164 171 172 -127
		mu 0 4 83 102 107 85
		f 4 173 -29 174 175
		mu 0 4 108 26 25 109
		f 4 176 177 -169 -134
		mu 0 4 90 110 105 84
		f 4 178 -158 -168 179
		mu 0 4 1 97 100 105
		f 4 -165 -32 -174 180
		mu 0 4 103 24 26 108
		f 4 -34 181 182 183
		mu 0 4 29 28 97 111
		f 4 -171 184 185 -172
		mu 0 4 102 106 112 107
		f 4 186 187 -135 -173
		mu 0 4 107 113 91 85
		f 4 188 -1 -180 -178
		mu 0 4 110 2 1 105
		f 4 189 190 -177 -146
		mu 0 4 96 114 110 90
		f 4 -37 191 192 -175
		mu 0 4 25 30 115 109
		f 4 -166 193 194 -161
		mu 0 4 94 116 117 101
		f 4 195 196 -187 -186
		mu 0 4 112 118 113 107
		f 4 197 198 -152 -188
		mu 0 4 113 119 98 91
		f 4 199 -6 -189 -191
		mu 0 4 114 8 2 110
		f 4 200 -190 -156 -199
		mu 0 4 119 114 96 98
		f 4 -261 262 264 -266
		mu 0 4 155 156 157 158
		f 4 -44 203 204 -192
		mu 0 4 30 37 121 115
		f 4 205 206 -198 -197
		mu 0 4 118 11 119 113
		f 4 207 -181 -176 -193
		mu 0 4 115 103 108 109
		f 4 -10 -200 -201 -207
		mu 0 4 11 8 114 119
		f 4 -183 -179 -8 208
		mu 0 4 111 97 1 9
		f 4 -203 209 210 -185
		mu 0 4 106 120 122 112
		f 4 -45 -184 -209 211
		mu 0 4 38 29 111 123
		f 4 -208 212 213 -194
		mu 0 4 103 115 124 125
		f 4 -204 -54 214 215
		mu 0 4 121 37 45 126
		f 4 -56 -212 216 -215
		mu 0 4 45 38 123 126
		f 4 -196 -211 217 218
		mu 0 4 118 112 122 127
		f 4 -214 219 220 -202
		mu 0 4 125 124 128 129
		f 4 -205 221 222 -213
		mu 0 4 115 121 130 124
		f 4 -219 223 -11 -206
		mu 0 4 118 127 10 11
		f 4 -221 224 225 -210
		mu 0 4 129 128 131 132
		f 4 -223 226 227 -220
		mu 0 4 124 130 133 128
		f 4 228 -222 -216 229
		mu 0 4 134 130 121 135
		f 4 -217 -9 230 -230
		mu 0 4 135 9 0 134
		f 4 -218 -226 231 232
		mu 0 4 127 132 131 136
		f 4 -228 233 -232 -225
		mu 0 4 128 133 136 131
		f 4 234 -227 -229 235
		mu 0 4 137 133 130 134
		f 4 -231 -12 236 -236
		mu 0 4 134 0 7 137
		f 4 -233 237 238 -224
		mu 0 4 127 136 138 10
		f 4 -234 -235 239 -238
		mu 0 4 136 133 137 138
		f 4 -237 -13 -239 -240
		mu 0 4 137 7 10 138
		f 4 -59 253 -245 248
		mu 0 4 139 140 149 148
		f 4 257 -53 241 -253
		mu 0 4 154 141 142 143
		f 4 -246 240 41 -243
		mu 0 4 145 143 35 36
		f 4 37 38 -247 242
		mu 0 4 31 32 146 144
		f 4 -248 -39 61 62
		mu 0 4 148 147 50 51
		f 6 -242 -61 -249 -63 -107 -241
		mu 0 6 143 142 139 148 51 35
		f 6 -50 -258 -41 -20 -250 -254
		mu 0 6 140 141 154 34 48 149
		f 4 -19 -251 -255 249
		mu 0 4 48 49 151 149
		f 4 -256 250 -18 39
		mu 0 4 152 150 17 16
		f 4 -21 40 -257 -40
		mu 0 4 33 34 154 153
		f 4 -195 258 260 -260
		mu 0 4 101 117 156 155
		f 4 201 261 -263 -259
		mu 0 4 117 120 157 156
		f 4 202 263 -265 -262
		mu 0 4 120 106 158 157
		f 4 -170 259 265 -264
		mu 0 4 106 101 155 158;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3983F7EF-498F-D66F-BED9-EEAC2EE36B74";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7E302DA0-440B-5C7D-4606-95A674FC965D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EE9A56E1-4F2F-7EDB-C86C-43A1929B088B";
createNode displayLayerManager -n "layerManager";
	rename -uid "E5AE7AD7-49D6-5DF5-E7BC-D59682262C87";
createNode displayLayer -n "defaultLayer";
	rename -uid "547554FB-4EE1-27CF-86EC-1591CF0755DE";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "61B747C3-45CD-3CF4-BCF2-1EBB10D4CCF3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A560441A-4E18-822D-D255-6A918154BAD9";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "33D53E54-4C6C-013B-FB41-5F8A8FEAFEE9";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1566.666604412929 -145.23808946685207 ;
	setAttr ".tgi[0].vh" -type "double2" 1495.2380358226742 148.80951789636484 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F7CB61CE-41F3-C9F8-FB67-60B5E3D77488";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2639\n            -height 1078\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2639\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2639\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 100 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B5AE0D86-4829-EB52-83B6-1FBC5CD72F66";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 250 -ast 1 -aet 250 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "B8877277-4921-6551-94BC-DDBC62818D4C";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit1";
	rename -uid "C930547B-41EF-662E-D167-5292DBA946FE";
	setAttr -s 8 ".e[0:7]"  1 0.24784601 0.75215399 0.24784601 0.75215399
		 0.75215399 0.75215399 0;
	setAttr -s 8 ".d[0:7]"  -2147483599 -2147483629 -2147483631 -2147483393 -2147483402 -2147483611 
		-2147483542 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "898B3623-4A88-27F4-6E3B-D49C11B18647";
	setAttr -s 8 ".e[0:7]"  0 0.71383798 0.28616199 0.71383601 0.28616199
		 0.28616199 0.28616199 1;
	setAttr -s 8 ".d[0:7]"  -2147483599 -2147483382 -2147483631 -2147483380 -2147483402 -2147483611 
		-2147483542 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "B0CD7E62-4AC1-DC7A-2B06-E5ACF948733F";
	setAttr -s 9 ".e[0:8]"  0.050000001 0.94999999 0.94999999 0.94999999
		 0.94999999 0.050000001 0.050000001 0.050000001 0.050000001;
	setAttr -s 9 ".d[0:8]"  -2147483610 -2147483372 -2147483359 -2147483406 -2147483408 -2147483357 
		-2147483370 -2147483586 -2147483610;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "5A203921-48E8-0C6C-1261-2086F87F0E87";
	setAttr -s 9 ".e[0:8]"  0.652632 0.652632 0.652632 0.652632 0.347368
		 0.347368 0.347368 0.347368 0.652632;
	setAttr -s 9 ".d[0:8]"  -2147483408 -2147483406 -2147483359 -2147483372 -2147483356 -2147483349 
		-2147483350 -2147483351 -2147483408;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "7ECAECC8-4E4B-09F5-EE82-80AC20321327";
	setAttr ".dc" -type "componentList" 1 "f[155]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "5E32DD7C-477A-E98D-0173-ABA80A8B3BA4";
	setAttr ".dc" -type "componentList" 1 "f[87]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "F5DBE5BB-4071-4C9F-F559-C09E49538BD1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[158]" -type "float2" -7.4329431e-13 -0.0025179384 ;
	setAttr ".uvtk[191]" -type "float2" 8.360704e-07 -1.1398541e-07 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "EA924084-4B71-7A70-EA36-4A90F039E125";
	setAttr ".ics" -type "componentList" 2 "vtx[133]" "vtx[160]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak1";
	rename -uid "4A03AFDA-488E-89CC-4312-5AA2B6D1214D";
	setAttr ".uopa" yes;
	setAttr ".tk[133]" -type "float3"  -9.5367432e-07 -0.015124798 -0.05920887;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "58A392D8-4EA4-218C-B171-49B2B82D0618";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[155]" -type "float2" 1.6020518e-13 -0.0025176133 ;
	setAttr ".uvtk[192]" -type "float2" -2.6821448e-07 -1.2984307e-07 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "F7F8639A-45E5-0CF6-D8C9-DA9175AB65A1";
	setAttr ".ics" -type "componentList" 2 "vtx[131]" "vtx[160]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak2";
	rename -uid "33E6F315-4B29-BEB9-B810-E8A766F8769B";
	setAttr ".uopa" yes;
	setAttr ".tk[131]" -type "float3"  0 -0.015125036 -0.05920887;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "83556D0C-445F-6F8C-BA7C-2599C8E8201E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[156]" -type "float2" 7.0221606e-13 0.00039798557 ;
	setAttr ".uvtk[180]" -type "float2" 2.2165902e-06 -2.2680096e-07 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "B56D4094-440D-88EA-0B8F-0BA9F9B6EC34";
	setAttr ".ics" -type "componentList" 2 "vtx[130]" "vtx[151]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak3";
	rename -uid "6373F191-4677-2BAC-26F6-73AE287A731A";
	setAttr ".uopa" yes;
	setAttr ".tk[130]" -type "float3"  0 0.0024023056 -0.05920887;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "8F547616-46D1-5061-AD31-828FFAAD180C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[157]" -type "float2" 3.5527137e-15 0.00039770541 ;
	setAttr ".uvtk[181]" -type "float2" -1.4710981e-06 -2.2119227e-07 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "385BBE76-4807-27A9-5E19-2995F4688661";
	setAttr ".ics" -type "componentList" 2 "vtx[132]" "vtx[151]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "9EF71159-42C7-6220-DA53-D09A8CF4B179";
	setAttr ".uopa" yes;
	setAttr ".tk[132]" -type "float3"  -9.5367432e-07 0.0024027824 -0.05920887;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "7CC2758B-437C-DF0B-CCFF-598CDD43E6B4";
	setAttr ".ics" -type "componentList" 3 "f[40]" "f[131]" "f[138]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.886149 5.3264856 7.628686 ;
	setAttr ".rs" 47701;
	setAttr ".lt" -type "double3" 0 1.203863654214536 5.6074398196903239 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.511149406433105 5.3264856338500977 7.2536859512329102 ;
	setAttr ".cbx" -type "double3" 13.261149406433105 5.3264861106872559 8.0036859512329102 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "720CF552-44EA-E22B-D384-7D81827184EB";
	setAttr ".ics" -type "componentList" 4 "f[99]" "f[102:103]" "f[106:107]" "f[110]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.88351 5.3258553 11.933093 ;
	setAttr ".rs" 61541;
	setAttr ".lt" -type "double3" 0 0.24396129787426268 1.141424066177068 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.5 5.3258552551269531 11.545564651489258 ;
	setAttr ".cbx" -type "double3" 13.267019271850586 5.3258552551269531 12.320621490478516 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "A4B57A33-4E13-FEC1-C0E0-90B349612403";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[122]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[124]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[125]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[126]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[127]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[128]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[129]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[130]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[131]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[132]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[133]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[134]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[135]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[136]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[137]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[138]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[139]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[140]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[141]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[142]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[143]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[144]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[145]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[146]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[147]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[148]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[149]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[150]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[151]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[152]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[153]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[154]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[155]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[156]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[157]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[158]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[159]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[160]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[161]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[162]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[163]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[164]" -type "float3" 0 0 -0.32690483 ;
	setAttr ".tk[165]" -type "float3" 0 0 -0.32690483 ;
createNode polySplit -n "polySplit5";
	rename -uid "FCCB6A81-43D5-2B16-7864-B1AD9CC4455B";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483337 -2147483332 -2147483334 -2147483336 -2147483328 -2147483324 
		-2147483322 -2147483329 -2147483337;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "BFEC1C37-440A-A832-4411-A2B02ECE5FB6";
	setAttr -s 9 ".e[0:8]"  0.80000001 0.80000001 0.80000001 0.80000001
		 0.80000001 0.80000001 0.80000001 0.80000001 0.80000001;
	setAttr -s 9 ".d[0:8]"  -2147483337 -2147483332 -2147483334 -2147483336 -2147483328 -2147483324 
		-2147483322 -2147483329 -2147483337;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "4D318C57-44A9-CFBC-8A22-7484258BC8F4";
	setAttr ".ics" -type "componentList" 1 "f[183:185]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.18663270207502691 5.2444210211670317 ;
	setAttr ".pvt" -type "float3" 12.886153 7.6632013 12.379461 ;
	setAttr ".rs" 52840;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.51115608215332 7.5694613456726074 7.0748496055603027 ;
	setAttr ".cbx" -type "double3" 13.261150360107422 8.1302061080932617 7.1952357292175293 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "D91A14D9-49AD-AD71-317A-FFAF42D566EB";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[164:175]" -type "float3"  0 0.88532817 -0.087516427
		 0 0.88532817 -0.087516427 0 0.88532817 -0.087516427 0 0.88532817 -0.087516427 0 0.88532817
		 -0.087516427 0 0.88532817 -0.087516427 0 0.88532817 -0.087516427 0 0.88532817 -0.087516427
		 0 0.88532817 -0.087516427 0 0.88532817 -0.087516427 0 0.88532817 -0.087516427 0 0.88532817
		 -0.087516427;
createNode polySplit -n "polySplit7";
	rename -uid "D6234259-4EB5-9B6C-B26F-20AA16CD7F49";
	setAttr -s 9 ".e[0:8]"  0.76370502 0.76370502 0.76370502 0.76370502
		 0.76370502 0.76370502 0.76370502 0.76370502 0.76370502;
	setAttr -s 9 ".d[0:8]"  -2147483262 -2147483261 -2147483254 -2147483249 -2147483247 -2147483252 
		-2147483257 -2147483259 -2147483262;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "41279A7B-4CB4-622C-6D24-DFBF600FA4A4";
	setAttr -s 9 ".e[0:8]"  0.62710899 0.62710899 0.62710899 0.62710899
		 0.62710899 0.62710899 0.62710899 0.62710899 0.62710899;
	setAttr -s 9 ".d[0:8]"  -2147483244 -2147483243 -2147483242 -2147483241 -2147483240 -2147483239 
		-2147483238 -2147483237 -2147483244;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "66A27826-4B65-36CB-F9FC-C48F6E066BA9";
	setAttr ".dc" -type "componentList" 5 "f[99]" "f[102:103]" "f[106:107]" "f[110]" "f[197:199]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "0C9E5549-4CF8-C5A1-4613-73A06A4CEF4C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[206]" -type "float2" -1.8985924e-12 0.00072794053 ;
	setAttr ".uvtk[233]" -type "float2" -2.6090342e-05 -3.3893166e-12 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "1F99E27D-445E-9531-9839-4D929DBF5DFD";
	setAttr ".ics" -type "componentList" 2 "vtx[171]" "vtx[198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "6A8BF4D3-4F2A-6913-989D-BD8AEBABE095";
	setAttr ".uopa" yes;
	setAttr ".tk[171]" -type "float3"  -0.0058689117 0.074322701 -0.013659477;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "FE207EAE-406D-EEE3-37D5-ACBB253E6C48";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[202]" -type "float2" -2.1912505e-10 0.00022277523 ;
	setAttr ".uvtk[234]" -type "float2" -1.2511811e-05 2.3283064e-10 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "673B2A32-4EF3-53DF-A0C6-94B479581805";
	setAttr ".ics" -type "componentList" 2 "vtx[167]" "vtx[198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "76A472D0-482F-309D-32AA-5786A75DFFF3";
	setAttr ".uopa" yes;
	setAttr ".tk[167]" -type "float3"  0 0.074322701 -0.013659477;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "969DAA28-4D56-57C0-7535-A28F255CCDD6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[201]" -type "float2" 3.7546011e-10 4.7429723e-05 ;
	setAttr ".uvtk[235]" -type "float2" 2.9828391e-06 4.4898274e-10 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "FCF30775-41A2-7342-74DB-9A9A35203DB0";
	setAttr ".ics" -type "componentList" 2 "vtx[166]" "vtx[198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak9";
	rename -uid "05EE2A0A-4718-3E6D-4F80-8DAA4A0FBEF2";
	setAttr ".uopa" yes;
	setAttr ".tk[166]" -type "float3"  1.9073486e-06 0.07432127 -0.013659477;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "FE6A460C-40C2-DB25-CFE0-959DB357B4DA";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[199]" -type "float2" -2.8957947e-12 0.00060963782 ;
	setAttr ".uvtk[236]" -type "float2" 3.018302e-05 1.7991164e-12 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "7490C24D-466C-4DC2-56FA-329DF912FEE4";
	setAttr ".ics" -type "componentList" 2 "vtx[165]" "vtx[198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak10";
	rename -uid "BDE4B8FC-417A-5295-5813-1DA0FAC5FB2C";
	setAttr ".uopa" yes;
	setAttr ".tk[165]" -type "float3"  0.011156082 0.074322701 -0.013659477;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "3FC105EE-414B-A5FB-2A55-D4A02E13ED98";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[208]" -type "float2" -1.3270496e-12 -1.266557e-05 ;
	setAttr ".uvtk[241]" -type "float2" -3.3971784e-05 1.6058821e-12 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "0180609D-4526-0273-436A-B1A443E4B48B";
	setAttr ".ics" -type "componentList" 2 "vtx[173]" "vtx[202]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak11";
	rename -uid "7A7C3BF2-4EBA-F508-0E53-3180A9AB3774";
	setAttr ".uopa" yes;
	setAttr ".tk[173]" -type "float3"  -0.0058689117 0.046667099 -0.011583328;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "E2AEEFCF-43DD-B07A-2972-D8A478AE62DE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[207]" -type "float2" -2.2209934e-09 -1.0932557e-07 ;
	setAttr ".uvtk[242]" -type "float2" -1.4755015e-05 -2.2624078e-10 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "35D7E36C-4324-7083-4F7C-7283031B7DE1";
	setAttr ".ics" -type "componentList" 2 "vtx[172]" "vtx[202]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak12";
	rename -uid "B5C918BE-413F-DA66-C4E4-8784D96A0985";
	setAttr ".uopa" yes;
	setAttr ".tk[172]" -type "float3"  0 0.046667099 -0.011396408;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "023C1A84-4C3E-B4A4-BEDD-849BCC88E0FB";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[204]" -type "float2" 1.1784862e-09 2.6600832e-08 ;
	setAttr ".uvtk[243]" -type "float2" 2.5520349e-06 -1.071343e-11 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "43A9B509-4544-87EC-6D30-709B2FFAD1E4";
	setAttr ".ics" -type "componentList" 2 "vtx[168]" "vtx[202]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak13";
	rename -uid "D60097D5-4CAF-FECD-7E5F-AFA5E24402FA";
	setAttr ".uopa" yes;
	setAttr ".tk[168]" -type "float3"  1.9073486e-06 0.046665668 -0.011003494;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "237F8AE0-48CC-B612-278C-CFA93ACE05A6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[203]" -type "float2" 7.3341333e-13 4.0125957e-05 ;
	setAttr ".uvtk[244]" -type "float2" 3.912946e-05 -3.3677783e-12 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "6C2D935D-411F-D7DF-B684-DFBFADE133B0";
	setAttr ".ics" -type "componentList" 2 "vtx[169]" "vtx[202]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "F49307AD-4222-0FC6-09BD-889B6DF47D9B";
	setAttr ".uopa" yes;
	setAttr ".tk[169]" -type "float3"  0.011156082 0.046667099 -0.010835648;
createNode polySplit -n "polySplit9";
	rename -uid "F151A92B-4DA6-FB3C-8A0E-E1825570E15C";
	setAttr -s 6 ".e[0:5]"  0.64999998 0.64999998 0.64999998 0.64999998
		 0.64999998 0.64999998;
	setAttr -s 6 ".d[0:5]"  -2147483251 -2147483246 -2147483247 -2147483248 -2147483249 -2147483250;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "48BEB195-402A-BE2B-6E3F-80A958CFB916";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[200]" -type "float2" 2.1730395e-12 0.065279111 ;
	setAttr ".uvtk[254]" -type "float2" -3.3919719e-07 -1.0126708e-10 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "B4E4888C-467E-FD77-CAE3-3CBAFC3CAA30";
	setAttr ".ics" -type "componentList" 2 "vtx[164]" "vtx[211]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak15";
	rename -uid "87B10488-4F07-F638-E469-E0A326417B4A";
	setAttr ".uopa" yes;
	setAttr ".tk[164]" -type "float3"  0.011156082 0.056346416 -0.0085229874;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "211DB493-463B-F210-D0D1-45855F5DBB71";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[205]" -type "float2" -7.7207751e-10 0.053266231 ;
	setAttr ".uvtk[249]" -type "float2" 3.0340584e-07 4.6535914e-10 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "9D00D690-4AD6-1EA2-4672-4F9DDCB7FCAF";
	setAttr ".ics" -type "componentList" 2 "vtx[170]" "vtx[206]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak16";
	rename -uid "8937B043-4B11-4E8B-D406-B5B5464BEF27";
	setAttr ".uopa" yes;
	setAttr ".tk[170]" -type "float3"  -0.0058689117 0.056346416 -0.0085229874;
createNode polySplit -n "polySplit10";
	rename -uid "79B8513B-4BC5-7650-4FFE-64B4ECE04729";
	setAttr -s 9 ".e[0:8]"  0.64999998 0.64999998 0.64999998 0.64999998
		 0.64999998 0.64999998 0.64999998 0.64999998 0.64999998;
	setAttr -s 9 ".d[0:8]"  -2147483269 -2147483268 -2147483261 -2147483256 -2147483254 -2147483259 
		-2147483264 -2147483266 -2147483269;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "E226DCA0-4ED1-5763-289B-AC86EA46B256";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[190]" -type "float3" 0 0.02846982 0 ;
	setAttr ".tk[191]" -type "float3" 0 0.02846982 0 ;
	setAttr ".tk[192]" -type "float3" 0 0.02846982 0 ;
	setAttr ".tk[193]" -type "float3" 0 0.02846982 0 ;
	setAttr ".tk[194]" -type "float3" 0 0.02846982 0 ;
	setAttr ".tk[195]" -type "float3" 0 0.02846982 0 ;
	setAttr ".tk[196]" -type "float3" 0 0.02846982 0 ;
	setAttr ".tk[197]" -type "float3" 0 0.02846982 0 ;
	setAttr ".tk[210]" -type "float3" 1.7763568e-15 0.098841943 -0.081186272 ;
	setAttr ".tk[211]" -type "float3" 1.7763568e-15 0.098841943 -0.081186272 ;
	setAttr ".tk[212]" -type "float3" 1.7763568e-15 0.098841943 -0.081186272 ;
	setAttr ".tk[213]" -type "float3" 1.7763568e-15 0.098841943 -0.081186272 ;
	setAttr ".tk[214]" -type "float3" 1.7763568e-15 0.098841943 -0.081186272 ;
	setAttr ".tk[215]" -type "float3" 1.7763568e-15 0.098841943 -0.081186272 ;
	setAttr ".tk[216]" -type "float3" 1.7763568e-15 0.098841943 -0.081186272 ;
	setAttr ".tk[217]" -type "float3" 1.7763568e-15 0.098841943 -0.081186272 ;
createNode polySplit -n "polySplit11";
	rename -uid "D8384D3C-42C8-5A07-0AB3-4EB79512051C";
	setAttr -s 23 ".e[0:22]"  0.2 0.80000001 0.80000001 0.80000001 0.2
		 0.80000001 0.80000001 0.2 0.80000001 0.80000001 0.80000001 0.80000001 0.2 0.2 0.2
		 0.2 0.2 0.2 0.80000001 0.2 0.2 0.80000001 0.2;
	setAttr -s 23 ".d[0:22]"  -2147483630 -2147483382 -2147483370 -2147483628 -2147483399 -2147483410 
		-2147483344 -2147483356 -2147483607 -2147483272 -2147483286 -2147483320 -2147483327 -2147483335 -2147483331 -2147483290 -2147483276 -2147483587 
		-2147483353 -2147483340 -2147483408 -2147483401 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "C3E41507-4824-2509-AF06-13B15CB496E4";
	setAttr -s 23 ".e[0:22]"  0.246895 0.246895 0.246895 0.75310498 0.246895
		 0.75310498 0.75310498 0.246895 0.75310498 0.75310498 0.75310498 0.75310498 0.75310498
		 0.75310498 0.246895 0.246895 0.246895 0.246895 0.75310498 0.246895 0.246895 0.75310498
		 0.246895;
	setAttr -s 23 ".d[0:22]"  -2147483628 -2147483370 -2147483382 -2147483204 -2147483401 -2147483184 
		-2147483185 -2147483353 -2147483187 -2147483188 -2147483189 -2147483190 -2147483191 -2147483192 -2147483320 -2147483286 -2147483272 -2147483607 
		-2147483197 -2147483344 -2147483410 -2147483200 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "983B5268-45FB-E6B6-7503-2EB82D28E620";
	setAttr -s 13 ".e[0:12]"  0.94999999 0.94999999 0.050000001 0.94999999
		 0.94999999 0.94999999 0.94999999 0.94999999 0.050000001 0.94999999 0.94999999 0.94999999
		 0.94999999;
	setAttr -s 13 ".d[0:12]"  -2147483299 -2147483298 -2147483168 -2147483128 -2147483297 -2147483296 
		-2147483295 -2147483294 -2147483124 -2147483172 -2147483293 -2147483292 -2147483299;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "BFA2636F-4912-62CF-4E3D-0EBAC3BDC661";
	setAttr -s 13 ".e[0:12]"  0.80000001 0.80000001 0.2 0.80000001 0.80000001
		 0.80000001 0.80000001 0.80000001 0.2 0.80000001 0.80000001 0.80000001 0.80000001;
	setAttr -s 13 ".d[0:12]"  -2147483299 -2147483298 -2147483114 -2147483128 -2147483297 -2147483296 
		-2147483295 -2147483294 -2147483108 -2147483172 -2147483293 -2147483292 -2147483299;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "3E46373A-4D87-B357-A052-54979542731C";
	setAttr ".ics" -type "componentList" 1 "f[281]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.511165 10.527387 6.1861296 ;
	setAttr ".rs" 33314;
	setAttr ".lt" -type "double3" 8.8817841970012523e-16 -1.1366843338973809e-15 12.511144638036978 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.511164665222168 10.261033058166504 5.9030146598815918 ;
	setAttr ".cbx" -type "double3" 12.511165618896484 10.793739318847656 6.4692444801330566 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "452103E9-484D-03DC-F6F1-67A96568A9A0";
	setAttr ".dc" -type "componentList" 1 "f[281]";
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "1EB97F5B-4874-BCE5-C2DB-19A993757CC8";
	setAttr ".ics" -type "componentList" 1 "f[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.511149 4.3377938 7.3027129 ;
	setAttr ".rs" 53842;
	setAttr ".lt" -type "double3" 1.0854945164851811e-15 1.4770950169376226e-15 12.511155128469012 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.511148452758789 3.5790300369262695 7.0767812728881836 ;
	setAttr ".cbx" -type "double3" 12.511149406433105 5.0965571403503418 7.5286440849304199 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "B2E36C84-4B55-6EA2-269A-18B08D779132";
	setAttr ".dc" -type "componentList" 1 "f[257]";
createNode polyTweak -n "polyTweak18";
	rename -uid "B2C8B117-49E5-4431-DD7A-19B69DA6F2B3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0 0.22765717 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.22765717 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.22765717 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.22765717 ;
	setAttr ".tk[97]" -type "float3" 0 0 0.22765717 ;
	setAttr ".tk[98]" -type "float3" 0 0 0.22765717 ;
createNode polySplit -n "polySplit15";
	rename -uid "3F19BA42-453F-7A47-2131-18AC2D6E8A68";
	setAttr -s 5 ".e[0:4]"  0.94999999 0.94999999 0.94999999 0.94999999
		 0.94999999;
	setAttr -s 5 ".d[0:4]"  -2147483397 -2147483396 -2147483392 -2147483394 -2147483397;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "8A08E9C3-418E-E22B-5CBD-9DB7DCD31263";
	setAttr ".ics" -type "componentList" 1 "e[600:603]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak19";
	rename -uid "ED08B035-4F73-D26F-449F-D9B3FA8AF110";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0 -0.1715124 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.1715124 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.1715124 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.1715124 ;
	setAttr ".tk[97]" -type "float3" 0 0 -0.1715124 ;
	setAttr ".tk[98]" -type "float3" 0 0 -0.1715124 ;
createNode polySplit -n "polySplit16";
	rename -uid "90896ACC-49E3-1F75-24A8-18886A73E6A6";
	setAttr -s 5 ".e[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".d[0:4]"  -2147483397 -2147483055 -2147483054 -2147483053 -2147483397;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "ABE550D1-45FD-80CF-4C59-44ADEE505B9E";
	setAttr -s 5 ".e[0:4]"  0.89999998 0.89999998 0.89999998 0.89999998
		 0.89999998;
	setAttr -s 5 ".d[0:4]"  -2147483052 -2147483051 -2147483050 -2147483049 -2147483052;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "17A37288-4BA2-E139-F77A-928FF8743D24";
	setAttr -s 5 ".e[0:4]"  0.44999999 0.44999999 0.44999999 0.44999999
		 0.44999999;
	setAttr -s 5 ".d[0:4]"  -2147483052 -2147483051 -2147483050 -2147483049 -2147483052;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "F2F78A49-4112-55FD-AB23-3E99AC00DFA2";
	setAttr -s 5 ".e[0:4]"  0.25 0.25 0.25 0.25 0.25;
	setAttr -s 5 ".d[0:4]"  -2147483036 -2147483035 -2147483034 -2147483033 -2147483036;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "58BC6E32-4E65-9E65-64DA-E180B9497B8B";
	setAttr ".ics" -type "componentList" 2 "f[294]" "f[306]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.873921 5.0955 9.3790464 ;
	setAttr ".rs" 47588;
	setAttr ".lt" -type "double3" 2.1016120913185059e-15 -6.1656409144905666e-15 0.23254815200448126 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.672577857971191 5.094635009765625 7.9862842559814453 ;
	setAttr ".cbx" -type "double3" 13.075264930725098 5.0963649749755859 10.771808624267578 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "A2345AE9-49F4-5FD3-BF39-9AA64AE13A7A";
	setAttr ".ics" -type "componentList" 2 "f[308]" "f[312]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.672578 5.2117739 9.3791189 ;
	setAttr ".rs" 43828;
	setAttr ".lt" -type "double3" 0 9.062134452130638e-16 12.672574996944601 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.672577857971191 5.094635009765625 7.9862842559814453 ;
	setAttr ".cbx" -type "double3" 12.672577857971191 5.3289122581481934 10.771953582763672 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "74F6CE41-4F70-2D19-3871-01A9721EAD7C";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[306]" -type "float3" 0 0 0.076536193 ;
	setAttr ".tk[307]" -type "float3" 0 0 0.076536193 ;
	setAttr ".tk[308]" -type "float3" 0 0 0.076536193 ;
	setAttr ".tk[309]" -type "float3" 0 0 0.076536193 ;
	setAttr ".tk[316]" -type "float3" 0 0 0.076536193 ;
	setAttr ".tk[317]" -type "float3" 0 0 0.076536193 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "1CC0A860-4075-FE4C-0A39-56BEA776F9B3";
	setAttr ".dc" -type "componentList" 2 "f[308]" "f[312]";
createNode polySplit -n "polySplit20";
	rename -uid "2087DDED-43DC-95F0-2BAD-AEBF28A809BE";
	setAttr -s 5 ".e[0:4]"  0.116963 0.116963 0.116963 0.116963 0.116963;
	setAttr -s 5 ".d[0:4]"  -2147483004 -2147483003 -2147482999 -2147483001 -2147483004;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "C221ECDC-4EDB-B523-33E4-14806541EA08";
	setAttr -s 5 ".e[0:4]"  0.114233 0.114233 0.114233 0.114233 0.114233;
	setAttr -s 5 ".d[0:4]"  -2147482996 -2147482995 -2147482991 -2147482993 -2147482996;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "775B7597-4CC3-DE95-D6B8-6C8831744B0C";
	setAttr -s 5 ".e[0:4]"  0.102517 0.102517 0.102517 0.102517 0.102517;
	setAttr -s 5 ".d[0:4]"  -2147483063 -2147483062 -2147483058 -2147483060 -2147483063;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "4ED9B7B1-4F86-619F-28E5-1F945A31B1EF";
	setAttr -s 5 ".e[0:4]"  0.101074 0.101074 0.101074 0.101074 0.101074;
	setAttr -s 5 ".d[0:4]"  -2147483071 -2147483066 -2147483068 -2147483070 -2147483071;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak21";
	rename -uid "18526097-4464-88BC-678F-E0B0CE146151";
	setAttr ".uopa" yes;
	setAttr -s 320 ".tk";
	setAttr ".tk[0]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[1]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[2]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[7]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[8]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[9]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[10]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[11]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[16]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[17]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[18]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[19]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[22]" -type "float3" -3.1052728 1.7881393e-07 4.4703484e-07 ;
	setAttr ".tk[23]" -type "float3" -3.1052728 1.7881393e-07 4.4703484e-07 ;
	setAttr ".tk[24]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[25]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[26]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[27]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[28]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[29]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[30]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[31]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[32]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[33]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[34]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[35]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[36]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[37]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[38]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[39]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[40]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[41]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[42]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[43]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[44]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[45]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[46]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[47]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[48]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[49]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[50]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[51]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[52]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[53]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[54]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[55]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[56]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[57]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[58]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[59]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[60]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[61]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[62]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[63]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[64]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[65]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[66]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[67]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[68]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[69]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[70]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[71]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[72]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[73]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[74]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[75]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[76]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[77]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[78]" -type "float3" -3.1052728 1.7881393e-07 4.4703484e-07 ;
	setAttr ".tk[79]" -type "float3" -3.1052728 1.7881393e-07 4.4703484e-07 ;
	setAttr ".tk[80]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[81]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[82]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[83]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[84]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[85]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[86]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[87]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[88]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[89]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[90]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[91]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[92]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[93]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[94]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[95]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[96]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[97]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[98]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[99]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[100]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[101]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[102]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[103]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[104]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[105]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[106]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[107]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[108]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[109]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[110]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[111]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[112]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[113]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[114]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[115]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[116]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[117]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[118]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[119]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[120]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[121]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[122]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[123]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[124]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[125]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[126]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[127]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[128]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[129]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[130]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[131]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[132]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[133]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[134]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[135]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[136]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[137]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[138]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[139]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[140]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[141]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[142]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[143]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[144]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[145]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[146]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[147]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[148]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[149]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[150]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[151]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[152]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[153]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[154]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[155]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[156]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[157]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[158]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[159]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[160]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[161]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[162]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[163]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[164]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[165]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[166]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[167]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[168]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[169]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[170]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[171]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[172]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[173]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[174]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[175]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[176]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[177]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[178]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[179]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[180]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[181]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[182]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[183]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[184]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[185]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[186]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[187]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[188]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[189]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[190]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[191]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[192]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[193]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[194]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[195]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[196]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[197]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[198]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[199]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[200]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[201]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[202]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[203]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[204]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[205]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[206]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[207]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[208]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[209]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[210]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[211]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[212]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[213]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[214]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[215]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[216]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[217]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[218]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[219]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[220]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[221]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[222]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[223]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[224]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[225]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[226]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[227]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[228]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[229]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[230]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[231]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[232]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[233]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[234]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[235]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[236]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[237]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[238]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[239]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[240]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[241]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[242]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[243]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[244]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[245]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[246]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[247]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[248]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[249]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[250]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[251]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[252]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[253]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[254]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[255]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[256]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[257]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[258]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[259]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[260]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[261]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[262]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[263]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[264]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[265]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[266]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[267]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[268]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[269]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[270]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[271]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[272]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[273]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[274]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[275]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[276]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[277]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[278]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[279]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[280]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[281]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[282]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[283]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[284]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[285]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[294]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[295]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[296]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[297]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[298]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[299]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[300]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[301]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[302]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[303]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[304]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[305]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[306]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[307]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[308]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[309]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[310]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[311]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[312]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[313]" -type "float3" -3.1052721 -1.0058284e-07 0 ;
	setAttr ".tk[314]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[315]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[316]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[317]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[318]" -type "float3" 0 -1.0058284e-07 0 ;
	setAttr ".tk[319]" -type "float3" 0 -1.0058284e-07 0 ;
	setAttr ".tk[320]" -type "float3" 0 -1.0058284e-07 0 ;
	setAttr ".tk[321]" -type "float3" 0 -1.0058284e-07 0 ;
	setAttr ".tk[326]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[327]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[328]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[329]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[330]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[331]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[332]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[333]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[334]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[335]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[336]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[337]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[338]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[339]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[340]" -type "float3" -3.1052721 0 0 ;
	setAttr ".tk[341]" -type "float3" -3.1052721 0 0 ;
createNode polySplit -n "polySplit24";
	rename -uid "C3A8F984-4F38-68B9-4FE5-948EC2C6AD2C";
	setAttr -s 5 ".e[0:4]"  0.96694201 0.96694201 0.96694201 0.96694201
		 0.96694201;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "D80ECDAD-4F88-C217-81E3-D7B8DC1DA9B9";
	setAttr -s 5 ".e[0:4]"  0.87472099 0.87472099 0.87472099 0.87472099
		 0.87472099;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "C5D79D41-4E84-405A-604B-FCBAA4899193";
	setAttr -s 5 ".e[0:4]"  0.91235602 0.91235602 0.91235602 0.91235602
		 0.91235602;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "00C694D0-4BA6-887F-C2E1-E0AAB81DD5E2";
	setAttr -s 5 ".e[0:4]"  0.84884 0.84884 0.84884 0.84884 0.84884;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	rename -uid "4A959C8F-4910-77BA-6D43-9DB81E8CE44A";
	setAttr -s 5 ".e[0:4]"  0.874264 0.874264 0.874264 0.874264 0.874264;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit29";
	rename -uid "54BF2149-4AC8-4DCD-003A-7788A0C0BE59";
	setAttr -s 5 ".e[0:4]"  0.80886102 0.80886102 0.80886102 0.80886102
		 0.80886102;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit30";
	rename -uid "7444BD62-40BF-E8A6-4FC9-DAB12317D24A";
	setAttr -s 5 ".e[0:4]"  0.83674401 0.83674401 0.83674401 0.83674401
		 0.83674401;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "02FAE2B3-4CB6-9CDB-7A56-2AB4CB871F7E";
	setAttr -s 5 ".e[0:4]"  0.68322599 0.68322599 0.68322599 0.68322599
		 0.68322599;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "1FDAC69D-40E7-D541-D772-D9B35EAE6148";
	setAttr -s 5 ".e[0:4]"  0.73563498 0.73563498 0.73563498 0.73563498
		 0.73563498;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit33";
	rename -uid "F10823EF-444E-1D17-B5A7-D5A2580BF57A";
	setAttr -s 5 ".e[0:4]"  0.390113 0.390113 0.390113 0.390113 0.390113;
	setAttr -s 5 ".d[0:4]"  -2147482964 -2147482963 -2147482962 -2147482961 -2147482964;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit34";
	rename -uid "666CFF83-4082-FFB9-CED4-859B005CE492";
	setAttr -s 5 ".e[0:4]"  0.25 0.25 0.25 0.25 0.25;
	setAttr -s 5 ".d[0:4]"  -2147483071 -2147483066 -2147483068 -2147483070 -2147483071;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit35";
	rename -uid "0A8DF74B-4CAF-F8B4-9DA7-9E948A70ACDA";
	setAttr -s 20 ".e[0:19]"  0.15000001 0.15000001 0.15000001 0.85000002
		 0.85000002 0.85000002 0.85000002 0.85000002 0.85000002 0.85000002 0.85000002 0.85000002
		 0.85000002 0.85000002 0.85000002 0.85000002 0.85000002 0.85000002 0.85000002 0.85000002;
	setAttr -s 20 ".d[0:19]"  -2147483056 -2147482967 -2147483200 -2147483146 -2147483147 -2147483148 
		-2147483075 -2147482871 -2147482959 -2147482879 -2147482887 -2147482895 -2147482903 -2147482911 -2147482919 -2147482927 -2147482935 -2147482943 
		-2147482951 -2147483065;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit36";
	rename -uid "BE695677-4F4E-E506-C724-6881365A1A6F";
	setAttr -s 20 ".e[0:19]"  0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2
		 0.2 0.2 0.2 0.2 0.2 0.2 0.80000001 0.80000001 0.80000001;
	setAttr -s 20 ".d[0:19]"  -2147483065 -2147482951 -2147482943 -2147482935 -2147482927 -2147482919 
		-2147482911 -2147482903 -2147482895 -2147482887 -2147482879 -2147482959 -2147482871 -2147483075 -2147483148 -2147483147 -2147483146 -2147482866 
		-2147482867 -2147482868;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "D2E1F7AE-43B3-FC35-1805-53BF8A50FEF3";
	setAttr ".ics" -type "componentList" 6 "f[401]" "f[403]" "f[405]" "f[407]" "f[409]" "f[411]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.6794553 10.261045 6.2387948 ;
	setAttr ".rs" 61875;
	setAttr ".lt" -type "double3" -1.1810044858295149e-15 1.0156486273635414 5.0714185962619922 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.26915574073791504 10.26103401184082 6.0851612091064453 ;
	setAttr ".cbx" -type "double3" 9.0897550582885742 10.26105785369873 6.3924283981323242 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "B412BD37-4A6C-0D35-95C5-5EA4FFD95CF3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[334]" -type "float3" 0.017217226 0 0 ;
	setAttr ".tk[335]" -type "float3" 0.017217226 0 0 ;
	setAttr ".tk[336]" -type "float3" 0.017217226 0 0 ;
	setAttr ".tk[337]" -type "float3" 0.017217226 0 0 ;
	setAttr ".tk[387]" -type "float3" 0.017217226 0 0 ;
	setAttr ".tk[424]" -type "float3" 0.017217226 0 0 ;
createNode polySplit -n "polySplit37";
	rename -uid "BCE2A064-4B5E-A6A7-F246-30951AC11465";
	setAttr -s 7 ".e[0:6]"  0.25 0.25 0.75 0.25 0.25 0.25 0.25;
	setAttr -s 7 ".d[0:6]"  -2147483063 -2147483062 -2147482847 -2147482792 -2147483058 -2147483060 
		-2147483063;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "FC0785F2-4554-5200-B1D7-82B6BA2CA5FB";
	setAttr ".dc" -type "componentList" 1 "f[445]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "FA13C1B8-4A18-F053-90EB-2DB417BD9780";
	setAttr ".dc" -type "componentList" 6 "f[401]" "f[403]" "f[405]" "f[407]" "f[409]" "f[411]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "702198D9-49A2-9B94-17C2-C0A76A588F4C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[503]" -type "float2" -1.7558177e-13 -0.0083364937 ;
	setAttr ".uvtk[508]" -type "float2" -5.1245215e-06 -1.4836163e-10 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "C0DF6301-4BD0-4C1C-C758-8E85C46365C8";
	setAttr ".ics" -type "componentList" 2 "vtx[448]" "vtx[453]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak23";
	rename -uid "00F98A26-4FBF-C675-46ED-A8956BF00F6B";
	setAttr ".uopa" yes;
	setAttr ".tk[448]" -type "float3"  -0.0002155304 -0.093057632 0.043750286;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "6F139F97-404E-C0B0-2CB1-2AA2A4C1C904";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[479]" -type "float2" -2.282758e-06 1.1641396e-10 ;
	setAttr ".uvtk[504]" -type "float2" 2.1177504e-13 -0.0083321957 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "7C5C836C-4A98-6550-C4D2-1DADEFD025E7";
	setAttr ".ics" -type "componentList" 2 "vtx[424]" "vtx[449]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak24";
	rename -uid "0742023A-451D-846A-36C8-F1B0A0A78AE4";
	setAttr ".uopa" yes;
	setAttr ".tk[449]" -type "float3"  -0.0008430481 -0.093058586 0.043749332;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "0988B3E1-4ED1-655D-23E3-87B29C895A3D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[440]" -type "float2" 2.1468488e-06 -1.1641532e-10 ;
	setAttr ".uvtk[501]" -type "float2" 2.1549429e-13 -0.0083866837 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "0A7D17E9-404E-684E-DF8B-0F8027638556";
	setAttr ".ics" -type "componentList" 2 "vtx[387]" "vtx[447]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak25";
	rename -uid "A6802335-44A6-55BE-DCE0-A09D07FB3C34";
	setAttr ".uopa" yes;
	setAttr ".tk[447]" -type "float3"  -0.0008430481 -0.093058586 0.043748856;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "FB30972E-4EA1-3D50-4F8A-96B4CE93D7AC";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[502]" -type "float2" -2.3536728e-13 -0.00839076 ;
	setAttr ".uvtk[507]" -type "float2" 5.7514962e-06 1.4996338e-13 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "928B680D-46EC-D13F-F1C1-189750D56537";
	setAttr ".ics" -type "componentList" 2 "vtx[446]" "vtx[450]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak26";
	rename -uid "F9000AA0-44AF-BA86-A4FC-BC8701473C7B";
	setAttr ".uopa" yes;
	setAttr ".tk[446]" -type "float3"  -0.0002155304 -0.093057632 0.043750286;
createNode polySplit -n "polySplit38";
	rename -uid "D6E67F68-4DF2-E0D1-7D43-39BE6C516685";
	setAttr -s 7 ".e[0:6]"  0.078488603 0.078488603 0.92151099 0.078488603
		 0.078488603 0.078488603 0.078488603;
	setAttr -s 7 ".d[0:6]"  -2147482972 -2147482971 -2147482848 -2147482792 -2147482970 -2147482969 
		-2147482972;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "00C2DE01-42E4-5B9F-3BEE-12B7848AE202";
	setAttr ".ics" -type "componentList" 1 "e[920:925]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit39";
	rename -uid "20D2290E-4423-8D71-3229-B6B2E861A66F";
	setAttr -s 7 ".e[0:6]"  0.075995803 0.075995803 0.92400402 0.075995803
		 0.075995803 0.075995803 0.075995803;
	setAttr -s 7 ".d[0:6]"  -2147482972 -2147482738 -2147482851 -2147482737 -2147482736 -2147482735 
		-2147482972;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit40";
	rename -uid "042CE64F-4BB7-E3B9-08B8-CCB058AAE8AE";
	setAttr -s 7 ".e[0:6]"  0.87169498 0.128305 0.128305 0.128305 0.128305
		 0.128305 0.87169498;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482733 -2147482734 -2147482729 -2147482730 -2147482731 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit41";
	rename -uid "E048C652-48CE-9330-C56D-C6BA480A7ED0";
	setAttr -s 7 ".e[0:6]"  0.91358 0.08642 0.08642 0.08642 0.08642 0.08642
		 0.91358;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482721 -2147482720 -2147482719 -2147482718 -2147482717 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit42";
	rename -uid "BE44FE16-48FC-3CF4-323D-4382FFC52328";
	setAttr -s 7 ".e[0:6]"  0.832407 0.167593 0.167593 0.167593 0.167593
		 0.167593 0.832407;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482709 -2147482708 -2147482707 -2147482706 -2147482705 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit43";
	rename -uid "67608E99-47EB-68D5-95ED-0C82EA7B5E44";
	setAttr -s 7 ".e[0:6]"  0.87546301 0.124537 0.124537 0.124537 0.124537
		 0.124537 0.87546301;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482697 -2147482696 -2147482695 -2147482694 -2147482693 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit44";
	rename -uid "45744AC7-4538-3249-AEA1-6F92E0C5EE27";
	setAttr -s 7 ".e[0:6]"  0.79696101 0.20303901 0.20303901 0.20303901
		 0.20303901 0.20303901 0.79696101;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482685 -2147482684 -2147482683 -2147482682 -2147482681 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit45";
	rename -uid "800C6C0B-441F-274C-3BE2-71AC7C9291D4";
	setAttr -s 7 ".e[0:6]"  0.80654103 0.193459 0.193459 0.193459 0.193459
		 0.193459 0.80654103;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482673 -2147482672 -2147482671 -2147482670 -2147482669 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit46";
	rename -uid "4AF671CF-4CAF-8F58-6289-BAB39E9CCCB6";
	setAttr -s 7 ".e[0:6]"  0.66222399 0.33777601 0.33777601 0.33777601
		 0.33777601 0.33777601 0.66222399;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482661 -2147482660 -2147482659 -2147482658 -2147482657 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit47";
	rename -uid "BCDC203F-4326-6352-6A63-A4950AEB2725";
	setAttr -s 7 ".e[0:6]"  0.67612499 0.32387501 0.32387501 0.32387501
		 0.32387501 0.32387501 0.67612499;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482649 -2147482648 -2147482647 -2147482646 -2147482645 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit48";
	rename -uid "19319FB7-46E2-4CF2-4FEF-D6912529C038";
	setAttr -s 7 ".e[0:6]"  0.213211 0.786789 0.786789 0.786789 0.786789
		 0.786789 0.213211;
	setAttr -s 7 ".d[0:6]"  -2147482851 -2147482637 -2147482636 -2147482635 -2147482634 -2147482633 
		-2147482851;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent9";
	rename -uid "063B81F1-4A46-4AA1-9AF5-978B3A921AED";
	setAttr ".dc" -type "componentList" 5 "f[453]" "f[465]" "f[477]" "f[489]" "f[501]";
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "42FDAB97-4C7D-0598-53C5-93BBD0200098";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[499]" -type "float2" -1.7558177e-13 -0.0083299018 ;
	setAttr ".uvtk[514]" -type "float2" -2.7432511e-06 1.1641532e-10 ;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "9AD76EC1-4B0B-0E89-BFD4-0783AB0BF9B7";
	setAttr ".ics" -type "componentList" 2 "vtx[444]" "vtx[455]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak27";
	rename -uid "FAFD3FB6-489D-7AE5-5DC9-308FBD778418";
	setAttr ".uopa" yes;
	setAttr ".tk[444]" -type "float3"  -0.00078678131 -0.093064785 0.043732166;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "83DC4672-4C04-4BFA-89DB-E79B841BD092";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[500]" -type "float2" 1.7486013e-14 -0.0083255218 ;
	setAttr ".uvtk[522]" -type "float2" -3.301576e-06 1.204592e-13 ;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "5ECC147A-4C2D-4480-48DD-37A2CA5F0236";
	setAttr ".ics" -type "componentList" 2 "vtx[445]" "vtx[462]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak28";
	rename -uid "9E15AAB1-450F-0B97-6170-29A5AA968650";
	setAttr ".uopa" yes;
	setAttr ".tk[445]" -type "float3"  0.0013751984 -0.093064785 0.043730736;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "AB7621D0-4776-B0AB-42E4-D7B794487D76";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[498]" -type "float2" -2.1310731e-13 -0.0083810799 ;
	setAttr ".uvtk[513]" -type "float2" 3.4207035e-06 1.4832605e-10 ;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "5D7039D6-415D-A040-6B6D-A5B343C9D799";
	setAttr ".ics" -type "componentList" 2 "vtx[442]" "vtx[454]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak29";
	rename -uid "4298AED7-4C95-A902-C0CB-E99ECE90640E";
	setAttr ".uopa" yes;
	setAttr ".tk[442]" -type "float3"  -0.00078868866 -0.093063831 0.043731689;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "6C774832-4983-B10A-7515-8F8017D25C58";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[497]" -type "float2" 4.6573856e-14 -0.0083829667 ;
	setAttr ".uvtk[517]" -type "float2" 4.0405926e-06 3.201564e-11 ;
createNode polyMergeVert -n "polyMergeVert22";
	rename -uid "4ADD1673-48D0-C501-D95D-B5A37052335D";
	setAttr ".ics" -type "componentList" 2 "vtx[443]" "vtx[456]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak30";
	rename -uid "87D4438A-4048-C95D-F70A-F0B695E7B172";
	setAttr ".uopa" yes;
	setAttr ".tk[443]" -type "float3"  0.0013737679 -0.093064785 0.043730259;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "EB59993A-412A-802C-5391-259843BB191C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[495]" -type "float2" 0 -0.0083344365 ;
	setAttr ".uvtk[528]" -type "float2" -3.6210513e-06 1.4822354e-10 ;
createNode polyMergeVert -n "polyMergeVert23";
	rename -uid "1B5E4566-4977-5EE9-270F-A2BD83253C28";
	setAttr ".ics" -type "componentList" 2 "vtx[440]" "vtx[465]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak31";
	rename -uid "5332C936-48F8-60DD-0851-E285A302E18E";
	setAttr ".uopa" yes;
	setAttr ".tk[440]" -type "float3"  0.004693985 -0.093062401 0.043745518;
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "E45D9E9A-443B-3D1B-907F-E49279F9DB20";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[494]" -type "float2" -1.6986412e-13 -0.0083861807 ;
	setAttr ".uvtk[523]" -type "float2" 4.414615e-06 -1.4822923e-10 ;
createNode polyMergeVert -n "polyMergeVert24";
	rename -uid "F7A15FBF-47CD-8249-0E80-B2AC72DDAD5A";
	setAttr ".ics" -type "componentList" 2 "vtx[438]" "vtx[460]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak32";
	rename -uid "031CE0D0-44DA-FF2E-A22C-FBA9F38AF3F5";
	setAttr ".uopa" yes;
	setAttr ".tk[438]" -type "float3"  0.0046925545 -0.093062401 0.043745995;
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "CF6FA1F1-4613-84B1-55F6-B28A814B2701";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[493]" -type "float2" 2.1549429e-13 -0.0083933789 ;
	setAttr ".uvtk[529]" -type "float2" 4.3661539e-06 -3.2015668e-11 ;
createNode polyMergeVert -n "polyMergeVert25";
	rename -uid "122123C4-4451-45F6-D833-668F85ADC854";
	setAttr ".ics" -type "componentList" 2 "vtx[439]" "vtx[464]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak33";
	rename -uid "F2D0A5F8-4DCC-F3F3-FAEC-9DBD85614745";
	setAttr ".uopa" yes;
	setAttr ".tk[439]" -type "float3"  0.00036096573 -0.093065262 0.043744564;
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "DB7A758C-4DC2-2C71-1B7A-B1B2E1BE7F51";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[496]" -type "float2" 2.1177504e-13 -0.008331784 ;
	setAttr ".uvtk[534]" -type "float2" -3.3328888e-06 -1.8013549e-10 ;
createNode polyMergeVert -n "polyMergeVert26";
	rename -uid "14779438-4B4B-52BA-31A5-DD88556EFDC5";
	setAttr ".ics" -type "componentList" 2 "vtx[441]" "vtx[468]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak34";
	rename -uid "70407E18-4FBD-CB2D-48D0-35A283A847D9";
	setAttr ".uopa" yes;
	setAttr ".tk[441]" -type "float3"  0.00036239624 -0.093064308 0.043744087;
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "FA0F2949-4189-F2EB-CC93-B8A6F52C1499";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[491]" -type "float2" 4.6462834e-14 -0.0083330246 ;
	setAttr ".uvtk[540]" -type "float2" -3.4399434e-06 1.0588752e-13 ;
createNode polyMergeVert -n "polyMergeVert27";
	rename -uid "E1F71721-4363-97FA-7F33-FFA54DBB7F36";
	setAttr ".ics" -type "componentList" 2 "vtx[436]" "vtx[473]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak35";
	rename -uid "2FD661DD-4EF5-021C-1C37-7589E069E1AD";
	setAttr ".uopa" yes;
	setAttr ".tk[436]" -type "float3"  -0.0049505234 -0.093066216 0.043741226;
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "55897B0D-4813-1291-746C-C28B8C3DE2B3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[492]" -type "float2" -2.1760371e-14 -0.0083287675 ;
	setAttr ".uvtk[546]" -type "float2" -3.3768247e-06 -1.0899615e-13 ;
createNode polyMergeVert -n "polyMergeVert28";
	rename -uid "7F3F60CD-4F2F-75E3-89EC-B989E3CB09FC";
	setAttr ".ics" -type "componentList" 2 "vtx[437]" "vtx[478]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak36";
	rename -uid "03CFEB8B-4DB8-6200-9FA7-C1BF6423B5D5";
	setAttr ".uopa" yes;
	setAttr ".tk[437]" -type "float3"  -0.00012516975 -0.093067169 0.043740749;
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "3889891A-4986-FA9B-EBD1-B0BDD1720F35";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[489]" -type "float2" -2.0267121e-13 -0.0083831446 ;
	setAttr ".uvtk[541]" -type "float2" 3.5460769e-06 6.1894934e-15 ;
createNode polyMergeVert -n "polyMergeVert29";
	rename -uid "884DE653-451E-8AB5-764C-D9ADC85DECF7";
	setAttr ".ics" -type "componentList" 2 "vtx[435]" "vtx[473]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak37";
	rename -uid "901F92DE-485D-E6CB-2BFD-06B925782F10";
	setAttr ".uopa" yes;
	setAttr ".tk[435]" -type "float3"  -0.00012588501 -0.093068123 0.043740273;
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "2B4B7929-488F-43E0-F3E9-6CA8724064FF";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[490]" -type "float2" -2.3514524e-13 -0.0083872396 ;
	setAttr ".uvtk[535]" -type "float2" 4.5320598e-06 3.8857806e-15 ;
createNode polyMergeVert -n "polyMergeVert30";
	rename -uid "9EF013CB-49A2-349A-F40E-9A8047AA8CF4";
	setAttr ".ics" -type "componentList" 2 "vtx[434]" "vtx[468]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak38";
	rename -uid "1D95141E-4953-5B8E-0A50-A1B59A270065";
	setAttr ".uopa" yes;
	setAttr ".tk[434]" -type "float3"  -0.0049519539 -0.093065739 0.043741703;
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "DC880F6F-43DE-3058-9645-E9A62D522BD9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[486]" -type "float2" 4.6185278e-14 -0.0083890287 ;
	setAttr ".uvtk[547]" -type "float2" 4.4074277e-06 3.2114755e-11 ;
createNode polyMergeVert -n "polyMergeVert31";
	rename -uid "B6C86B8C-4824-98EA-8A9D-C0A4216F8ACC";
	setAttr ".ics" -type "componentList" 2 "vtx[430]" "vtx[476]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak39";
	rename -uid "989531DB-4E2C-8BA5-7580-499E70B4A170";
	setAttr ".uopa" yes;
	setAttr ".tk[430]" -type "float3"  -0.002630949 -0.0930686 0.043741226;
createNode polyTweakUV -n "polyTweakUV32";
	rename -uid "E3681117-4653-4C25-D143-5C8ACD868CF6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[485]" -type "float2" 1.8485213e-14 -0.0083920686 ;
	setAttr ".uvtk[553]" -type "float2" 4.7326575e-06 0 ;
createNode polyMergeVert -n "polyMergeVert32";
	rename -uid "2D49E584-4513-A2A5-8C44-87B779D1A347";
	setAttr ".ics" -type "componentList" 2 "vtx[431]" "vtx[481]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak40";
	rename -uid "B4528B49-4E3D-4FC4-4845-0B8203E1FCDB";
	setAttr ".uopa" yes;
	setAttr ".tk[431]" -type "float3"  -0.00074243546 -0.093070507 0.043739796;
createNode polyTweakUV -n "polyTweakUV33";
	rename -uid "1A7D23DD-440E-6A16-8330-359DF1C9BEE8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[488]" -type "float2" -1.7558177e-13 -0.0083338954 ;
	setAttr ".uvtk[558]" -type "float2" -3.4649986e-06 -3.1914221e-11 ;
createNode polyMergeVert -n "polyMergeVert33";
	rename -uid "393CBEA0-40D5-6973-670F-198221555C59";
	setAttr ".ics" -type "componentList" 2 "vtx[433]" "vtx[485]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak41";
	rename -uid "EE1C3EA0-4259-5615-573F-B6B8448EDFBA";
	setAttr ".uopa" yes;
	setAttr ".tk[433]" -type "float3"  -0.00074195862 -0.09307003 0.043740273;
createNode polyTweakUV -n "polyTweakUV34";
	rename -uid "3536229D-4FD2-6751-6680-1DB1B213865F";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[487]" -type "float2" 9.9920072e-15 -0.0083307484 ;
	setAttr ".uvtk[552]" -type "float2" -3.7672307e-06 8.4390245e-11 ;
createNode polyMergeVert -n "polyMergeVert34";
	rename -uid "4B7ABBC5-4C77-8024-30E8-82BCB8DB64C1";
	setAttr ".ics" -type "componentList" 2 "vtx[432]" "vtx[480]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak42";
	rename -uid "C6D4A61B-419F-3D67-9DE1-6F8429F4F651";
	setAttr ".uopa" yes;
	setAttr ".tk[432]" -type "float3"  -0.0026302338 -0.093067646 0.043741703;
createNode polyTweakUV -n "polyTweakUV35";
	rename -uid "CB60F863-4A64-2A69-59A8-8087AD17419D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[483]" -type "float2" 2.509104e-14 -0.0083318846 ;
	setAttr ".uvtk[564]" -type "float2" -4.2544366e-06 -2.220446e-15 ;
createNode polyMergeVert -n "polyMergeVert35";
	rename -uid "A93BEABE-48B6-8EB3-DA42-5B96D1484071";
	setAttr ".ics" -type "componentList" 2 "vtx[428]" "vtx[489]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak43";
	rename -uid "041C9A93-401F-CDCC-0B50-2E98D5CE90C4";
	setAttr ".uopa" yes;
	setAttr ".tk[428]" -type "float3"  0.00096678734 -0.093071461 0.043739319;
createNode polyTweakUV -n "polyTweakUV36";
	rename -uid "78593D76-4AF8-FA02-4FCB-ACA02EC0F81D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[484]" -type "float2" -1.5493162e-13 -0.0083273798 ;
	setAttr ".uvtk[570]" -type "float2" -5.5437808e-06 3.1914027e-11 ;
createNode polyMergeVert -n "polyMergeVert36";
	rename -uid "B6D485CF-4390-147F-7AC1-F79698C44AEE";
	setAttr ".ics" -type "componentList" 2 "vtx[429]" "vtx[494]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak44";
	rename -uid "FA25C96E-43EB-07FF-EA2A-719DE875EC93";
	setAttr ".uopa" yes;
	setAttr ".tk[429]" -type "float3"  -0.001282692 -0.093073368 0.043737888;
createNode polyTweakUV -n "polyTweakUV37";
	rename -uid "C15DFF40-4051-4144-C8DD-659548CA78F0";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[481]" -type "float2" 1.8923751e-13 -0.0083820429 ;
	setAttr ".uvtk[565]" -type "float2" 5.90323e-06 -9.4368957e-16 ;
createNode polyMergeVert -n "polyMergeVert37";
	rename -uid "9778CB45-432B-3ACF-6571-30817046AEC4";
	setAttr ".ics" -type "componentList" 2 "vtx[427]" "vtx[489]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak45";
	rename -uid "3552B8A6-45A0-A56D-541E-5999FC00EFFF";
	setAttr ".uopa" yes;
	setAttr ".tk[427]" -type "float3"  -0.0012827814 -0.093073368 0.043737888;
createNode polyTweakUV -n "polyTweakUV38";
	rename -uid "C9434319-46FD-91C4-B45B-0790BF9CF0E2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[482]" -type "float2" 3.3972825e-14 -0.0083861817 ;
	setAttr ".uvtk[559]" -type "float2" 5.6278031e-06 8.4198731e-11 ;
createNode polyMergeVert -n "polyMergeVert38";
	rename -uid "7AA31688-4B9A-292C-8397-1195205578E9";
	setAttr ".ics" -type "componentList" 2 "vtx[426]" "vtx[484]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak46";
	rename -uid "B9D0CC4D-4D6E-A82D-B7C9-17B20B25A12D";
	setAttr ".uopa" yes;
	setAttr ".tk[426]" -type "float3"  0.00096642971 -0.093071938 0.043739319;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "2967CFB2-466C-39F7-E545-AFB6BD3A8DD9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polyMapSew -n "polyMapSew2";
	rename -uid "322CC990-4932-AEFD-E613-F8BBE1A80C6F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polyMapSew -n "polyMapSew3";
	rename -uid "83D3AD95-4EE0-A380-DEB2-4E9FA0108FB9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[23]" "e[149]" "e[166]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "7E5E6EC2-4A82-F97C-49A7-078A3D669679";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[20]" "e[39:40]" "e[233]" "e[235]" "e[244:245]" "e[283]" "e[293:294]" "e[323]" "e[325]" "e[351:352]" "e[366]" "e[444]" "e[452]" "e[485]" "e[499]" "e[536]" "e[539]" "e[560]" "e[563]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "17A87951-4430-303E-F8ED-05922943EE41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[448]" "e[469]" "e[504]" "e[525]" "e[779]" "e[832]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "1BA18401-43F0-364A-4B57-01845D02CA73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[537]" "e[549]" "e[562]" "e[573]" "e[783]" "e[828]";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "F715B2F7-4BA3-00D5-B1CE-04BDE0BB08E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "f[11]" "f[108]" "f[115]" "f[137]" "f[142]" "f[156]" "f[172]" "f[180]" "f[220:227]" "f[253:259]" "f[267:269]" "f[279:280]" "f[383:386]" "f[407:410]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 9.4058847427368164 5.4842972755432129 6.6998496055603027 ;
	setAttr ".ro" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".ps" -type "double2" 1.9538631439208975 10.899256944656372 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 4.3175339258316541e-16 0 1.0000200271606445 1 0 5.1208515167236328 0 0
		 1.9444444179534912 0 -2.2204905184800439e-16 -2.2204460492503131e-16 -17.658060073852539 -28.027435302734375 21.853940963745117 22.053501129150391;
	setAttr ".prgt" 2839;
	setAttr ".ptop" 1078;
createNode polyNormal -n "polyNormal1";
	rename -uid "940B372A-4504-1376-EEC1-AE82E22B78D2";
	setAttr ".ics" -type "componentList" 1 "f[0:496]";
	setAttr ".nm" 2;
createNode polySplitVert -n "polySplitVert1";
	rename -uid "00712D50-459A-06C3-F320-F7BE49DF9EE6";
	setAttr ".ics" -type "componentList" 3 "vtx[22:23]" "vtx[84]" "vtx[87]";
createNode polyChipOff -n "polyChipOff1";
	rename -uid "6B9F5404-47AC-0A08-A78B-7CB0F9868245";
	setAttr ".ics" -type "componentList" 2 "f[4:5]" "f[8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 42945;
	setAttr ".kft" no;
	setAttr ".dup" no;
createNode polyTweakUV -n "polyTweakUV39";
	rename -uid "28EC7A22-4CCE-EC3B-69A6-6F9C8D3A0580";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk";
	setAttr ".uvtk[27]" -type "float2" -0.22602856 -0.037671387 ;
	setAttr ".uvtk[118]" -type "float2" -0.22602858 -0.037671387 ;
	setAttr ".uvtk[119]" -type "float2" -0.22602858 -0.03767141 ;
	setAttr ".uvtk[125]" -type "float2" -0.22602856 -0.037671402 ;
	setAttr ".uvtk[149]" -type "float2" -0.22602849 -0.037671473 ;
	setAttr ".uvtk[160]" -type "float2" -0.2260285 -0.037671473 ;
	setAttr ".uvtk[178]" -type "float2" -0.2260285 -0.037671473 ;
	setAttr ".uvtk[186]" -type "float2" -0.22602847 -0.037671473 ;
	setAttr ".uvtk[220]" -type "float2" -0.22602856 -0.037671391 ;
	setAttr ".uvtk[221]" -type "float2" -0.22602859 -0.037671395 ;
	setAttr ".uvtk[224]" -type "float2" -0.22602853 -0.037671473 ;
	setAttr ".uvtk[225]" -type "float2" -0.2260285 -0.037671443 ;
	setAttr ".uvtk[226]" -type "float2" -0.22602862 -0.037671473 ;
	setAttr ".uvtk[227]" -type "float2" -0.22602853 -0.037671532 ;
	setAttr ".uvtk[238]" -type "float2" -0.22602859 -0.037671413 ;
	setAttr ".uvtk[252]" -type "float2" -0.22602861 -0.037671413 ;
	setAttr ".uvtk[253]" -type "float2" -0.22602855 -0.037671354 ;
	setAttr ".uvtk[254]" -type "float2" -0.22602864 -0.037671354 ;
	setAttr ".uvtk[255]" -type "float2" -0.22602859 -0.037671395 ;
	setAttr ".uvtk[256]" -type "float2" -0.22602859 -0.037671387 ;
	setAttr ".uvtk[258]" -type "float2" -0.22602862 -0.037671402 ;
	setAttr ".uvtk[259]" -type "float2" -0.22602861 -0.037671395 ;
	setAttr ".uvtk[267]" -type "float2" -0.22602858 -0.037671402 ;
	setAttr ".uvtk[279]" -type "float2" -0.22602861 -0.037671417 ;
	setAttr ".uvtk[281]" -type "float2" -0.22602853 -0.037671443 ;
	setAttr ".uvtk[387]" -type "float2" -0.22602856 -0.037671473 ;
	setAttr ".uvtk[388]" -type "float2" -0.22602852 -0.037671473 ;
	setAttr ".uvtk[389]" -type "float2" -0.22602853 -0.037671473 ;
	setAttr ".uvtk[390]" -type "float2" -0.2260285 -0.037671473 ;
	setAttr ".uvtk[417]" -type "float2" -0.22602853 -0.037671503 ;
	setAttr ".uvtk[418]" -type "float2" -0.22602861 -0.037671532 ;
	setAttr ".uvtk[419]" -type "float2" -0.2260285 -0.037671532 ;
	setAttr ".uvtk[420]" -type "float2" -0.22602861 -0.037671413 ;
	setAttr ".uvtk[490]" -type "float2" -0.2260285 -0.037671413 ;
	setAttr ".uvtk[491]" -type "float2" -0.22602856 -0.037671354 ;
	setAttr ".uvtk[494]" -type "float2" -0.22602855 -0.037671354 ;
	setAttr ".uvtk[499]" -type "float2" -0.22602852 -0.037671413 ;
	setAttr ".uvtk[500]" -type "float2" -0.22602858 -0.037671354 ;
	setAttr ".uvtk[505]" -type "float2" -0.22602853 -0.037671473 ;
	setAttr ".uvtk[506]" -type "float2" -0.22602859 -0.037671473 ;
	setAttr ".uvtk[509]" -type "float2" -0.22602855 -0.037671473 ;
	setAttr ".uvtk[511]" -type "float2" -0.22602859 -0.037671294 ;
	setAttr ".uvtk[512]" -type "float2" -0.22602856 -0.037671354 ;
	setAttr ".uvtk[514]" -type "float2" -0.22602856 -0.037671354 ;
	setAttr ".uvtk[515]" -type "float2" -0.22602862 -0.037671294 ;
	setAttr ".uvtk[516]" -type "float2" -0.22602859 -0.037671294 ;
	setAttr ".uvtk[517]" -type "float2" -0.22602865 -0.037671354 ;
	setAttr ".uvtk[521]" -type "float2" -0.22602862 -0.037671294 ;
	setAttr ".uvtk[522]" -type "float2" -0.22602856 -0.037671294 ;
	setAttr ".uvtk[523]" -type "float2" -0.2260285 -0.037671473 ;
	setAttr ".uvtk[524]" -type "float2" -0.2260285 -0.037671473 ;
	setAttr ".uvtk[525]" -type "float2" -0.22602861 -0.037671532 ;
	setAttr ".uvtk[526]" -type "float2" -0.22602862 -0.037671413 ;
	setAttr ".uvtk[527]" -type "float2" -0.22602855 -0.037671354 ;
createNode polyMapSew -n "polyMapSew4";
	rename -uid "1B26225B-4392-CE9E-8E7D-0B8A2DC74996";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[359]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "79B1D4F4-4D16-1D44-B77A-3795920AC5CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[198]" "e[209]" "e[321]" "e[328]" "e[383]" "e[385]" "e[387:388]" "e[400:401]" "e[413]" "e[422:423]";
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "1E5014A3-42DC-42F2-DF66-FBAAD0379C2A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "f[11]" "f[108]" "f[115]" "f[137]" "f[142]" "f[156:157]" "f[160]" "f[172]" "f[180]" "f[190:191]" "f[199]" "f[208]" "f[212]" "f[220:227]" "f[253:259]" "f[267:269]" "f[279:280]" "f[383:386]" "f[407:410]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 9.4003105163574219 5.4842972755432129 9.0812873840332031 ;
	setAttr ".ro" -type "double3" 0 -90 0 ;
	setAttr ".ps" -type "double2" 6.7167391777038574 10.899256944656372 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 0 0 1.0000200271606445 1 0 5.1208515167236328 0 0 1.9444444179534912 0 0 0
		 -17.658060073852539 -28.084270477294922 27.105691909790039 27.305149078369141;
	setAttr ".prgt" 2839;
	setAttr ".ptop" 1078;
createNode polyTweakUV -n "polyTweakUV40";
	rename -uid "672C601E-4700-9DEB-A151-A6A2AA638659";
	setAttr ".uopa" yes;
	setAttr -s 69 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 5.7407628e-06 -0.062509462 ;
	setAttr ".uvtk[27]" -type "float2" -0.49765241 0.039648209 ;
	setAttr ".uvtk[102]" -type "float2" -0.49765229 0.039648309 ;
	setAttr ".uvtk[107]" -type "float2" -0.49765256 0.039648656 ;
	setAttr ".uvtk[118]" -type "float2" -0.49765271 0.039648551 ;
	setAttr ".uvtk[119]" -type "float2" -0.49765572 0.039652392 ;
	setAttr ".uvtk[125]" -type "float2" -0.4976556 0.039652482 ;
	setAttr ".uvtk[149]" -type "float2" -0.49765575 0.03965275 ;
	setAttr ".uvtk[160]" -type "float2" -0.4976559 0.039652631 ;
	setAttr ".uvtk[162]" -type "float2" -0.49765223 0.039647933 ;
	setAttr ".uvtk[163]" -type "float2" -0.49765208 0.039648037 ;
	setAttr ".uvtk[166]" -type "float2" -0.49765456 0.039651141 ;
	setAttr ".uvtk[177]" -type "float2" -0.49765468 0.039651021 ;
	setAttr ".uvtk[178]" -type "float2" -0.49765784 0.039654359 ;
	setAttr ".uvtk[186]" -type "float2" -0.4976579 0.0396543 ;
	setAttr ".uvtk[194]" -type "float2" -0.49772048 0.039657518 ;
	setAttr ".uvtk[207]" -type "float2" -0.49773407 0.039657816 ;
	setAttr ".uvtk[211]" -type "float2" -0.49765313 0.039657757 ;
	setAttr ".uvtk[220]" -type "float2" -0.49765354 0.039657518 ;
	setAttr ".uvtk[221]" -type "float2" -0.49774152 0.039657995 ;
	setAttr ".uvtk[224]" -type "float2" -0.49765289 0.039657995 ;
	setAttr ".uvtk[225]" -type "float2" -0.49765849 0.039654717 ;
	setAttr ".uvtk[226]" -type "float2" -0.49765834 0.039654836 ;
	setAttr ".uvtk[227]" -type "float2" -0.49766019 0.039656505 ;
	setAttr ".uvtk[238]" -type "float2" -0.49766031 0.039656386 ;
	setAttr ".uvtk[252]" -type "float2" -0.49765781 0.039655253 ;
	setAttr ".uvtk[253]" -type "float2" -0.49765727 0.039654836 ;
	setAttr ".uvtk[254]" -type "float2" -0.49765491 0.039656565 ;
	setAttr ".uvtk[255]" -type "float2" -0.49765545 0.039656982 ;
	setAttr ".uvtk[256]" -type "float2" -0.49765354 0.039658234 ;
	setAttr ".uvtk[258]" -type "float2" -0.49765331 0.039658412 ;
	setAttr ".uvtk[259]" -type "float2" -0.49765235 0.039658293 ;
	setAttr ".uvtk[267]" -type "float2" -0.49765283 0.03965877 ;
	setAttr ".uvtk[279]" -type "float2" -0.49765402 0.039657936 ;
	setAttr ".uvtk[281]" -type "float2" -0.49765185 0.039648626 ;
	setAttr ".uvtk[387]" -type "float2" -0.49765161 0.039648369 ;
	setAttr ".uvtk[388]" -type "float2" -0.49765155 0.039648451 ;
	setAttr ".uvtk[389]" -type "float2" -0.49765176 0.039648727 ;
	setAttr ".uvtk[390]" -type "float2" -0.49765211 0.039648969 ;
	setAttr ".uvtk[417]" -type "float2" -0.49765205 0.039649073 ;
	setAttr ".uvtk[418]" -type "float2" -0.49765408 0.039651439 ;
	setAttr ".uvtk[419]" -type "float2" -0.49765402 0.039651558 ;
	setAttr ".uvtk[489]" -type "float2" -0.49765512 0.03965281 ;
	setAttr ".uvtk[492]" -type "float2" -0.49765506 0.039652899 ;
	setAttr ".uvtk[497]" -type "float2" -0.49765533 0.039652988 ;
	setAttr ".uvtk[498]" -type "float2" -0.49765521 0.039653167 ;
	setAttr ".uvtk[503]" -type "float2" -0.49765736 0.039654717 ;
	setAttr ".uvtk[504]" -type "float2" -0.4976579 0.039655134 ;
	setAttr ".uvtk[507]" -type "float2" -0.49765965 0.039656922 ;
	setAttr ".uvtk[509]" -type "float2" -0.49765986 0.039656803 ;
	setAttr ".uvtk[510]" -type "float2" -0.49765816 0.039654896 ;
	setAttr ".uvtk[512]" -type "float2" -0.49766016 0.039656565 ;
	setAttr ".uvtk[513]" -type "float2" -0.49765781 0.039654419 ;
	setAttr ".uvtk[514]" -type "float2" -0.49765563 0.03965275 ;
	setAttr ".uvtk[515]" -type "float2" -0.49765557 0.039652541 ;
	setAttr ".uvtk[519]" -type "float2" -0.49766046 0.039657339 ;
	setAttr ".uvtk[520]" -type "float2" -0.49766022 0.03965728 ;
	setAttr ".uvtk[521]" -type "float2" -0.49766013 0.039657399 ;
	setAttr ".uvtk[522]" -type "float2" -0.49766025 0.039657459 ;
	setAttr ".uvtk[523]" -type "float2" -0.49766079 0.039657101 ;
	setAttr ".uvtk[524]" -type "float2" -0.49766067 0.039656982 ;
	setAttr ".uvtk[525]" -type "float2" -0.49766079 0.039656863 ;
	setAttr ".uvtk[542]" -type "float2" -9.2730015e-06 -0.37840408 ;
	setAttr ".uvtk[552]" -type "float2" -0.49766093 0.039656982 ;
	setAttr ".uvtk[553]" -type "float2" -0.49765536 0.039652929 ;
	setAttr ".uvtk[557]" -type "float2" -0.49765533 0.03965275 ;
	setAttr ".uvtk[558]" -type "float2" -0.49765742 0.039654657 ;
	setAttr ".uvtk[562]" -type "float2" -0.49765792 0.039655074 ;
	setAttr ".uvtk[563]" -type "float2" -0.49765995 0.039656803 ;
createNode polyMergeVert -n "polyMergeVert39";
	rename -uid "E6B28AA7-4069-BD30-3FD3-FEA60314AE4E";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[506]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak47";
	rename -uid "D0B8CDFA-48EB-4141-3E12-8AB9EC5AC005";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[23]" -type "float3" -1.1920929e-07 -1.7881393e-07 0 ;
	setAttr ".tk[498]" -type "float3" -2.3841858e-07 -4.7683716e-07 -2.9802322e-08 ;
	setAttr ".tk[505]" -type "float3" 0 -0.45313916 1.163933 ;
	setAttr ".tk[506]" -type "float3" 0 -8.9406967e-08 2.3841858e-07 ;
	setAttr ".tk[993]" -type "float3" -2.3841858e-07 -4.7683716e-07 -2.9802322e-08 ;
createNode polyTweakUV -n "polyTweakUV41";
	rename -uid "52AE83B1-4231-EC95-E42B-77960AC9AC55";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[541]" -type "float2" 1.857662e-07 -0.37836388 ;
	setAttr ".uvtk[544]" -type "float2" -1.9166441e-06 -5.9480017e-06 ;
createNode polyMergeVert -n "polyMergeVert40";
	rename -uid "5759BA6F-46BD-F9EB-9CA0-88BD85F82C3F";
	setAttr ".ics" -type "componentList" 2 "vtx[505]" "vtx[507]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak48";
	rename -uid "3272682E-4B97-97E2-3846-AD9D0C6E1B89";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[505]" -type "float3" -2.8881784e-15 0.45313907 -1.1639328 ;
	setAttr ".tk[507]" -type "float3" -4.7092163e-16 0 0 ;
createNode polyTweak -n "polyTweak49";
	rename -uid "CE080FB0-46A2-9BEC-8749-D089D3503136";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[21]" -type "float3" 0 -0.33498746 0.17293695 ;
	setAttr ".tk[504]" -type "float3" 0 -0.55305558 -0.22902998 ;
	setAttr ".tk[505]" -type "float3" 0 -1.1920929e-07 -4.7683716e-07 ;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "9EDC655E-4AE9-39FC-2FB3-378BFA76A855";
	setAttr ".dc" -type "componentList" 1 "f[76]";
createNode polyTweakUV -n "polyTweakUV42";
	rename -uid "A4D03CB7-4561-86CC-5E75-20BAD098BC20";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[541]" -type "float2" 0.00071261893 -0.0067680017 ;
	setAttr ".uvtk[548]" -type "float2" 4.197479e-06 -4.7827502e-06 ;
createNode polyMergeVert -n "polyMergeVert41";
	rename -uid "7925A546-451B-FDEE-770A-5B816827F2D3";
	setAttr ".ics" -type "componentList" 2 "vtx[504]" "vtx[510]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak50";
	rename -uid "C048D7B0-4BE7-5EFF-52FA-5F9BA7D6CCE5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[491]" -type "float3" 0 -0.095370188 0.092151254 ;
	setAttr ".tk[492]" -type "float3" 0.05626078 -0.036487646 0 ;
	setAttr ".tk[493]" -type "float3" 0 -0.070779033 -0.045285117 ;
	setAttr ".tk[504]" -type "float3" 1.2665987e-07 -1.4901161e-08 0 ;
createNode polyTweakUV -n "polyTweakUV43";
	rename -uid "C22ACBDB-4F93-3998-2A2F-76A4E507B8C9";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[527]" -type "float2" 0.10472795 -0.31370568 ;
	setAttr ".uvtk[541]" -type "float2" -3.5332832e-07 -3.7559781e-05 ;
	setAttr ".uvtk[548]" -type "float2" 3.1543639e-06 -3.5904193e-06 ;
createNode polyMergeVert -n "polyMergeVert42";
	rename -uid "B3684C3E-468E-E988-F139-849A0C8369B1";
	setAttr ".ics" -type "componentList" 2 "vtx[492]" "vtx[504]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak51";
	rename -uid "14F515A2-498E-E0A6-3D51-15BD4659A295";
	setAttr ".uopa" yes;
	setAttr ".tk[492]" -type "float3"  -0.056261063 0.036487579 0;
createNode polyTweakUV -n "polyTweakUV44";
	rename -uid "A7B47C4B-4198-B02C-29AF-4BBB962924E7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[527]" -type "float2" 0.0050895759 -0.015244895 ;
	setAttr ".uvtk[528]" -type "float2" -2.3966746e-07 0 ;
	setAttr ".uvtk[541]" -type "float2" -3.5315085e-07 -3.7541176e-05 ;
	setAttr ".uvtk[548]" -type "float2" 2.3649627e-06 -2.6965204e-06 ;
createNode polyMergeVert -n "polyMergeVert43";
	rename -uid "8C03F435-47EE-1A39-9B2F-B1952D18890E";
	setAttr ".ics" -type "componentList" 1 "vtx[491:492]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak52";
	rename -uid "5BFE08F3-419B-429A-4C2E-6F800EBC7597";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[491:492]" -type "float3"  0 0.095370293 -0.092151642
		 0 0 0;
createNode polyTweakUV -n "polyTweakUV45";
	rename -uid "C2FF9083-4DC4-1D5D-38A0-288EFD943894";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[527]" -type "float2" 0.0038165995 -0.011431928 ;
	setAttr ".uvtk[528]" -type "float2" -1.6347003e-09 0 ;
	setAttr ".uvtk[529]" -type "float2" -0.0011803074 0 ;
	setAttr ".uvtk[541]" -type "float2" -3.5297461e-07 -3.7522568e-05 ;
	setAttr ".uvtk[548]" -type "float2" 1.7678632e-06 -2.0257469e-06 ;
createNode polyMergeVert -n "polyMergeVert44";
	rename -uid "5DD581BB-4975-B949-E572-EF8FFBE1EFD6";
	setAttr ".ics" -type "componentList" 1 "vtx[491:492]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak53";
	rename -uid "CB3B4154-4383-9F65-9AB7-148EE5FD5382";
	setAttr ".uopa" yes;
	setAttr ".tk[492]" -type "float3"  0 0.070779085 0.045285225;
createNode polyTweakUV -n "polyTweakUV46";
	rename -uid "1B70BDAD-4722-C3F4-9039-3FA27727CC28";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[538]" -type "float2" 0.0007114507 -0.0068965005 ;
	setAttr ".uvtk[547]" -type "float2" -1.3205823e-06 -9.5907271e-06 ;
createNode polyMergeVert -n "polyMergeVert45";
	rename -uid "4EFFCBBA-4F2C-51BE-2770-DEA0F17AAB1F";
	setAttr ".ics" -type "componentList" 2 "vtx[500]" "vtx[506]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak54";
	rename -uid "6C618DFE-428E-D383-08F1-A39497050CE9";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[491]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[500]" -type "float3" -8.8817842e-16 0.55305552 0.22902966 ;
	setAttr ".tk[506]" -type "float3" -3.5966818e-18 0 0 ;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "9C3D487B-416B-836B-A8C2-7E9D9A218050";
	setAttr ".dc" -type "componentList" 1 "f[59]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "BA0722F8-4D8E-2E18-DCDB-A898C825C618";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[147]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.7334175 3.5941544 12.045565 ;
	setAttr ".rs" 54576;
	setAttr ".lt" -type "double3" -4.1656209424043146e-15 0.28838845326381862 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.0721073150634766 3.5941543579101562 12.045564651489258 ;
	setAttr ".cbx" -type "double3" 9.3947277069091797 3.5941545963287354 12.045564651489258 ;
createNode polyTweakUV -n "polyTweakUV47";
	rename -uid "EA59E005-4858-2FAF-E1D2-21B37F643A7B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[24]" -type "float2" -0.0045109405 -0.00022855903 ;
	setAttr ".uvtk[563]" -type "float2" 2.9301795e-05 4.1956701 ;
createNode polyMergeVert -n "polyMergeVert46";
	rename -uid "50E1CF5E-485D-D292-61AA-179A05DA8BDA";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[505]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak55";
	rename -uid "F0D5F308-432F-112F-6F61-7D8E0D65D834";
	setAttr ".uopa" yes;
	setAttr ".tk[505]" -type "float3"  9.5367432e-07 1.21161127 0;
createNode polyTweakUV -n "polyTweakUV48";
	rename -uid "D31E3A19-4602-D860-9441-78BAF21E438F";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[96]" -type "float2" -0.00056292774 -0.0012807002 ;
	setAttr ".uvtk[562]" -type "float2" -4.391139e-05 4.1959929 ;
createNode polyMergeVert -n "polyMergeVert47";
	rename -uid "54DB916B-4763-7CC2-3606-32871F7593B4";
	setAttr ".ics" -type "componentList" 2 "vtx[96]" "vtx[504]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak56";
	rename -uid "0DD58B70-4435-E101-D6A2-0C86B34FF0E4";
	setAttr ".uopa" yes;
	setAttr ".tk[504]" -type "float3"  0 1.21161151 0;
createNode polyTweakUV -n "polyTweakUV49";
	rename -uid "46290950-440E-5DB3-2CB8-71AC03FCD439";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk[524:525]" -type "float2" -0.018101893 0.054304611
		 -0.00034417553 0;
createNode polyMergeVert -n "polyMergeVert48";
	rename -uid "64DF8D9D-4F20-4EFC-DC9D-F1BFA1E416EB";
	setAttr ".ics" -type "componentList" 1 "vtx[488:489]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak57";
	rename -uid "F504E817-4585-586B-4B21-1B90E282FB52";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[20]" -type "float3" 0.077716522 0.061392158 0 ;
	setAttr ".tk[488]" -type "float3" -4.61936e-07 7.4738637e-08 0 ;
	setAttr ".tk[489]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[491]" -type "float3" 5.9604645e-07 -3.8146973e-06 0 ;
	setAttr ".tk[501]" -type "float3" -0.20393771 0.15484111 0 ;
	setAttr ".tk[516]" -type "float3" -5.9604645e-08 -6.7055225e-08 0 ;
	setAttr ".tk[966]" -type "float3" 5.9604645e-07 -3.8146973e-06 0 ;
createNode polyTweakUV -n "polyTweakUV50";
	rename -uid "D03B8953-4C1E-4FBB-9C25-28B1484E5034";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" -0.0059676324 -0.036611233 ;
	setAttr ".uvtk[524]" -type "float2" -0.018103721 0.054311655 ;
	setAttr ".uvtk[525]" -type "float2" -0.0002579382 0 ;
	setAttr ".uvtk[536]" -type "float2" -8.2038619e-05 0.00014065324 ;
createNode polyMergeVert -n "polyMergeVert49";
	rename -uid "CADC1D60-41A7-9D59-362A-1F859D6560E3";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[488]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak58";
	rename -uid "FD8908A0-42A4-5F52-7CCA-95900F306F6A";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  -0.077716827 -0.061392069 0;
createNode polyTweakUV -n "polyTweakUV51";
	rename -uid "6AA1019F-4A92-ABCF-BEB4-ACB248CF66D1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.001496364 -0.037726775 ;
	setAttr ".uvtk[524]" -type "float2" -0.012965636 0.038897265 ;
	setAttr ".uvtk[525]" -type "float2" -0.00019331212 0 ;
	setAttr ".uvtk[536]" -type "float2" 2.068253e-05 2.7503463e-06 ;
	setAttr ".uvtk[541]" -type "float2" 0.0023430651 0.020136986 ;
createNode polyMergeVert -n "polyMergeVert50";
	rename -uid "E77D1E86-4F50-FBDE-3CDE-FDAA2C3E464F";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[499]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak59";
	rename -uid "D10F8DB0-4917-C2A8-420E-AB8C2DCA7978";
	setAttr ".uopa" yes;
	setAttr ".tk[499]" -type "float3"  0.20393753 -0.15484118 0;
createNode polyTweakUV -n "polyTweakUV52";
	rename -uid "7FF03052-4666-2820-A270-08B3B8E712A4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[21]" -type "float2" 0.067759156 -0.075429887 ;
	setAttr ".uvtk[540]" -type "float2" 0.00058416685 0.0050411224 ;
createNode polyMergeVert -n "polyMergeVert51";
	rename -uid "FE04FA37-4EC1-D858-47F1-7FB86CB36C47";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[498]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweakUV -n "polyTweakUV53";
	rename -uid "41271535-4304-2F05-A835-7E9B5988B92A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[24]" -type "float2" -0.0058832741 -0.0011133329 ;
	setAttr ".uvtk[545]" -type "float2" -1.1755933e-06 3.9181073e-06 ;
	setAttr ".uvtk[563]" -type "float2" -0.0068525714 -0.017590046 ;
createNode polyMergeVert -n "polyMergeVert52";
	rename -uid "33A3E102-4484-7183-C419-4F85A619174A";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[499]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweakUV -n "polyTweakUV54";
	rename -uid "244C193D-4B2C-6D27-BA6F-E1A578BFC28F";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[531]" -type "float2" -0.00055378611 0.0033464299 ;
	setAttr ".uvtk[533]" -type "float2" 1.9183011e-10 0 ;
createNode polyMergeVert -n "polyMergeVert53";
	rename -uid "5C054F5D-4435-837C-1583-8CB965735BCC";
	setAttr ".ics" -type "componentList" 1 "vtx[492:493]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweakUV -n "polyTweakUV55";
	rename -uid "D8B50134-4978-4298-AB89-37865CD0C22E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[81]" -type "float2" -0.0180602 0.04714717 ;
	setAttr ".uvtk[529]" -type "float2" 0.046918329 -0.14075612 ;
createNode polyMergeVert -n "polyMergeVert54";
	rename -uid "B694B6A0-417E-1263-A433-999936C3E0DC";
	setAttr ".ics" -type "componentList" 2 "vtx[81]" "vtx[491]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweakUV -n "polyTweakUV56";
	rename -uid "977444D7-42EE-B519-BD28-43AE81FDF97A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[81]" -type "float2" -0.047613222 0.12535179 ;
	setAttr ".uvtk[528]" -type "float2" 0.031353358 -0.094060071 ;
	setAttr ".uvtk[529]" -type "float2" 0.0070456988 -0.021136919 ;
createNode polyMergeVert -n "polyMergeVert55";
	rename -uid "B6B1B1E1-43C0-97A4-82C1-80AA0E7AE6F0";
	setAttr ".ics" -type "componentList" 2 "vtx[81]" "vtx[489]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak60";
	rename -uid "666598F6-4D92-E013-B29F-7EB5B17DA39A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[21]" -type "float3" 0 -1.1920929e-07 5.9604645e-08 ;
	setAttr ".tk[24]" -type "float3" -1.3411045e-07 -1.937151e-07 2.9057264e-07 ;
	setAttr ".tk[81]" -type "float3" 5.2899122e-07 -3.721565e-06 -5.2154064e-08 ;
	setAttr ".tk[96]" -type "float3" -7.4505806e-09 -7.4505806e-09 3.7252903e-09 ;
	setAttr ".tk[489]" -type "float3" -3.7252903e-09 3.7252903e-09 -1.1641532e-10 ;
	setAttr ".tk[490]" -type "float3" 0.11473934 -0.089079916 -0.025273807 ;
	setAttr ".tk[491]" -type "float3" 2.0861626e-07 8.9406967e-08 2.2351742e-07 ;
	setAttr ".tk[492]" -type "float3" 2.2351742e-07 0 -2.9057264e-07 ;
createNode polyTweakUV -n "polyTweakUV57";
	rename -uid "9C893AD3-4990-360B-9A08-24B4D9245F1B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[81]" -type "float2" -0.0016402226 0.0040181875 ;
	setAttr ".uvtk[528]" -type "float2" 0.023488417 -0.070465252 ;
	setAttr ".uvtk[529]" -type "float2" -0.00019494143 0.00058478897 ;
	setAttr ".uvtk[530]" -type "float2" 0.11665253 -0.34995759 ;
createNode polyMergeVert -n "polyMergeVert56";
	rename -uid "3DEB1ECB-477D-2BA5-CF2F-34A6A59A71F6";
	setAttr ".ics" -type "componentList" 2 "vtx[81]" "vtx[489]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak61";
	rename -uid "94471003-451A-A2FE-41B0-4181DEAEF628";
	setAttr ".uopa" yes;
	setAttr ".tk[489]" -type "float3"  -0.11473846 0.089076042 0.025274277;
createNode polyTweakUV -n "polyTweakUV58";
	rename -uid "FD20F48D-4A00-3BF1-D623-B8897E97ADCA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[531]" -type "float2" -5.2908017e-06 0.00047528464 ;
	setAttr ".uvtk[532]" -type "float2" 1.1358799e-09 0 ;
	setAttr ".uvtk[533]" -type "float2" 2.3728797e-12 0 ;
	setAttr ".uvtk[561]" -type "float2" 0.0016662616 0.0045930166 ;
createNode polyMergeVert -n "polyMergeVert57";
	rename -uid "00E891DE-4C04-0E53-B107-FA8098E6C63E";
	setAttr ".ics" -type "componentList" 1 "vtx[489:490]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyMirror -n "polyMirror1";
	rename -uid "61DD179C-4A97-7DBC-0AC0-F1ADFC5D2DE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 5.7238121032714844;
	setAttr ".sp" -type "double3" 0 4.3441543018912334 11.795565116527504 ;
	setAttr ".cm" yes;
	setAttr ".fnf" 496;
	setAttr ".lnf" 991;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "A847726B-4CE6-6D37-8775-96829AFA9A2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[25]" "e[47]" "e[160]" "e[176]" "e[198]" "e[1030]" "e[1058]" "e[1176]" "e[1191]" "e[1214]";
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "AACF1A82-4596-5E5A-3B19-F2863A9517D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[9]" "f[12]" "f[16]" "f[79]" "f[85]" "f[93]" "f[505]" "f[508]" "f[512]" "f[575]" "f[581]" "f[589]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 5.3258552551269531 11.708254814147949 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 18.789455413818359 1.2232379913330078 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.9444444179534912 0 0 0 0 0 -1.0000200271606445 -1
		 0 -5.1208515167236328 0 0 -2.5800997872593169e-18 46.503925323486328 59.543098449707031 59.741905212402344;
	setAttr ".prgt" 2839;
	setAttr ".ptop" 1078;
createNode polyTweakUV -n "polyTweakUV59";
	rename -uid "5AF01D5D-44E4-130A-6F4E-17AFFB5E7C9B";
	setAttr ".uopa" yes;
	setAttr -s 19 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" 0 -3.7252903e-09 ;
	setAttr ".uvtk[13]" -type "float2" 1.1920929e-07 -1.1175871e-08 ;
	setAttr ".uvtk[15]" -type "float2" 1.1920929e-07 -7.4505806e-09 ;
	setAttr ".uvtk[25]" -type "float2" 0 1.8626451e-09 ;
	setAttr ".uvtk[29]" -type "float2" 1.1920929e-07 -4.6566129e-09 ;
	setAttr ".uvtk[94]" -type "float2" 1.1920929e-07 -4.566702e-10 ;
	setAttr ".uvtk[552]" -type "float2" 0 5.5529359e-09 ;
	setAttr ".uvtk[553]" -type "float2" 0 -1.1175871e-08 ;
	setAttr ".uvtk[594]" -type "float2" 0 -7.4505806e-09 ;
	setAttr ".uvtk[595]" -type "float2" 0 -5.5879354e-09 ;
	setAttr ".uvtk[604]" -type "float2" 0 -1.4413486e-09 ;
	setAttr ".uvtk[605]" -type "float2" -5.2154064e-08 0 ;
	setAttr ".uvtk[616]" -type "float2" -5.2154064e-08 0 ;
	setAttr ".uvtk[617]" -type "float2" -5.2154064e-08 7.4505806e-09 ;
	setAttr ".uvtk[698]" -type "float2" -5.2154064e-08 1.1562538e-08 ;
	setAttr ".uvtk[704]" -type "float2" -9.7441017e-08 0 ;
	setAttr ".uvtk[1130]" -type "float2" -9.7775242e-08 3.7252903e-09 ;
	setAttr ".uvtk[1131]" -type "float2" -9.8147488e-08 8.3819032e-09 ;
	setAttr ".uvtk[1132]" -type "float2" -9.8351705e-08 1.2547215e-08 ;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "53CD54FB-43A3-AF2E-72B8-EFB7777C05B7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "f[507]" "f[602]" "f[609]" "f[631]" "f[636]" "f[650:651]" "f[654]" "f[666]" "f[674]" "f[684:685]" "f[693]" "f[702]" "f[706]" "f[714:721]" "f[747:753]" "f[761:763]" "f[773:774]" "f[877:880]" "f[901:904]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -9.4003105163574219 5.4842972755432129 9.0812873840332031 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 6.7167391777038574 10.899256944656372 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 0 0 -1.0000200271606445 -1 0 5.1208515167236328 0 0
		 -1.9444444179534912 0 0 0 17.658060073852539 -28.084270477294922 27.105691909790039 27.305149078369141;
	setAttr ".prgt" 2839;
	setAttr ".ptop" 1078;
createNode polyTweakUV -n "polyTweakUV60";
	rename -uid "DAFDF68C-456F-4E3F-E6E5-928327BA60E3";
	setAttr ".uopa" yes;
	setAttr -s 67 ".uvtk";
	setAttr ".uvtk[600]" -type "float2" 0.83344829 -0.0042380393 ;
	setAttr ".uvtk[601]" -type "float2" 0.83344913 -0.0042376909 ;
	setAttr ".uvtk[602]" -type "float2" 0.83344901 -0.0042373482 ;
	setAttr ".uvtk[603]" -type "float2" 0.83344805 -0.0042376928 ;
	setAttr ".uvtk[716]" -type "float2" 0.83345926 -0.0042339247 ;
	setAttr ".uvtk[717]" -type "float2" 0.83345973 -0.0042336565 ;
	setAttr ".uvtk[718]" -type "float2" 0.83345962 -0.0042333286 ;
	setAttr ".uvtk[719]" -type "float2" 0.83345902 -0.0042335968 ;
	setAttr ".uvtk[732]" -type "float2" 0.83344758 -0.0042383112 ;
	setAttr ".uvtk[733]" -type "float2" 0.83344746 -0.0042379666 ;
	setAttr ".uvtk[764]" -type "float2" 0.83345568 -0.004235236 ;
	setAttr ".uvtk[765]" -type "float2" 0.83345556 -0.0042348783 ;
	setAttr ".uvtk[780]" -type "float2" 0.83346534 -0.0042327326 ;
	setAttr ".uvtk[781]" -type "float2" 0.83346534 -0.0042324346 ;
	setAttr ".uvtk[782]" -type "float2" 0.83352441 -0.0042213779 ;
	setAttr ".uvtk[783]" -type "float2" 0.83346075 -0.0042218845 ;
	setAttr ".uvtk[784]" -type "float2" 0.83346039 -0.0042208713 ;
	setAttr ".uvtk[785]" -type "float2" 0.833538 -0.0042202454 ;
	setAttr ".uvtk[789]" -type "float2" 0.83346003 -0.004220156 ;
	setAttr ".uvtk[790]" -type "float2" 0.83354539 -0.0042196494 ;
	setAttr ".uvtk[811]" -type "float2" 0.83346677 -0.0042324942 ;
	setAttr ".uvtk[812]" -type "float2" 0.83347213 -0.0042316001 ;
	setAttr ".uvtk[813]" -type "float2" 0.83347189 -0.0042312425 ;
	setAttr ".uvtk[814]" -type "float2" 0.83346665 -0.0042321365 ;
	setAttr ".uvtk[835]" -type "float2" 0.83346611 -0.0042307656 ;
	setAttr ".uvtk[836]" -type "float2" 0.83346379 -0.004224984 ;
	setAttr ".uvtk[837]" -type "float2" 0.83346242 -0.0042252224 ;
	setAttr ".uvtk[838]" -type "float2" 0.83346474 -0.004231004 ;
	setAttr ".uvtk[839]" -type "float2" 0.8334617 -0.0042205732 ;
	setAttr ".uvtk[840]" -type "float2" 0.8334614 -0.0042199772 ;
	setAttr ".uvtk[849]" -type "float2" 0.83346099 -0.0042188447 ;
	setAttr ".uvtk[850]" -type "float2" 0.83345956 -0.0042191427 ;
	setAttr ".uvtk[855]" -type "float2" 0.83346212 -0.0042217057 ;
	setAttr ".uvtk[860]" -type "float2" 0.83344769 -0.0042366572 ;
	setAttr ".uvtk[861]" -type "float2" 0.83344758 -0.0042363144 ;
	setAttr ".uvtk[862]" -type "float2" 0.83344686 -0.0042365883 ;
	setAttr ".uvtk[863]" -type "float2" 0.83344698 -0.00423691 ;
	setAttr ".uvtk[864]" -type "float2" 0.83344865 -0.0042363126 ;
	setAttr ".uvtk[865]" -type "float2" 0.83344853 -0.0042359699 ;
	setAttr ".uvtk[866]" -type "float2" 0.83345509 -0.0042338651 ;
	setAttr ".uvtk[867]" -type "float2" 0.83345509 -0.0042335074 ;
	setAttr ".uvtk[868]" -type "float2" 0.83345866 -0.0042325538 ;
	setAttr ".uvtk[869]" -type "float2" 0.83345854 -0.0042321961 ;
	setAttr ".uvtk[870]" -type "float2" 0.83345914 -0.0042323153 ;
	setAttr ".uvtk[871]" -type "float2" 0.83345902 -0.0042319577 ;
	setAttr ".uvtk[872]" -type "float2" 0.83346486 -0.0042313617 ;
	setAttr ".uvtk[873]" -type "float2" 0.83346617 -0.0042311233 ;
	setAttr ".uvtk[874]" -type "float2" 0.83347142 -0.0042298716 ;
	setAttr ".uvtk[875]" -type "float2" 0.83347166 -0.0042302292 ;
	setAttr ".uvtk[892]" -type "float2" 0.83346641 -0.0042320173 ;
	setAttr ".uvtk[893]" -type "float2" 0.83347189 -0.0042310636 ;
	setAttr ".uvtk[894]" -type "float2" 0.83346522 -0.0042322557 ;
	setAttr ".uvtk[895]" -type "float2" 0.8334595 -0.0042331796 ;
	setAttr ".uvtk[896]" -type "float2" 0.83345902 -0.004233418 ;
	setAttr ".uvtk[905]" -type "float2" 0.83347332 -0.0042299312 ;
	setAttr ".uvtk[906]" -type "float2" 0.83347309 -0.0042295735 ;
	setAttr ".uvtk[907]" -type "float2" 0.83347273 -0.0042295735 ;
	setAttr ".uvtk[908]" -type "float2" 0.83347285 -0.0042299312 ;
	setAttr ".uvtk[909]" -type "float2" 0.83347356 -0.0042308848 ;
	setAttr ".uvtk[910]" -type "float2" 0.83347321 -0.0042309444 ;
	setAttr ".uvtk[911]" -type "float2" 0.83347332 -0.0042313021 ;
	setAttr ".uvtk[912]" -type "float2" 0.8334738 -0.0042312425 ;
	setAttr ".uvtk[1045]" -type "float2" 0.83345926 -0.0042324942 ;
	setAttr ".uvtk[1046]" -type "float2" 0.83345878 -0.0042327326 ;
	setAttr ".uvtk[1047]" -type "float2" 0.83346486 -0.0042315405 ;
	setAttr ".uvtk[1048]" -type "float2" 0.83346629 -0.0042313021 ;
	setAttr ".uvtk[1049]" -type "float2" 0.83347166 -0.0042303484 ;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "6B5D96B0-445E-0694-C51C-08B3B62C6212";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 52 "e[1017]" "e[1022]" "e[1039]" "e[1091]" "e[1093]" "e[1104]" "e[1107]" "e[1113]" "e[1118]" "e[1123]" "e[1135]" "e[1155]" "e[1174]" "e[1184]" "e[1197]" "e[1203]" "e[1209]" "e[1224]" "e[1232]" "e[1235]" "e[1247]" "e[1253]" "e[1257]" "e[1259]" "e[1306]" "e[1319]" "e[1326]" "e[1329]" "e[1332]" "e[1336]" "e[1361]" "e[1367]" "e[1373]" "e[1378]" "e[1397]" "e[1400]" "e[1412]" "e[1416]" "e[1441]" "e[1444]" "e[1451]" "e[1453]" "e[1461]" "e[1468]" "e[1471]" "e[1501]" "e[1521]" "e[1531]" "e[1548]" "e[1554]" "e[1571]" "e[1574]";
createNode polyPlanarProj -n "polyPlanarProj5";
	rename -uid "BF47CB80-4A86-633A-0F9D-35863ACC625E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 30 "f[516]" "f[531]" "f[537:538]" "f[541]" "f[550]" "f[556]" "f[572]" "f[577:578]" "f[582]" "f[591]" "f[593]" "f[596]" "f[598]" "f[604]" "f[607]" "f[635]" "f[640]" "f[644]" "f[656]" "f[660]" "f[662]" "f[670]" "f[678]" "f[689]" "f[697:698]" "f[710]" "f[725:732]" "f[736:743]" "f[755:757]" "f[767:769]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -10.158811569213867 5.473198413848877 9.0812873840332031 ;
	setAttr ".ro" -type "double3" 0 -90 0 ;
	setAttr ".ps" -type "double2" 6.7167391777038574 10.921454429626465 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 0 0 1.0000200271606445 1 0 5.1208515167236328 0 0 1.9444444179534912 0 0 0
		 -17.658060073852539 -28.027435302734375 51.264003753662109 51.462978363037109;
	setAttr ".prgt" 2839;
	setAttr ".ptop" 1078;
createNode polyTweakUV -n "polyTweakUV61";
	rename -uid "AD9E7B61-4573-0DBE-0CFC-01B77F7652C4";
	setAttr ".uopa" yes;
	setAttr -s 78 ".uvtk";
	setAttr ".uvtk[570]" -type "float2" -0.64730334 -2.6941299e-05 ;
	setAttr ".uvtk[575]" -type "float2" -0.64730376 -2.7015805e-05 ;
	setAttr ".uvtk[598]" -type "float2" -0.64730358 -2.8468668e-05 ;
	setAttr ".uvtk[620]" -type "float2" -0.64730316 -2.8375536e-05 ;
	setAttr ".uvtk[621]" -type "float2" -0.64731961 4.0110201e-05 ;
	setAttr ".uvtk[635]" -type "float2" -0.64731944 4.30174e-05 ;
	setAttr ".uvtk[641]" -type "float2" -0.64732409 4.3253851e-05 ;
	setAttr ".uvtk[642]" -type "float2" -0.64732426 4.0346757e-05 ;
	setAttr ".uvtk[648]" -type "float2" -0.64731979 3.6209822e-05 ;
	setAttr ".uvtk[650]" -type "float2" -0.64732444 3.644079e-05 ;
	setAttr ".uvtk[659]" -type "float2" -0.64732683 4.3383923e-05 ;
	setAttr ".uvtk[665]" -type "float2" -0.64732695 4.0477142e-05 ;
	setAttr ".uvtk[685]" -type "float2" -0.64732713 3.65749e-05 ;
	setAttr ".uvtk[690]" -type "float2" -0.64732087 1.4066696e-05 ;
	setAttr ".uvtk[691]" -type "float2" -0.64732552 1.4305115e-05 ;
	setAttr ".uvtk[696]" -type "float2" -0.64732826 1.4454126e-05 ;
	setAttr ".uvtk[702]" -type "float2" -0.64732105 1.0460615e-05 ;
	setAttr ".uvtk[705]" -type "float2" -0.64732569 1.0699034e-05 ;
	setAttr ".uvtk[707]" -type "float2" -0.64732116 8.9406967e-06 ;
	setAttr ".uvtk[709]" -type "float2" -0.64732581 9.1791153e-06 ;
	setAttr ".uvtk[712]" -type "float2" -0.64732844 1.0818243e-05 ;
	setAttr ".uvtk[713]" -type "float2" -0.6473285 9.3281269e-06 ;
	setAttr ".uvtk[723]" -type "float2" -0.64732647 -5.0365925e-06 ;
	setAttr ".uvtk[724]" -type "float2" -0.64732188 -5.2750111e-06 ;
	setAttr ".uvtk[725]" -type "float2" -0.64732921 -4.9173832e-06 ;
	setAttr ".uvtk[728]" -type "float2" -0.64732659 -7.212162e-06 ;
	setAttr ".uvtk[729]" -type "float2" -0.64732194 -7.4505806e-06 ;
	setAttr ".uvtk[731]" -type "float2" -0.64732933 -7.0929527e-06 ;
	setAttr ".uvtk[761]" -type "float2" -0.64730561 -1.0848045e-05 ;
	setAttr ".uvtk[769]" -type "float2" -0.64730603 -1.090765e-05 ;
	setAttr ".uvtk[770]" -type "float2" -0.64730591 -1.1742115e-05 ;
	setAttr ".uvtk[771]" -type "float2" -0.64730549 -1.168251e-05 ;
	setAttr ".uvtk[773]" -type "float2" -0.64730346 -2.9452378e-05 ;
	setAttr ".uvtk[774]" -type "float2" -0.64730299 -2.9379502e-05 ;
	setAttr ".uvtk[793]" -type "float2" -0.64730471 -1.6957521e-05 ;
	setAttr ".uvtk[794]" -type "float2" -0.64730513 -1.7017126e-05 ;
	setAttr ".uvtk[800]" -type "float2" -0.64730829 -3.1590462e-06 ;
	setAttr ".uvtk[801]" -type "float2" -0.64730889 -3.2186508e-06 ;
	setAttr ".uvtk[802]" -type "float2" -0.64729029 -1.2516975e-06 ;
	setAttr ".uvtk[804]" -type "float2" -0.64729214 -1.4901161e-06 ;
	setAttr ".uvtk[820]" -type "float2" -0.6472894 -1.1920929e-06 ;
	setAttr ".uvtk[829]" -type "float2" -0.6473121 5.8412552e-06 ;
	setAttr ".uvtk[848]" -type "float2" -0.6473096 -1.3709068e-06 ;
	setAttr ".uvtk[857]" -type "float2" -0.64730901 -1.3113022e-06 ;
	setAttr ".uvtk[882]" -type "float2" -0.64731169 5.9008598e-06 ;
	setAttr ".uvtk[883]" -type "float2" -0.64730608 -2.8610229e-06 ;
	setAttr ".uvtk[884]" -type "float2" -0.64729744 -1.6093254e-06 ;
	setAttr ".uvtk[885]" -type "float2" -0.64729798 2.3841858e-07 ;
	setAttr ".uvtk[886]" -type "float2" -0.64730686 -1.013279e-06 ;
	setAttr ".uvtk[887]" -type "float2" -0.64729005 8.3446503e-07 ;
	setAttr ".uvtk[888]" -type "float2" -0.64729095 6.5565109e-07 ;
	setAttr ".uvtk[889]" -type "float2" -0.64728773 -8.3446503e-07 ;
	setAttr ".uvtk[890]" -type "float2" -0.64728844 1.013279e-06 ;
	setAttr ".uvtk[891]" -type "float2" -0.64729273 5.364418e-07 ;
	setAttr ".uvtk[899]" -type "float2" -0.64730948 6.1988831e-06 ;
	setAttr ".uvtk[900]" -type "float2" -0.64731008 6.1392784e-06 ;
	setAttr ".uvtk[901]" -type "float2" -0.64730746 -1.1324883e-06 ;
	setAttr ".uvtk[1138]" -type "float2" -0.64730668 -2.9206276e-06 ;
	setAttr ".uvtk[1141]" -type "float2" -0.6473034 -1.0550022e-05 ;
	setAttr ".uvtk[1143]" -type "float2" -0.647304 -1.0609627e-05 ;
	setAttr ".uvtk[1146]" -type "float2" -0.64730328 -1.1384487e-05 ;
	setAttr ".uvtk[1150]" -type "float2" -0.64730394 -1.1444092e-05 ;
	setAttr ".uvtk[1151]" -type "float2" -0.64730257 -1.6659498e-05 ;
	setAttr ".uvtk[1153]" -type "float2" -0.64730316 -1.6719103e-05 ;
	setAttr ".uvtk[1155]" -type "float2" -0.6473012 -2.6650727e-05 ;
	setAttr ".uvtk[1156]" -type "float2" -0.64730179 -2.6725233e-05 ;
	setAttr ".uvtk[1161]" -type "float2" -0.64730096 -2.810359e-05 ;
	setAttr ".uvtk[1162]" -type "float2" -0.64730155 -2.8176233e-05 ;
	setAttr ".uvtk[1168]" -type "float2" -0.64730084 -2.9087998e-05 ;
	setAttr ".uvtk[1172]" -type "float2" -0.64730144 -2.9159943e-05 ;
	setAttr ".uvtk[1175]" -type "float2" -0.64731246 8.3446503e-06 ;
	setAttr ".uvtk[1179]" -type "float2" -0.64731306 8.225441e-06 ;
	setAttr ".uvtk[1180]" -type "float2" -0.64731282 7.6889992e-06 ;
	setAttr ".uvtk[1183]" -type "float2" -0.6473124 7.7486038e-06 ;
	setAttr ".uvtk[1185]" -type "float2" -0.64731091 8.4638596e-06 ;
	setAttr ".uvtk[1186]" -type "float2" -0.64731061 7.9870224e-06 ;
	setAttr ".uvtk[1187]" -type "float2" -0.6473102 8.046627e-06 ;
	setAttr ".uvtk[1189]" -type "float2" -0.64731044 8.5830688e-06 ;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "DE511ADE-4818-0ABB-56EB-0F8E1BDF475B";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:991]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 20.323493957519531 20.323493957519531 20.323493957519531 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV62";
	rename -uid "552B7B3C-4F5E-0A9B-67A6-41A84789CBB0";
	setAttr ".uopa" yes;
	setAttr -s 1920 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.058875799 -0.23119235 -0.058453739
		 -0.23119235 -0.058453739 -0.23003578 -0.058875799 -0.23003578 -0.058875799 -0.23198652
		 -0.058453739 -0.23198652 -0.057182193 -0.23119235 -0.057182193 -0.23003575 -0.058453739
		 -0.22201276 -0.058875859 -0.22201276 -0.057182193 -0.23198652 -0.056765288 -0.23119235
		 -0.056765288 -0.23003575 -0.057182252 -0.22201276 -0.058453739 -0.21774244 -0.058875859
		 -0.2177425 -0.056765288 -0.23198652 -0.056765378 -0.22201276 -0.058453798 -0.21709549
		 -0.058875859 -0.21709549 -0.057182252 -0.21774244 -0.056765378 -0.21774244 -0.058263034
		 -0.21774244 -0.058263034 -0.21709549 -0.05980891 -0.21078387 -0.06023097 -0.21078387
		 -0.057182252 -0.21709543 -0.056765378 -0.21709549 -0.057398438 -0.21774244 -0.057398438
		 -0.21709543 -0.059618145 -0.21078387 -0.060147673 -0.20920593 -0.060569763 -0.20920593
		 -0.058537364 -0.21078387 -0.058120489 -0.21078387 -0.05875349 -0.21078387 -0.059956878
		 -0.20920593 -0.061434954 -0.20320988 -0.061857045 -0.20320988 -0.058876127 -0.20920593
		 -0.058459252 -0.20920593 -0.059092283 -0.20920593 -0.061244249 -0.20320988 -0.061756819
		 -0.20171082 -0.06217888 -0.20171082 -0.051023126 -0.21076632 -0.051361859 -0.20918843
		 -0.059746563 -0.20320988 -0.060163409 -0.20320988 -0.060379595 -0.20320994 -0.061841488
		 -0.20131624 -0.062263578 -0.20131624 -0.046849966 -0.21118483 -0.047188759 -0.20960689
		 -0.060068429 -0.20171082 -0.060485244 -0.20171082 -0.060569942 -0.20131624 -0.045428514
		 -0.21123543 -0.045767307 -0.20965755 -0.060153127 -0.20131624 -0.045878768 -0.217098
		 -0.04447186 -0.217098 -0.044663131 -0.21126264 -0.045001984 -0.20968479 -0.04369992
		 -0.217098 -0.043362856 -0.21122882 -0.043701649 -0.20965087 -0.34148464 -0.79971349
		 -0.34148464 -0.81060004 -0.3403281 -0.81060004 -0.3403281 -0.79971349 0.23889345
		 -0.86539108 0.23889345 -0.85450447 0.23773682 -0.85450447 0.23773694 -0.86539108
		 -0.67905402 -0.41747722 -0.67905402 -0.41863376 -0.67863208 -0.41863376 -0.67863208
		 -0.41747722 -0.68032563 -0.41747722 -0.68032563 -0.41863376 -0.67905402 -0.41942802
		 -0.67863208 -0.41942802 -0.67905402 -0.40945435 -0.67863208 -0.40945435 -0.6807425
		 -0.41863376 -0.68074244 -0.41747722 -0.68032563 -0.41942799 -0.68032557 -0.40945435
		 -0.67905402 -0.405184 -0.67863196 -0.405184 -0.6807425 -0.41942799 -0.68074244 -0.40945435
		 -0.68032557 -0.405184 -0.67905402 -0.40453702 -0.67863196 -0.40453702 -0.68074244
		 -0.405184 -0.68032557 -0.40453702 -0.67769885 -0.39822546 -0.67727679 -0.39822546
		 -0.68074244 -0.40453702 -0.67897058 -0.39822546 -0.67736018 -0.39664742 -0.67693806
		 -0.39664742 -0.67938745 -0.39822546 -0.67863166 -0.39664742 -0.6756506 -0.39065138
		 -0.67607284 -0.39065138 -0.67904854 -0.39664742 -0.67734438 -0.39065138 -0.67532879
		 -0.38915241 -0.67575103 -0.38915241 -0.67776126 -0.39065138 -0.6861459 -0.39662996
		 -0.68648469 -0.39820781 -0.6770224 -0.38915241 -0.67566633 -0.38875788 -0.67524415
		 -0.38875788 -0.67743933 -0.38915241 -0.690319 -0.39704847 -0.69065779 -0.39862633
		 -0.67693788 -0.38875788 -0.67735469 -0.38875788 -0.69174039 -0.39709908 -0.69207925
		 -0.39867684 -0.69250584 -0.39712623 -0.69284457 -0.39870417 -0.69303608 -0.40453896
		 -0.69162899 -0.40453896 -0.69380617 -0.3970924 -0.69414496 -0.39867032 -0.69380999
		 -0.40453896 -0.69303608 -0.40519097 -0.69162899 -0.40519097 -0.69380999 -0.40519097
		 -0.69303608 -0.40941188 -0.69162899 -0.40941188 -0.69381005 -0.40941188 -0.69303608
		 -0.40984741 -0.69162899 -0.40984741 -0.69381005 -0.40984741 -0.69303608 -0.41092369
		 -0.69162899 -0.41092369 -0.69381005 -0.41092369 -0.69303608 -0.4174774 -0.69162905
		 -0.4174774 -0.69381005 -0.4174774 -0.69303608 -0.41863394 -0.69162905 -0.41863394
		 -0.69381005 -0.41863394 -0.69303608 -0.41949064 -0.69162905 -0.41949064 -0.69381005
		 -0.41949064 -0.36054891 -0.32500046 -0.36195591 -0.32500046 -0.36195591 -0.32585722
		 -0.36054891 -0.32585722 -0.36054891 -0.3238439 -0.36195591 -0.32384396 -0.35977495
		 -0.32500046 -0.35977495 -0.32585722 -0.36054894 -0.31729025 -0.36195594 -0.31729025
		 -0.35977495 -0.3238439 -0.36054894 -0.31224042 -0.36195594 -0.31224042 -0.35977498
		 -0.31729025 -0.35977498 -0.31621385 -0.36054894 -0.31621385 -0.35977498 -0.31577837
		 -0.36054894 -0.31577837 -0.36054894 -0.31155747 -0.35977712 -0.31155747 -0.16556221
		 -0.93102854 -0.16621423 -0.9310286 -0.1662142 -0.93229187 -0.16556218 -0.93229175
		 0.23543361 -0.55557752 0.2396546 -0.55557752 0.23965597 -0.55340022 0.23542511 -0.55340022
		 0.23965818 -0.54987299 0.23541138 -0.54987299 0.23965877 -0.54901052 0.23540714 -0.54901052
		 0.23966086 -0.54556191 0.23539448 -0.54556179 0.23966137 -0.54469103 0.23539108 -0.54469103
		 0.23644429 -0.46823746 0.23222332 -0.46823746 0.23221479 -0.47041473 0.23644561 -0.47041479
		 0.23220097 -0.47394207 0.23644778 -0.47394207 0.23219675 -0.47480446 0.23644847 -0.47480446
		 0.23710212 -0.47394171 0.23710001 -0.47041431 0.23218411 -0.47825319 0.23645046 -0.47825325
		 0.23218067 -0.4791241 0.23645091 -0.4791241 0.23710477 -0.47825277 0.23710281 -0.47480404
		 0.11886479 -0.22576207 0.11800012 -0.22576207 0.11501921 -0.24029481 0.1158838 -0.24029481
		 0.35014701 -0.2266238 0.34928232 -0.2266238 0.35226342 -0.24115655 0.35312805 -0.24115655
		 0.42936984 -0.58824253 0.42850524 -0.58824253 0.42552379 -0.60277522 0.42638844 -0.60277522
		 0.090988338 -0.35328978 0.090123691 -0.35328978 0.093104742 -0.36782241 0.09396939
		 -0.36782241 0.061632141 -0.35236347 0.060767502 -0.3523635 0.057786509 -0.36689618
		 0.058651179 -0.36689624 -0.075284302 -0.41232356 -0.076148987 -0.41232356 -0.073167875
		 -0.42685625 -0.072303221 -0.42685625 -0.078856319 -0.70398009 -0.079720974 -0.70398009
		 -0.082702041 -0.71851277 -0.081837386 -0.71851277 -0.20384306 -0.49078393 -0.20470774
		 -0.49078387 -0.20172665 -0.5053165 -0.20086196 -0.5053165 0.18974209 -0.72434711
		 0.18887746 -0.72434711 0.18589634 -0.73887974 0.18676099 -0.73887974 -0.37396476
		 -0.48362166 -0.37482941 -0.48362166 -0.37184832 -0.49815431 -0.37098366 -0.49815431
		 -0.34790355 -0.69488263 -0.3487682 -0.69488263 -0.3517493 -0.70941508 -0.35088462
		 -0.70941508 -0.1661709 -0.71524489;
	setAttr ".uvtk[250:499]" -0.16703543 -0.71524489 -0.16405442 -0.72977775 -0.16318977
		 -0.72977775 0.19799325 -0.38073421 0.19799325 -0.37957773 0.19757116 -0.37957773
		 0.19757116 -0.38073421 0.19799331 -0.37155473 0.19757116 -0.37155473 0.19629964 -0.37957773
		 0.19629964 -0.38073421 0.19799325 -0.38152847 0.19757116 -0.38152847 0.19799331 -0.36728442
		 0.19757122 -0.36728442 0.19629964 -0.37155473 0.19588274 -0.37957773 0.19588274 -0.38073421
		 0.19629964 -0.38152847 0.19799331 -0.36663744 0.19757122 -0.36663744 0.1958828 -0.37155473
		 0.19588274 -0.38152847 0.19934836 -0.36032575 0.19892633 -0.36032575 0.19738048 -0.36663744
		 0.19738042 -0.36728442 0.1962997 -0.36728442 0.1958828 -0.36728442 0.19968715 -0.3587479
		 0.19926506 -0.3587479 0.19873554 -0.36032575 0.19651586 -0.36663744 0.19651586 -0.36728442
		 0.1962997 -0.36663744 0.1958828 -0.36663744 0.20097452 -0.35275173 0.20055243 -0.35275173
		 0.19907433 -0.3587479 0.197871 -0.36032569 0.19765475 -0.36032575 0.19723794 -0.36032575
		 0.20129633 -0.35125273 0.20087418 -0.35125273 0.2003617 -0.35275173 0.1982097 -0.3587479
		 0.19799355 -0.3587479 0.19757664 -0.3587479 0.201381 -0.35085824 0.20095891 -0.35085824
		 0.19949707 -0.35275173 0.19886401 -0.35275173 0.19928086 -0.35275173 0.19047928 -0.35873038
		 0.19014058 -0.36030832 0.19968739 -0.35085824 0.19960272 -0.35125273 0.19918588 -0.35125273
		 0.18630615 -0.35914886 0.18596742 -0.36072683 0.19927049 -0.35085824 0.18488476 -0.35919949
		 0.18454596 -0.36077744 0.18411931 -0.35922664 0.18378058 -0.36080462 0.18499625 -0.36663994
		 0.18358919 -0.36663994 0.18281904 -0.35919291 0.18248025 -0.36077082 0.18281734 -0.36663994
		 0.05755502 -0.71081913 0.058711618 -0.71081913 0.058711559 -0.69993246 0.05755496
		 -0.69993246 -0.050164744 -0.6733287 -0.051321283 -0.6733287 -0.051321283 -0.68421543
		 -0.050164744 -0.68421543 -0.28472549 -0.4188388 -0.28514755 -0.4188388 -0.28514755
		 -0.41999534 -0.28472549 -0.41999534 -0.28472549 -0.41081586 -0.28514749 -0.41081586
		 -0.28514755 -0.42078957 -0.28472549 -0.42078957 -0.28345394 -0.41883883 -0.28345394
		 -0.41999534 -0.28472549 -0.40654561 -0.28514749 -0.40654555 -0.28345394 -0.41081586
		 -0.28345394 -0.42078957 -0.28303707 -0.41999534 -0.28303707 -0.41883883 -0.28472549
		 -0.4058986 -0.28514749 -0.4058986 -0.28345394 -0.40654561 -0.28303707 -0.41081586
		 -0.28303713 -0.42078957 -0.28608048 -0.39958686 -0.28650266 -0.39958695 -0.28345394
		 -0.4058986 -0.28303707 -0.40654561 -0.28641924 -0.39800903 -0.28684139 -0.39800903
		 -0.28480896 -0.39958695 -0.28303707 -0.4058986 -0.28812861 -0.39201295 -0.28770649
		 -0.39201295 -0.28514767 -0.39800903 -0.28439206 -0.39958695 -0.28643501 -0.39201295
		 -0.28845048 -0.39051387 -0.28802839 -0.39051387 -0.28473079 -0.39800903 -0.28601813
		 -0.39201295 -0.28675684 -0.39051387 -0.288113 -0.39011934 -0.28853515 -0.39011934
		 -0.2772947 -0.39956951 -0.27763349 -0.39799157 -0.28633994 -0.39051387 -0.28684154
		 -0.39011934 -0.2731216 -0.39998803 -0.27346039 -0.39841011 -0.2864247 -0.39011934
		 -0.27170014 -0.40003863 -0.272039 -0.39846075 -0.27074349 -0.40590063 -0.2721504
		 -0.40590063 -0.27093476 -0.40006578 -0.27127361 -0.39848799 -0.26996946 -0.40590063
		 -0.27074349 -0.40655255 -0.27215046 -0.40655255 -0.26963449 -0.40003198 -0.26997316
		 -0.3984541 -0.26996946 -0.40655255 -0.27074349 -0.41077358 -0.27215046 -0.41077358
		 -0.26996946 -0.41077358 -0.27215046 -0.41120896 -0.27074349 -0.41120896 -0.26996946
		 -0.41120896 -0.27215046 -0.41228539 -0.27074349 -0.41228539 -0.26996946 -0.41228539
		 -0.27215046 -0.41883907 -0.27074349 -0.41883907 -0.26996952 -0.41883907 -0.27215046
		 -0.41999561 -0.27074349 -0.41999564 -0.26996952 -0.41999564 -0.27215046 -0.42085227
		 -0.27074349 -0.42085227 -0.26996952 -0.42085227 0.52275181 -0.3350091 0.52277392
		 -0.33587104 0.52407789 -0.33604103 0.52413696 -0.33518666 0.52196348 -0.33510852
		 0.52207363 -0.33595961 0.52274489 -0.33385664 0.52417547 -0.33412075 0.52199066 -0.33376646
		 0.52441543 -0.3271538 0.525787 -0.32785219 0.52361339 -0.32725036 0.52634633 -0.32276398
		 0.524863 -0.32216394 0.52323711 -0.32624167 0.52401322 -0.32602078 0.52310622 -0.32580274
		 0.52388901 -0.32559121 0.52219111 -0.32130522 0.52144694 -0.32170886 0.033399165
		 -0.93009245 0.033399165 -0.92882931 0.032747149 -0.92882931 0.032747179 -0.93009245
		 0.18651697 -0.40527898 0.18650845 -0.40745637 0.19073927 -0.40745637 0.1907379 -0.40527898
		 0.18649468 -0.41098362 0.19074149 -0.41098362 0.18649048 -0.41184601 0.19074209 -0.41184601
		 0.18647781 -0.41529477 0.19074412 -0.41529477 0.18647441 -0.41616565 0.1907447 -0.41616565
		 0.122874 -0.35815296 0.12287537 -0.35597563 0.11864452 -0.35597563 0.11865304 -0.35815296
		 0.12287754 -0.35244834 0.11863078 -0.35244834 0.12352975 -0.35597599 0.12353192 -0.35244876
		 0.12287822 -0.35158595 0.1186265 -0.35158595 0.12288024 -0.3481372 0.1186139 -0.3481372
		 0.12353261 -0.35158634 0.1235346 -0.34813762 0.12288079 -0.34726629 0.11861049 -0.34726629
		 -0.53841889 -0.41427681 -0.53543794 -0.4288094 -0.5345732 -0.42880946 -0.53755432
		 -0.41427681 -0.55122709 -0.4529925 -0.55420816 -0.46752521 -0.55334353 -0.46752521
		 -0.55036247 -0.4529925 -0.45723838 -0.45339292 -0.45425728 -0.4679257 -0.45339265
		 -0.46792576 -0.45637372 -0.45339292 -0.66208249 -0.45253137 -0.66506356 -0.46706396
		 -0.66419894 -0.46706396 -0.66121793 -0.45253137 -0.55326951 -0.51759142 -0.55028856
		 -0.53212404 -0.54942381 -0.53212392 -0.55240488 -0.51759148 -0.62312675 -0.57907683
		 -0.62610781 -0.59360945 -0.62524319 -0.59360945 -0.62226206 -0.57907683 -0.34067079
		 -0.81550694 -0.3376897 -0.83003968 -0.33682507 -0.83003968 -0.33980617 -0.81550694
		 -0.55562627 -0.75537479 -0.5586074 -0.76990736 -0.55774277 -0.76990736 -0.55476165
		 -0.75537467 -0.19092244 -0.81550717 -0.18794137 -0.83003974 -0.18707675 -0.83003974
		 -0.19005781 -0.81550717 -0.18508682 -0.77947867 -0.18806785 -0.79401124 -0.18720323
		 -0.79401124 -0.18422219 -0.77947867 -0.38883668 -0.82138985 -0.38585553 -0.8359223;
	setAttr ".uvtk[500:749]" -0.38499099 -0.8359223 -0.38797197 -0.82138985 0.1153276
		 -0.8417564 0.11234656 -0.85628903 0.1132111 -0.85628903 0.11619216 -0.8417564 0.51001734
		 -0.82504678 0.5100174 -0.82452375 0.50959533 -0.82452375 0.50959527 -0.82504678 0.51128888
		 -0.82504678 0.51128888 -0.82452381 0.5100174 -0.8233906 0.50959533 -0.8233906 0.51170582
		 -0.82452375 0.51170582 -0.82504678 0.51128888 -0.8233906 0.50959533 -0.82293618 0.5100174
		 -0.8229363 0.51170582 -0.8233906 0.51128888 -0.82293642 0.51170582 -0.8229363 -0.53742588
		 0.057326198 -0.53883302 0.057326198 -0.53883302 0.034611538 -0.53742588 0.034611538
		 -0.53742599 0.080040932 -0.53883302 0.080040932 -0.53883302 0.033295475 -0.53742588
		 0.033295475 -0.53742599 0.081356972 -0.53883302 0.081356972 -0.53883302 0.030354604
		 -0.53742588 0.030354604 -0.53742599 0.084297836 -0.53883302 0.084297836 -0.20785016
		 0.45952278 -0.20658696 0.45952278 -0.20658696 0.48223764 -0.20785022 0.48223764 -0.20658696
		 0.45580095 -0.20785016 0.45580095 -0.20785022 0.50495261 -0.20658702 0.50495261 -0.20658702
		 0.50867444 -0.20785022 0.50867444 -0.25571173 0.42053664 -0.25571173 0.39782193 -0.25444847
		 0.39782193 -0.25444847 0.42053664 -0.25711876 0.42053664 -0.25711876 0.39782193 -0.25571173
		 0.3941001 -0.25444847 0.3941001 -0.25444847 0.44325143 -0.25571173 0.44325143 -0.25711876
		 0.44325143 -0.25789064 0.39782193 -0.25789064 0.42053664 -0.25711864 0.3941001 -0.25444847
		 0.44697329 -0.25571173 0.44697329 -0.25711876 0.44697329 -0.2578907 0.44325143 -0.25789064
		 0.3941001 -0.2578907 0.44697329 -0.3036924 0.48234618 -0.30369246 0.45963168 -0.30292046
		 0.45963165 -0.30292046 0.48234618 -0.30369246 0.45590988 -0.30292046 0.45590988 -0.3029204
		 0.50506073 -0.3036924 0.50506073 -0.3029204 0.50878251 -0.3036924 0.50878251 -0.35616413
		 -0.6051892 -0.35616413 -0.59430265 -0.35729727 -0.59430265 -0.35729727 -0.6051892
		 -0.31005663 -0.49159744 -0.31005663 -0.50248396 -0.30892348 -0.50248396 -0.30892348
		 -0.49159744 0.43725765 -0.82363987 0.43725765 -0.8250469 0.43774331 -0.8250469 0.43774331
		 -0.82363987 0.43887645 -0.8250469 0.43887645 -0.82363987 0.43774331 -0.82286596 0.43725765
		 -0.82286596 0.43941611 -0.8250469 0.43941611 -0.82363987 0.43887645 -0.82286596 0.43941611
		 -0.82286596 0.31067613 -0.80236065 0.31067613 -0.80278277 0.31119916 -0.80278277
		 0.31119922 -0.80236065 0.30954295 -0.80236065 0.30954295 -0.80278277 0.31067613 -0.80405426
		 0.31119922 -0.80405426 0.30908874 -0.80278277 0.30908874 -0.80236065 0.30954298 -0.80405426
		 0.31067613 -0.80447114 0.31119922 -0.80447114 0.30908874 -0.80405426 0.30954295 -0.80447114
		 0.30908874 -0.80447125 0.5546056 -0.7830466 0.55347246 -0.7830466 0.55347246 -0.7852239
		 0.5546056 -0.7852239 0.35976377 -0.67194867 0.35863057 -0.67194867 0.35863057 -0.67412615
		 0.35976377 -0.67412615 0.35863069 -0.67765367 0.35976386 -0.67765367 0.35863069 -0.67851615
		 0.35976386 -0.67851615 0.35863069 -0.68196511 0.35976386 -0.68196511 0.35863069 -0.68283606
		 0.35976386 -0.68283606 -0.22890595 -0.75838071 -0.22838286 -0.75837946 -0.22839901
		 -0.75128192 -0.22892207 -0.75128305 -0.22840858 -0.74691141 -0.22893164 -0.74691254
		 -0.23003906 -0.75838333 -0.23005521 -0.75128567 -0.23006478 -0.74691516 -0.23049328
		 -0.75838435 -0.23050946 -0.75128669 -0.230519 -0.74691617 0.41318101 -0.3241865 0.41265792
		 -0.3241871 0.41266543 -0.33128461 0.41318846 -0.33128408 0.41152483 -0.32418829 0.41153228
		 -0.33128583 0.41266978 -0.33565524 0.41319293 -0.33565471 0.41107059 -0.32418877
		 0.4110781 -0.33128631 0.41153669 -0.33565643 0.41267133 -0.3370851 0.41319442 -0.33708459
		 0.41108251 -0.33565691 0.41153818 -0.33708629 0.4126721 -0.33785516 0.41319525 -0.33785456
		 0.41108394 -0.33708677 0.41153902 -0.33785638 0.41267353 -0.33915964 0.41319662 -0.33915907
		 0.41108477 -0.33785683 0.41154033 -0.33916083 0.41108614 -0.33916128 0.28599143 -0.80584502
		 0.28599152 -0.80636811 0.287296 -0.80636787 0.287296 -0.80584478 0.28599131 -0.80471182
		 0.28729582 -0.8047117 0.28599125 -0.80425763 0.28729576 -0.80425751 0.36751974 0.010020003
		 0.36879128 0.010020003 0.36879128 0.010909614 0.36751974 0.010909614 0.36879122 0.013578389
		 0.3675198 0.013578389 0.36879128 0.015319414 0.3675198 0.015319414 0.36879128 0.018041275
		 0.3675198 0.018041275 0.36879128 0.01964505 0.36751974 0.01964505 0.36879128 0.022457808
		 0.36751974 0.022457808 0.36879128 0.024190262 0.36751974 0.024190262 0.36879128 0.026697904
		 0.36751974 0.026697904 0.36879128 0.028584719 0.36751974 0.028584719 0.36879128 0.031256989
		 0.36751974 0.031256989 0.36879128 0.032955289 0.36751974 0.032955289 0.36879128 0.035730481
		 0.36751974 0.035730481 0.36879128 0.036487877 0.36751974 0.036487877 0.36751974 0.037245259
		 0.36879128 0.037245259 0.36751974 0.040020525 0.36879128 0.040020525 0.36751974 0.041718721
		 0.36879128 0.041718721 0.36751974 0.044391066 0.36879128 0.044391066 0.36751974 0.046277851
		 0.36879128 0.046277851 0.36751974 0.048785478 0.36879128 0.048785478 0.36751974 0.050517946
		 0.36879128 0.050517946 0.36751974 0.053330719 0.36879128 0.053330719 0.3675198 0.054934531
		 0.36879128 0.054934531 0.3675198 0.057656348 0.36879128 0.057656348 0.3675198 0.05939731
		 0.36879128 0.05939731 0.36751974 0.062066168 0.36879128 0.062066168 0.36751974 0.062955827
		 0.36879128 0.062955827 0.31709999 0.010020003 0.31729084 0.010020003 0.31729084 0.010909614
		 0.31709999 0.010909614 0.31815541 0.010020003 0.31815541 0.010909614 0.31729084 0.013578389
		 0.31710011 0.013578389 0.31837159 0.010020003 0.31837159 0.010909614 0.31729084 0.015319441
		 0.31710011 0.015319385 0.31815541 0.013578389 0.31837159 0.013578389 0.31815541 0.015319385
		 0.31729084 0.018041305 0.31710011 0.018041305 0.31837159 0.015319385 0.31729084 0.019645028
		 0.31710011 0.019645028 0.31815541 0.018041275 0.31837159 0.018041275 0.31815541 0.019645028
		 0.31729084 0.022457823;
	setAttr ".uvtk[750:999]" 0.31710011 0.022457823 0.31837159 0.019645028 0.31729084
		 0.024190247 0.31710011 0.024190247 0.31815541 0.022457793 0.31837159 0.022457793
		 0.31815553 0.024190247 0.31729084 0.026697889 0.31710011 0.026697889 0.31837159 0.024190247
		 0.31729084 0.028584704 0.31710011 0.028584704 0.31815553 0.026697889 0.31837159 0.026697889
		 0.31815553 0.028584704 0.31729084 0.031257004 0.31710011 0.031257004 0.31837159 0.028584704
		 0.31729084 0.032955274 0.31710011 0.032955274 0.31815553 0.031257004 0.31837159 0.031257004
		 0.31815553 0.032955274 0.31729084 0.035730436 0.31710011 0.035730436 0.31837171 0.032955274
		 0.31729084 0.036487892 0.31710011 0.036487892 0.31815553 0.035730436 0.31837171 0.035730436
		 0.31815553 0.036487892 0.31710011 0.037245288 0.31729084 0.037245259 0.31837171 0.036487892
		 0.31815553 0.037245259 0.31710011 0.040020496 0.31729084 0.040020496 0.31837171 0.037245259
		 0.31710011 0.041718781 0.31729084 0.041718781 0.31837171 0.040020496 0.31815553 0.040020496
		 0.31815553 0.041718781 0.31710011 0.044391036 0.31729096 0.044391036 0.31837171 0.041718781
		 0.31710011 0.046277851 0.31729096 0.046277851 0.31837171 0.044391036 0.31815553 0.044391036
		 0.31815553 0.046277851 0.31710023 0.048785508 0.31729096 0.048785508 0.31837171 0.046277851
		 0.31710023 0.050517976 0.31729096 0.050517976 0.31837171 0.048785508 0.31815553 0.048785508
		 0.31815553 0.050517976 0.31710023 0.053330749 0.31729096 0.053330749 0.31837171 0.050517976
		 0.31710023 0.054934561 0.31729096 0.054934561 0.31837171 0.053330749 0.31815553 0.053330749
		 0.31815553 0.054934561 0.31710023 0.057656378 0.31729108 0.057656378 0.31837171 0.054934561
		 0.31710023 0.05939737 0.31729108 0.05939737 0.31837171 0.057656378 0.31815553 0.057656378
		 0.31815553 0.05939734 0.31710023 0.062066227 0.31729108 0.062066227 0.31837171 0.05939734
		 0.31710023 0.062955856 0.31729108 0.062955856 0.31837171 0.062066227 0.31815553 0.062066227
		 0.31815553 0.062955797 0.31837171 0.062955797 0.22434115 0.010020003 0.2256127 0.010019975
		 0.2256127 0.010910185 0.22434115 0.010910155 0.2256127 0.013580754 0.22434121 0.013580754
		 0.2256127 0.015321583 0.22434115 0.015321609 0.22561276 0.018037364 0.22434121 0.018037334
		 0.22561264 0.019631848 0.22434115 0.019631788 0.22561264 0.02245678 0.22434115 0.02245678
		 0.22561264 0.024204187 0.22434115 0.024204157 0.22561264 0.026698247 0.22434115 0.026698217
		 0.22561264 0.028592125 0.22434115 0.028592125 0.22561264 0.03125912 0.22434115 0.03125912
		 0.22561264 0.032952532 0.22434115 0.032952562 0.22561264 0.035734102 0.22434121 0.035734043
		 0.2256127 0.036487862 0.22434121 0.036487862 0.22561264 0.037241578 0.22434121 0.037241578
		 0.22561258 0.040023118 0.22434115 0.040023118 0.22561264 0.041716576 0.22434115 0.041716576
		 0.22561264 0.044383556 0.22434115 0.044383526 0.22561264 0.046277463 0.22434115 0.046277434
		 0.22561264 0.04877153 0.22434115 0.048771501 0.22561258 0.0505189 0.22434109 0.05051887
		 0.22561264 0.053343832 0.22434115 0.053343862 0.22561264 0.054938346 0.22434115 0.054938376
		 0.2256127 0.057654083 0.22434115 0.057654053 0.22561264 0.059394926 0.22434115 0.059394926
		 0.22434109 0.062065482 0.22561264 0.062065482 0.22434115 0.062955648 0.22561264 0.062955707
		 0.15209883 0.010910155 0.15190816 0.010910155 0.15190816 0.010020003 0.15209889 0.010020003
		 0.1519081 0.013580754 0.15209883 0.013580754 0.15104342 0.010910155 0.15104347 0.010020003
		 0.15209877 0.015321638 0.1519081 0.015321612 0.15082723 0.010020003 0.15082735 0.010910155
		 0.15209889 0.018037364 0.15190816 0.018037364 0.15104353 0.013580754 0.15104347 0.015321638
		 0.15082729 0.013580754 0.15209889 0.019631818 0.15190816 0.019631855 0.15082729 0.015321638
		 0.15209883 0.02245681 0.1519081 0.02245678 0.15104347 0.018037364 0.15104347 0.019631818
		 0.15082741 0.018037364 0.15209883 0.024204217 0.1519081 0.024204187 0.15082741 0.019631818
		 0.15209889 0.026698276 0.15190816 0.026698247 0.15104353 0.02245681 0.15104347 0.024204217
		 0.15082735 0.02245681 0.15209889 0.028592184 0.15190816 0.028592184 0.15082735 0.024204217
		 0.15209895 0.031259149 0.15190822 0.03125912 0.15104353 0.026698276 0.15104353 0.028592184
		 0.15082741 0.026698276 0.15209895 0.032952622 0.15190822 0.032952622 0.15082741 0.028592184
		 0.15209889 0.035734072 0.15190816 0.035734072 0.15104353 0.031259149 0.15104353 0.032952622
		 0.15082741 0.031259149 0.15209889 0.036487862 0.15190816 0.036487862 0.15082735 0.032952622
		 0.15190816 0.037241682 0.15209889 0.037241623 0.15104353 0.035734072 0.15104353 0.036487862
		 0.15082741 0.035734072 0.15104353 0.037241623 0.15190822 0.040023178 0.15209895 0.040023118
		 0.15082741 0.036487862 0.15082741 0.037241623 0.15190822 0.041716635 0.15209895 0.041716635
		 0.15082735 0.040023118 0.15104353 0.040023118 0.15104353 0.041716635 0.15190816 0.044383585
		 0.15209889 0.044383615 0.15082741 0.041716635 0.15190816 0.046277523 0.15209889 0.046277523
		 0.15082741 0.044383615 0.15104353 0.044383615 0.15104353 0.046277523 0.1519081 0.04877159
		 0.15209883 0.04877153 0.15082741 0.046277523 0.1519081 0.05051899 0.15209883 0.05051899
		 0.15082747 0.04877153 0.15104347 0.04877153 0.15104353 0.05051899 0.15190816 0.053343892
		 0.15209889 0.053343922 0.15082735 0.05051899 0.15190816 0.054938465 0.15209889 0.054938436
		 0.15082741 0.053343922 0.15104359 0.053343922 0.15104347 0.054938436 0.15190822 0.057654113
		 0.15209889 0.057654142 0.15082741 0.054938436 0.1519081 0.059395015 0.15209895 0.059395015
		 0.15082741 0.057654142 0.15104347 0.057654142 0.15104353 0.059395015 0.15209883 0.062065542
		 0.15190816 0.062065542 0.15082741 0.059395015 0.15209889 0.062955767 0.15190816 0.062955767
		 0.15082735 0.062065542 0.15104353 0.062065542 0.15104359 0.062955767 0.15082735 0.062955767
		 0.36338052 0.010020004 0.36338052 0.011153135 0.35985318 0.011153135 0.35985318 0.010020003;
	setAttr ".uvtk[1000:1249]" 0.36338052 0.015324101 0.35985318 0.015324101 0.36338052
		 0.038075268 0.35985318 0.038075268 0.35985312 0.06082651 0.36338052 0.06082651 0.35985312
		 0.064997464 0.36338052 0.064997464 0.36338052 0.066130549 0.35985312 0.066130608
		 0.21410701 -0.96001822 0.21323609 -0.96001822 0.21323609 -0.96115124 0.21410701 -0.96115124
		 0.0066666007 -0.94078261 0.0066665411 -0.93964958 0.0058041513 -0.93964958 0.0058041811
		 -0.94078273 0.36368117 0.010020003 0.36368117 0.011153135 0.36023247 0.011153135
		 0.36023247 0.010020003 0.36368117 0.015226748 0.36023247 0.015226748 0.36368117 0.038075268
		 0.36023247 0.038075268 0.36023247 0.060923815 0.36368117 0.060923815 0.36023247 0.064997375
		 0.36368111 0.064997375 0.36368111 0.066130489 0.36023247 0.066130489 0.3067258 0.010020003
		 0.31025302 0.010020003 0.31025302 0.014190942 0.3067258 0.014190942 0.31025302 0.036942109
		 0.3067258 0.036942109 0.3067258 0.059693277 0.31025302 0.059693277 0.3067258 0.063864201
		 0.31025302 0.063864201 0.30710512 0.010020003 0.31055373 0.010020003 0.31055373 0.014093619
		 0.30710512 0.014093589 0.31055373 0.036942169 0.30710512 0.036942169 0.30710512 0.059790671
		 0.31055373 0.059790671 0.30710512 0.063864321 0.31055373 0.063864321 -0.040320307
		 -0.85882509 -0.040742338 -0.85882509 -0.040742338 -0.85934818 -0.040320307 -0.85934818
		 -0.040742338 -0.86048126 -0.040320247 -0.86048126 -0.039048716 -0.85882509 -0.039048716
		 -0.85934818 -0.040742338 -0.86093557 -0.040320247 -0.86093557 -0.039048716 -0.86048126
		 -0.038631886 -0.85934818 -0.038631886 -0.85882509 -0.039048716 -0.86093557 -0.038631886
		 -0.86048126 -0.038631886 -0.86093557 0.097159654 -0.36971515 0.098292798 -0.36971515
		 0.098292798 -0.35882849 0.097159654 -0.35882849 -0.14078915 -0.56090355 -0.14192232
		 -0.56090355 -0.14192232 -0.57179022 -0.14078915 -0.57179022 0.391307 -0.82363987
		 0.3908214 -0.82363987 0.3908214 -0.8250469 0.39130703 -0.8250469 0.391307 -0.82286596
		 0.3908214 -0.82286596 0.38968822 -0.82363987 0.38968822 -0.8250469 0.38968822 -0.82286596
		 0.38914865 -0.82363987 0.38914865 -0.8250469 0.38914865 -0.82286596 0.22570291 -0.83870518
		 0.22517982 -0.83870518 0.22517981 -0.8391273 0.22570291 -0.8391273 0.22517982 -0.84039885
		 0.22570288 -0.84039885 0.22683604 -0.83870518 0.22683603 -0.8391273 0.22517982 -0.84081572
		 0.22570288 -0.84081572 0.22683603 -0.84039885 0.22729023 -0.8391273 0.22729023 -0.83870518
		 0.22683604 -0.84081572 0.22729023 -0.84039885 0.22729023 -0.84081572 0.13437676 -0.78259563
		 0.13437676 -0.78477299 0.13550991 -0.78477299 0.13550991 -0.78259563 0.069572493
		 -0.56872565 0.069572464 -0.57090324 0.070705637 -0.57090324 0.070705667 -0.56872565
		 0.069572449 -0.57443082 0.070705608 -0.57443082 0.069572419 -0.5752933 0.070705608
		 -0.5752933 0.069572389 -0.57874221 0.070705548 -0.57874221 0.069572389 -0.57961315
		 0.070705548 -0.57961315 -0.22461027 -0.45356944 -0.22460836 -0.44647187 -0.22513139
		 -0.44647172 -0.2251333 -0.45356932 -0.22347707 -0.45356971 -0.22347522 -0.44647214
		 -0.22460726 -0.4421013 -0.22513032 -0.44210118 -0.22302285 -0.45356986 -0.22302097
		 -0.44647226 -0.22347409 -0.4421016 -0.22301981 -0.44210172 0.023922697 0.078242838
		 0.023920029 0.071145296 0.024443135 0.071145058 0.024445757 0.0782426 0.023918495
		 0.066774607 0.024441585 0.066774487 0.025576279 0.07114464 0.025578871 0.078242183
		 0.023918003 0.06534481 0.024441078 0.065344632 0.025574759 0.06677407 0.026030526
		 0.071144462 0.026033118 0.078242064 0.02391772 0.064574778 0.02444081 0.064574599
		 0.025574192 0.065344214 0.026028946 0.066773951 0.023917213 0.06327033 0.024440303
		 0.063270092 0.025573924 0.064574182 0.026028439 0.065343976 0.025573477 0.063269675
		 0.026028141 0.064574003 0.026027665 0.063269556 -0.047294974 -0.93920016 -0.045990467
		 -0.93920046 -0.045990318 -0.93867725 -0.047294855 -0.93867695 -0.047295272 -0.94033325
		 -0.045990795 -0.9403336 -0.047295421 -0.94078737 -0.045990884 -0.94078767 0.1964002
		 -0.96115124 0.19640025 -0.96001822 0.19552934 -0.96001822 0.19552928 -0.96115124
		 0.23371935 -0.93732941 0.23285699 -0.93732941 0.23285699 -0.9384625 0.23371935 -0.9384625
		 0.21857627 0.012182936 0.21857648 0.011697302 0.22279742 0.011699179 0.22279721 0.012184843
		 0.21814103 0.011697093 0.21814083 0.012182757 0.21857698 0.01056417 0.22279796 0.010566047
		 0.22344922 0.012185141 0.22344945 0.011699477 0.21814157 0.010563961 0.21706465 0.011696646
		 0.21706444 0.01218228 0.21857722 0.010024533 0.22279817 0.01002644 0.22344996 0.010566345
		 0.22344758 0.01590693 0.22279558 0.015906662 0.23002987 0.011711009 0.23002894 0.012165228
		 0.21814181 0.010024324 0.21706516 0.010563484 0.21051092 0.011693666 0.21051075 0.01217933
		 0.22345023 0.010026708 0.23003204 0.010577849 0.22278532 0.038621366 0.22343735 0.038621664
		 0.21706539 0.010023877 0.21051146 0.010560534 0.20935439 0.011693129 0.20935418 0.012178794
		 0.23003305 0.010054784 0.22342716 0.061336368 0.22277516 0.06133607 0.2105117 0.010020897
		 0.20935489 0.010559998 0.2084977 0.011692772 0.20849749 0.012178406 0.22342549 0.065058172
		 0.22277352 0.065057874 0.20935516 0.01002039 0.20849821 0.01055961 0.22342528 0.06554386
		 0.22277328 0.065543562 0.20849845 0.010020003 0.23000519 0.065083355 0.2300057 0.065537602
		 0.22342478 0.066677004 0.22277275 0.066676646 0.21855254 0.065056026 0.21855234 0.065541655
		 0.23000686 0.066670805 0.22342454 0.067216545 0.22277251 0.067216247 0.21855183 0.066674799
		 0.21811689 0.065541476 0.21811713 0.065055847 0.2300074 0.067193866 0.21855159 0.0672144
		 0.21811639 0.06667462 0.21704051 0.065540999 0.21704072 0.065055311 0.21811618 0.067214161
		 0.21704 0.066674143 0.21048678 0.065538019 0.21048699 0.06505239 0.21703976 0.067213684
		 0.21048628 0.066671163 0.20933022 0.065537483 0.20933045 0.065051854 0.21048604 0.067210704
		 0.20932974 0.066670686 0.20847356 0.065537184 0.2084738 0.065051496 0.2093295 0.067210227
		 0.20847303 0.066670328 0.20847279 0.06720981;
	setAttr ".uvtk[1250:1499]" -0.16158348 0.038616538 -0.16580439 0.038615137 -0.16579697
		 0.015900433 -0.16157606 0.015901778 -0.16159087 0.061331272 -0.16581184 0.061329812
		 -0.16579577 0.012178645 -0.16157484 0.012179956 -0.16159213 0.065053105 -0.16581306
		 0.065051615 -0.16579562 0.01169298 -0.16157469 0.011694351 -0.16113934 0.012180135
		 -0.16126546 0.015337177 -0.16128069 0.061896145 -0.16115665 0.065053225 -0.16159225
		 0.065538734 -0.16581321 0.065537244 -0.16644776 0.012178406 -0.16644758 0.011692772
		 -0.16113922 0.0116945 -0.16006297 0.012180492 -0.16068882 0.013078393 -0.16070551
		 0.06415531 -0.16008025 0.065053582 -0.1611568 0.065538853 -0.16646519 0.065537065
		 -0.16646504 0.065051496 -0.17310774 0.012145022 -0.17310756 0.011690803 -0.16644719
		 0.01055961 -0.16579524 0.010559819 -0.1615743 0.010561219 -0.16113883 0.010561368
		 -0.16006279 0.011694858 -0.1600804 0.065539211 -0.16115716 0.066672057 -0.16159266
		 0.066671878 -0.1658136 0.066670567 -0.16646555 0.066670328 -0.17312515 0.065535158
		 -0.17312503 0.065080971 -0.17310721 0.010557673 -0.16644704 0.010020003 -0.16579506
		 0.010020211 -0.16157413 0.010021612 -0.16113865 0.010021761 -0.16006243 0.010561726
		 -0.15350914 0.011696974 -0.15350932 0.012182638 -0.1535266 0.065055728 -0.15352675
		 0.065541357 -0.16008076 0.066672415 -0.16115737 0.067211598 -0.16159284 0.067211479
		 -0.16581377 0.067210048 -0.16646573 0.06720981 -0.17312559 0.066668361 -0.17310703
		 0.010034578 -0.16006225 0.010022089 -0.15350878 0.010563842 -0.15235254 0.011697361
		 -0.15235272 0.012183025 -0.15237001 0.065056086 -0.15237018 0.065541714 -0.15352711
		 0.066674501 -0.16008094 0.067211956 -0.17312574 0.067191362 -0.1535086 0.010024235
		 -0.15149587 0.011697659 -0.15149602 0.012183294 -0.15151331 0.065056384 -0.15151343
		 0.065541953 -0.15352732 0.067214102 -0.15235218 0.010564229 -0.15235204 0.010024622
		 -0.15149552 0.010564498 -0.15151384 0.066675216 -0.15237051 0.066674918 -0.15237069
		 0.067214459 -0.15149528 0.01002489 -0.15151402 0.067214757 -0.25903225 0.46399254
		 -0.25838023 0.46399254 -0.25838023 0.48670733 -0.25903225 0.48670733 -0.25838023
		 0.46027073 -0.25903225 0.46027073 -0.25903225 0.50942218 -0.25838023 0.50942218 -0.25838023
		 0.51314384 -0.25903225 0.51314384 -0.77361059 0.056813017 -0.77783155 0.056812987
		 -0.77783155 0.034098297 -0.77361059 0.034098297 -0.77361059 0.079527736 -0.77783155
		 0.079527766 -0.77783155 0.030376449 -0.77361059 0.030376479 -0.77361059 0.083249599
		 -0.77783155 0.083249539 -0.77814186 0.033533551 -0.77826697 0.030376449 -0.77814198
		 0.08009246 -0.77826703 0.083249539 -0.77934349 0.030376449 -0.77871788 0.031274557
		 -0.77934349 0.083249539 -0.77871799 0.082351446 -0.082975864 -0.4071033 -0.082965255
		 -0.40825984 -0.082442224 -0.40825501 -0.082452893 -0.40709847 -0.084109068 -0.40711382
		 -0.084098339 -0.40827036 -0.082890689 -0.41628274 -0.082367599 -0.41627792 -0.082983315
		 -0.40630901 -0.082460284 -0.40630418 -0.084552586 -0.40827459 -0.084563375 -0.40711808
		 -0.084023774 -0.41629326 -0.084116459 -0.40631956 -0.082850933 -0.420553 -0.082327902
		 -0.42054817 -0.084478021 -0.41629753 -0.084570765 -0.40632379 -0.083984137 -0.42056352
		 -0.082844973 -0.42120007 -0.082321942 -0.42119524 -0.084438324 -0.42056775 -0.083978117
		 -0.42121059 -0.082784951 -0.42886856 -0.08226192 -0.42886367 -0.084432364 -0.42121485
		 -0.083918095 -0.42887902 -0.08276993 -0.43078578 -0.0822469 -0.43078095 -0.084372342
		 -0.42888334 -0.083903134 -0.4307963 -0.082712948 -0.43807071 -0.082189918 -0.43806586
		 -0.084357321 -0.4308005 -0.083846092 -0.43808129 -0.082698703 -0.43989196 -0.082175732
		 -0.43988711 -0.084300339 -0.43808547 -0.083831906 -0.43990248 -0.082694948 -0.44037127
		 -0.082171917 -0.44036642 -0.084286034 -0.43990672 -0.083828092 -0.4403818 -0.084282398
		 -0.44038603 0.26335666 -0.024862856 0.26335743 -0.026019275 0.26388052 -0.026018977
		 0.26387969 -0.024862438 0.26335803 -0.026813567 0.26388106 -0.026813209 0.26387411
		 -0.016839445 0.26335102 -0.016839862 0.26222429 -0.02602011 0.26222488 -0.026814371
		 0.2638711 -0.012569189 0.26334804 -0.012569547 0.26221791 -0.016840637 0.26222345
		 -0.02486366 0.2617701 -0.026020408 0.26177058 -0.026814699 0.2633476 -0.011922479
		 0.26387063 -0.011922121 0.26176921 -0.024863929 0.2617636 -0.016840935 0.26221445
		 -0.011923313 0.26221487 -0.012570381 0.26386613 -0.0042536855 0.26334301 -0.0042539835
		 0.26176062 -0.012570679 0.26176015 -0.011923671 0.26220995 -0.0042548776 0.26175573
		 -0.0042551756 0.46458325 -0.59216815 0.46510631 -0.59216064 0.46501729 -0.5848757
		 0.4644942 -0.58488321 0.46499503 -0.58305436 0.46447194 -0.58306193 0.46345013 -0.59218466
		 0.46336111 -0.58489966 0.46498913 -0.58257508 0.46446604 -0.58258271 0.46333882 -0.58307844
		 0.46299592 -0.59219122 0.46290687 -0.58490628 0.46333298 -0.5825991 0.46288463 -0.58308506
		 0.46287876 -0.58260566 0.24712975 -0.82642061 0.24713118 -0.82694376 0.24904829 -0.82693923
		 0.24904683 -0.82641613 0.24712662 -0.82528746 0.24904369 -0.82528293 0.24712534 -0.82483327
		 0.24904245 -0.82482874 0.040790319 0.3941001 0.042611539 0.39410028 0.04261142 0.39498988
		 0.0407902 0.39498979 0.042611182 0.39765871 0.040789962 0.39765859 0.042611003 0.39939973
		 0.040789843 0.39939961 0.042610884 0.40212157 0.040789485 0.40212142 0.042610645
		 0.40372536 0.040789425 0.40372521 0.042610407 0.40653813 0.040789127 0.40653801 0.042610228
		 0.40827054 0.040789008 0.40827042 0.042610049 0.41077816 0.04078877 0.41077805 0.04260987
		 0.41266501 0.040788591 0.41266489 0.042609632 0.41533738 0.040788412 0.4153372 0.042609453
		 0.41703564 0.040788233 0.41703552 0.042609215 0.41981086 0.040787995 0.41981074 0.042609215
		 0.42056823 0.040787935 0.42056811 0.040787816 0.42132545 0.042609096 0.42132562 0.040787578
		 0.42410073 0.042608857 0.42410085 0.040787458 0.42579904 0.042608798 0.42579916 0.04078716
		 0.42847127 0.04260844 0.42847145 0.040787041 0.43035817 0.042608321 0.43035829 0.040786803
		 0.43286574 0.042608082 0.43286586 0.040786624 0.43459821 0.042607903 0.43459833 0.040786386
		 0.43741104 0.042607665 0.43741116;
	setAttr ".uvtk[1500:1749]" 0.040786266 0.43901482 0.042607546 0.43901494 0.040786028
		 0.44173667 0.042607248 0.44173679 0.040785849 0.44347763 0.042607129 0.44347775 0.04078567
		 0.44614643 0.04260695 0.44614655 0.04078567 0.44703609 0.042606831 0.44703621 0.25361758
		 0.010019974 0.25543886 0.010020539 0.25543851 0.010910151 0.25361729 0.010909585
		 0.25543761 0.013578955 0.25361633 0.013578359 0.25543696 0.015319981 0.25361568 0.015319385
		 0.255436 0.018041782 0.25361466 0.018041275 0.25543535 0.019645587 0.25361419 0.01964505
		 0.25543433 0.022458375 0.25361311 0.022457808 0.25543374 0.024190828 0.25361252 0.024190262
		 0.2554329 0.02669847 0.25361156 0.026697934 0.25543213 0.028585315 0.25361091 0.028584749
		 0.25543118 0.031257614 0.2536099 0.031257048 0.25543064 0.032955885 0.2536093 0.032955319
		 0.25542957 0.035731077 0.25360829 0.035730481 0.25542933 0.036488503 0.25360805 0.036487937
		 0.25360775 0.037245318 0.25542903 0.037245855 0.2536068 0.040020525 0.25542808 0.040021122
		 0.25360608 0.041718841 0.25542742 0.041719347 0.25360525 0.044391125 0.25542647 0.044391662
		 0.25360453 0.04627797 0.25542575 0.046278507 0.25360364 0.048785627 0.25542486 0.048786134
		 0.25360292 0.050518036 0.2554242 0.050518543 0.25360191 0.053330779 0.25542319 0.053331375
		 0.25360131 0.054934621 0.25542265 0.054935187 0.2536003 0.057656467 0.25542152 0.057656974
		 0.25359976 0.059397459 0.25542104 0.059398025 0.25359875 0.062066257 0.25542003 0.062066823
		 0.25359845 0.062955886 0.25541973 0.062956482 0.045011044 0.010020003 0.049281299
		 0.010020003 0.049281299 0.010910155 0.045011044 0.010910155 0.049281299 0.013580754
		 0.045011044 0.013580754 0.04928124 0.015321638 0.045011044 0.015321638 0.04928124
		 0.018037364 0.045010984 0.018037364 0.04928124 0.019631848 0.045011103 0.019631848
		 0.049281359 0.02245681 0.045011103 0.02245681 0.049281299 0.024204187 0.045010984
		 0.024204187 0.049281299 0.026698306 0.045010984 0.026698306 0.049281299 0.028592244
		 0.045010984 0.028592244 0.04928124 0.031259179 0.045010984 0.031259179 0.04928124
		 0.032952592 0.045010924 0.032952592 0.049281359 0.035734192 0.045011044 0.035734192
		 0.049281359 0.036487892 0.045011044 0.036487892 0.045011044 0.037241623 0.049281359
		 0.037241623 0.045010924 0.040023208 0.04928124 0.040023208 0.045010984 0.041716635
		 0.04928124 0.041716635 0.045010984 0.044383675 0.049281299 0.044383675 0.045010984
		 0.046277523 0.049281299 0.046277523 0.045010984 0.04877162 0.049281299 0.04877162
		 0.045011103 0.05051899 0.049281359 0.05051899 0.045011103 0.053343892 0.04928124
		 0.053343892 0.045010984 0.054938436 0.04928124 0.054938436 0.045011044 0.057654172
		 0.04928124 0.057654172 0.045011044 0.059394985 0.049281299 0.059394985 0.045011044
		 0.062065601 0.049281299 0.062065601 0.045011044 0.062955767 0.049281299 0.062955767
		 -0.056211352 0.010019975 -0.051941097 0.010020003 -0.051941097 0.010910155 -0.056211352
		 0.010910185 -0.051941097 0.013580754 -0.056211293 0.013580754 -0.051941097 0.015321638
		 -0.056211293 0.015321583 -0.051940978 0.018037364 -0.056211352 0.018037364 -0.051941037
		 0.019631848 -0.056211352 0.019631848 -0.051941097 0.02245681 -0.056211352 0.02245681
		 -0.051941097 0.024204217 -0.056211352 0.024204187 -0.051941097 0.026698276 -0.056211352
		 0.026698276 -0.051941097 0.028592184 -0.056211352 0.028592154 -0.051941097 0.031259179
		 -0.056211233 0.031259179 -0.051941037 0.032952622 -0.056211293 0.032952592 -0.051941037
		 0.035734102 -0.056211293 0.035734162 -0.051941037 0.036487892 -0.056211352 0.036487862
		 -0.056211293 0.037241653 -0.051941037 0.037241623 -0.056211293 0.040023178 -0.051941037
		 0.040023178 -0.056211233 0.041716635 -0.051941097 0.041716635 -0.056211352 0.044383675
		 -0.051941097 0.044383645 -0.056211352 0.046277523 -0.051941097 0.046277553 -0.056211352
		 0.04877159 -0.051941097 0.04877159 -0.056211412 0.05051896 -0.051941097 0.05051899
		 -0.056211352 0.053343922 -0.051941037 0.053343952 -0.056211352 0.054938436 -0.051941097
		 0.054938436 -0.056211352 0.057654172 -0.051941097 0.057654172 -0.056211352 0.059395015
		 -0.051941097 0.059395045 -0.056211352 0.062065542 -0.051941097 0.062065542 -0.056211352
		 0.062955827 -0.051941097 0.062955767 0.53213614 0.010020003 0.53213614 0.011153163
		 0.5314818 0.011153163 0.5314818 0.010020003 0.53213614 0.015324101 0.53148192 0.015324101
		 0.53213614 0.038075179 0.5314818 0.038075179 0.53148192 0.060826302 0.5321362 0.060826302
		 0.53148192 0.064997226 0.5321362 0.064997226 0.5321362 0.06613034 0.53148192 0.06613034
		 0.52724642 0.011153135 0.52724642 0.010020003 0.52790076 0.010020003 0.52790076 0.011153135
		 0.52790076 0.015324071 0.52724636 0.015324071 0.52790076 0.038075209 0.52724642 0.038075209
		 0.52724636 0.060826391 0.52790076 0.060826391 0.52724642 0.064997345 0.52790076 0.064997345
		 0.52790076 0.066130489 0.52724642 0.066130489 0.49595702 0.010020003 0.49595702 0.011153163
		 0.49530268 0.011153163 0.49530268 0.010020003 0.49595708 0.015226778 0.49530268 0.015226778
		 0.49595684 0.038075298 0.4953025 0.038075298 0.49530256 0.060923845 0.49595708 0.060923845
		 0.49530268 0.064997464 0.49595702 0.064997464 0.49595702 0.066130579 0.49530268 0.066130579
		 0.47259483 0.011153135 0.47259483 0.010020003 0.47324917 0.010020003 0.47324917 0.011153135
		 0.47324911 0.015226778 0.47259483 0.015226778 0.47324926 0.038075477 0.47259486 0.038075477
		 0.47259477 0.060924172 0.47324911 0.060924172 0.47259483 0.064997852 0.47324911 0.064997852
		 0.47324917 0.066130906 0.47259483 0.066130906 0.07679306 -0.1031836 0.079568207 -0.10313421
		 0.079307124 -0.085746944 0.076525703 -0.085796297 0.18452458 -0.08586216 0.18174943
		 -0.085812747 0.18148193 -0.10320002 0.18426338 -0.10324952 0.77992857 0.031706691
		 0.78260082 0.031752437 0.78233922 0.049139678 0.77967227 0.049093902 -0.026133873
		 -0.045931876 -0.028806135 -0.045977592 -0.028554846 -0.063364923 -0.025887884 -0.063319325
		 -0.070121937 -0.063285232 -0.067614257 -0.06324482 -0.067867562 -0.045857668 -0.070361607
		 -0.045897901 -0.1094306 -0.047712386 -0.11193825 -0.047752619;
	setAttr ".uvtk[1750:1919]" -0.11170049 -0.065139949 -0.10920648 -0.065099895
		 0.12383521 -0.63876641 0.12664792 -0.63871586 0.12639475 -0.62132823 0.12356988 -0.62137902
		 -0.036920756 -0.7011255 -0.039733499 -0.70107502 -0.039998829 -0.71846229 -0.037173897
		 -0.71851301 0.50323266 -0.2394802 0.50595444 -0.23943287 0.50569427 -0.22204566 0.50297862
		 -0.22209299 0.2130785 -0.21299112 0.21035677 -0.21294379 0.21010289 -0.23033106 0.21281853
		 -0.23037827 0.23154718 -0.20042694 0.23421603 -0.20038128 0.23396146 -0.18299407
		 0.23129094 -0.18303978 0.2665326 -0.20444882 0.2638638 -0.20440304 0.26360714 -0.22179037
		 0.26627767 -0.22183615 -0.13463265 -0.41351363 -0.13515568 -0.41350967 -0.13516453
		 -0.41466618 -0.13464144 -0.41467014 -0.13462657 -0.41271937 -0.13514966 -0.41271544
		 -0.13522547 -0.42268911 -0.13470241 -0.42269313 -0.13349947 -0.41352224 -0.13350829
		 -0.41467875 -0.13349345 -0.41272801 -0.13525793 -0.42695943 -0.1347349 -0.42696339
		 -0.13356927 -0.42270175 -0.13305402 -0.41468221 -0.13304526 -0.4135257 -0.13303918
		 -0.41273147 -0.13526288 -0.42760643 -0.13473979 -0.4276104 -0.13360173 -0.42697197
		 -0.13311502 -0.42270523 -0.13531196 -0.43527493 -0.13478887 -0.43527889 -0.13360664
		 -0.42761904 -0.13314748 -0.42697546 -0.13532421 -0.43719208 -0.13480115 -0.43719605
		 -0.1336557 -0.43528748 -0.1331524 -0.42762244 -0.13537085 -0.44447705 -0.13484776
		 -0.44448102 -0.13366804 -0.4372046 -0.13320148 -0.43529096 -0.1353825 -0.4462983
		 -0.13485941 -0.44630226 -0.13371462 -0.44448972 -0.13321379 -0.43720812 -0.13538554
		 -0.44677761 -0.13486245 -0.44678161 -0.13372627 -0.44631091 -0.13326037 -0.44449311
		 -0.13372934 -0.44679019 -0.13327205 -0.44631433 -0.13327512 -0.44679365 0.30922931
		 -0.027179718 0.30870622 -0.027179241 0.30870527 -0.02833572 0.30922842 -0.028336167
		 0.30871257 -0.019156218 0.30923569 -0.019156694 0.30870467 -0.029129982 0.30922776
		 -0.029130399 0.3103624 -0.027180582 0.31036884 -0.019157588 0.30871594 -0.014886022
		 0.30923903 -0.014886439 0.31036091 -0.029131293 0.31036156 -0.028337032 0.31081674
		 -0.02718091 0.31082305 -0.019157887 0.30923957 -0.014239371 0.30871648 -0.014238954
		 0.31081513 -0.029131681 0.31081578 -0.028337419 0.31082639 -0.014887691 0.31037217
		 -0.014887273 0.30924469 -0.0065708756 0.30872163 -0.0065704584 0.31037271 -0.014240324
		 0.31082693 -0.014240623 0.31037781 -0.0065718293 0.31083205 -0.0065721273 0.46299168
		 -0.66264784 0.46306545 -0.65536284 0.46254236 -0.65535653 0.46246862 -0.66264153
		 0.46412483 -0.66266155 0.46419856 -0.65537649 0.46308386 -0.65354162 0.4625608 -0.65353537
		 0.46457905 -0.66266692 0.46465281 -0.65538192 0.46421701 -0.65355521 0.46308872 -0.65306228
		 0.46256566 -0.65305603 0.46467122 -0.6535607 0.46422186 -0.65307593 0.46467605 -0.65308142
		 0.37565267 -0.85980046 0.37756982 -0.85980392 0.3775709 -0.85928088 0.3756538 -0.85927749
		 0.37565026 -0.86093366 0.37756735 -0.86093712 0.37564933 -0.86138797 0.37756643 -0.86139131
		 -0.19546127 -0.25330019 -0.19519436 -0.23591292 -0.19797587 -0.23586369 -0.19823638
		 -0.25325096 -0.29715157 -0.2360239 -0.29689091 -0.25341138 -0.2941094 -0.25336194
		 -0.29437643 -0.23597467 -0.11166739 -0.20412868 -0.11141032 -0.18674147 -0.11407727
		 -0.18669558 -0.11433965 -0.20408273 -0.054314792 -0.17764115 -0.054053128 -0.19502836
		 -0.051386118 -0.19498271 -0.051642478 -0.1775955 -0.55980909 -0.16360623 -0.55956805
		 -0.14621902 -0.56206214 -0.14617854 -0.56231678 -0.16356558 -0.56300306 -0.2726174
		 -0.5627498 -0.29000455 -0.56025577 -0.2899642 -0.56049538 -0.27257693 -0.48267904
		 -0.4573409 -0.4824149 -0.43995374 -0.4852398 -0.4399032 -0.48549178 -0.45729065 -0.66648364
		 -0.44203007 -0.6662305 -0.45941764 -0.66340554 -0.45936686 -0.66367084 -0.44197971
		 0.20740765 -0.33064395 0.20766211 -0.31325674 0.20494652 -0.31320941 0.20468587 -0.33059663
		 -0.0095104575 -0.33950227 -0.0092499852 -0.35688937 -0.006534338 -0.35684204 -0.006788671
		 -0.33945483 -0.16604775 -0.33178931 -0.16579133 -0.31440216 -0.16846183 -0.31435639
		 -0.16871655 -0.33174354 0.21701401 -0.30955088 0.21726847 -0.32693809 0.21993899
		 -0.32689238 0.21968281 -0.30950516;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "98913259-47D0-D0FF-BDCB-BE834502BE69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[781]" "e[783]" "e[785]" "e[787]" "e[789]" "e[791]" "e[794:805]" "e[813]" "e[815]" "e[817]" "e[819]" "e[821]" "e[823]" "e[1707]" "e[1725]" "e[1743]" "e[1761]" "e[1777]" "e[1782]" "e[1801]" "e[1805]" "e[1809]" "e[1813]" "e[1817]" "e[1821]" "e[1824:1834]" "e[1836]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.1;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "DACC3F38-428A-7927-A772-8FAB76AB6790";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[745]" "e[768:789]" "e[793]" "e[1693:1716]" "e[2046:2069]" "e[2108:2131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "A1B84450-4101-33F2-E493-3199F39101AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[521]" "e[533]" "e[546]" "e[557]" "e[749]" "e[756]" "e[1401]" "e[1430]" "e[1444:1445]" "e[1632]" "e[1634]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.1;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak62";
	rename -uid "B7F8C16D-4A9B-D643-1E82-7DA750972CC8";
	setAttr ".uopa" yes;
	setAttr -s 113 ".tk";
	setAttr ".tk[82]" -type "float3" -3.7252903e-09 -5.9604645e-08 -9.3132257e-09 ;
	setAttr ".tk[87]" -type "float3" -4.4703484e-08 -2.9802322e-08 -4.4703484e-08 ;
	setAttr ".tk[89]" -type "float3" 7.3690899e-08 7.4505806e-09 3.7252903e-08 ;
	setAttr ".tk[96]" -type "float3" 4.4703484e-08 -3.7252903e-09 -2.9802322e-08 ;
	setAttr ".tk[154]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[155]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[158]" -type "float3" -1.1920929e-07 -3.7252903e-09 0 ;
	setAttr ".tk[159]" -type "float3" -1.1920929e-07 -3.7252903e-09 0 ;
	setAttr ".tk[330]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[331]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[332]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[333]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[334]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[335]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[336]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[337]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[338]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[339]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[340]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[341]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[342]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[343]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[344]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[345]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[346]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[347]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[348]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[349]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[350]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[351]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[352]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[353]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[354]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[355]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[356]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[357]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[358]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[359]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[360]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[361]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[362]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[363]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[364]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[365]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[366]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[367]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[368]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[369]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[370]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[371]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[372]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[373]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[374]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[375]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[376]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[377]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[397]" -type "float3" -1.8626451e-08 -5.9604645e-08 1.4901161e-08 ;
	setAttr ".tk[484]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".tk[489]" -type "float3" 4.4703484e-08 0 4.6938658e-07 ;
	setAttr ".tk[490]" -type "float3" 1.8626451e-08 -3.7252903e-09 -7.4505806e-09 ;
	setAttr ".tk[592]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[593]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[596]" -type "float3" 1.1920929e-07 -3.7252903e-09 0 ;
	setAttr ".tk[597]" -type "float3" 1.1920929e-07 -3.7252903e-09 0 ;
	setAttr ".tk[756]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[757]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[758]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[759]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[760]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[761]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[762]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[763]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[764]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[765]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[766]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[767]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[768]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[769]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[770]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[771]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[772]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[773]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[774]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[775]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[776]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[777]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[778]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[779]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[780]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[781]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[782]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[783]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[784]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[785]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[786]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[787]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[788]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[789]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[790]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[791]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[792]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[793]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[794]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[795]" -type "float3" 0.03015767 0 0 ;
	setAttr ".tk[796]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[797]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[798]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[799]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[800]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[801]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[802]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[803]" -type "float3" -0.014163181 0 0 ;
	setAttr ".tk[954]" -type "float3" 4.7683716e-07 0 0 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "131A5AAF-4CC2-18EC-F3B2-738D9679E482";
	setAttr ".version" -type "string" "5.4.4";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "42B184B6-48AF-28E4-5152-1FB363EEB0D4";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "CE7C98FF-4C49-6B31-4A80-34996FF7B2D8";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "577D3A3D-4938-AE2A-7D0D-6DB612D35DDA";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "529CE6E4-48BA-9D71-6B5E-B99714F3C42C";
createNode polyBevel3 -n "polyBevel4";
	rename -uid "AA6D2969-42A5-216F-934F-86942864D781";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 319 "e[7]" "e[10]" "e[17:20]" "e[24:25]" "e[27]" "e[31:33]" "e[38:45]" "e[47]" "e[49:53]" "e[55]" "e[58:60]" "e[66]" "e[68]" "e[72:73]" "e[77]" "e[79:81]" "e[84]" "e[88]" "e[92]" "e[95:96]" "e[103]" "e[108]" "e[112:113]" "e[118]" "e[120:121]" "e[123]" "e[128]" "e[130]" "e[133]" "e[136]" "e[138]" "e[143]" "e[145]" "e[150]" "e[154:155]" "e[158:161]" "e[165:167]" "e[169]" "e[176]" "e[178]" "e[182]" "e[185:186]" "e[188]" "e[190:192]" "e[194:195]" "e[198:199]" "e[207]" "e[215]" "e[217]" "e[219:221]" "e[226:229]" "e[235:241]" "e[252:253]" "e[264]" "e[267:269]" "e[277:278]" "e[281:282]" "e[295]" "e[297]" "e[305]" "e[307]" "e[311]" "e[314]" "e[316]" "e[318]" "e[320]" "e[322]" "e[324]" "e[326:328]" "e[331:332]" "e[335:336]" "e[340:342]" "e[347]" "e[350]" "e[354:356]" "e[360]" "e[362]" "e[364]" "e[369]" "e[373:374]" "e[377]" "e[387]" "e[390]" "e[409]" "e[412]" "e[425]" "e[428]" "e[432]" "e[453]" "e[468]" "e[471]" "e[487]" "e[507]" "e[512]" "e[515]" "e[518:519]" "e[531]" "e[534]" "e[537:538]" "e[553:562]" "e[567:571]" "e[575:579]" "e[583:586]" "e[591:592]" "e[594]" "e[597:600]" "e[602]" "e[605:609]" "e[611]" "e[613]" "e[616:617]" "e[619]" "e[621]" "e[624:627]" "e[632:635]" "e[640]" "e[646:647]" "e[653:654]" "e[660:661]" "e[667:668]" "e[674:675]" "e[681:682]" "e[688:689]" "e[695:696]" "e[702:703]" "e[709:710]" "e[716:717]" "e[723:724]" "e[729]" "e[741]" "e[746:749]" "e[754:760]" "e[765:768]" "e[773:776]" "e[781:784]" "e[789:792]" "e[797:800]" "e[805:808]" "e[813:816]" "e[821:824]" "e[829:832]" "e[838]" "e[840:842]" "e[844]" "e[858]" "e[863]" "e[867:872]" "e[875:876]" "e[880]" "e[885]" "e[890]" "e[895:902]" "e[904]" "e[906:910]" "e[916:918]" "e[924]" "e[926]" "e[930:931]" "e[935]" "e[937:939]" "e[942]" "e[946]" "e[950]" "e[953:954]" "e[964]" "e[969]" "e[973:974]" "e[979]" "e[981:982]" "e[984]" "e[989]" "e[991]" "e[996]" "e[999]" "e[1001]" "e[1006]" "e[1008]" "e[1013]" "e[1016:1017]" "e[1020:1023]" "e[1027:1028]" "e[1030]" "e[1037]" "e[1039]" "e[1043]" "e[1047]" "e[1049:1053]" "e[1055:1057]" "e[1060:1061]" "e[1067]" "e[1070]" "e[1078]" "e[1081]" "e[1085]" "e[1089]" "e[1093]" "e[1099]" "e[1102:1103]" "e[1105]" "e[1107]" "e[1109:1110]" "e[1112:1115]" "e[1119]" "e[1122]" "e[1134]" "e[1136:1138]" "e[1149]" "e[1152]" "e[1156]" "e[1161:1162]" "e[1165]" "e[1168:1169]" "e[1172]" "e[1174:1179]" "e[1182]" "e[1186]" "e[1190:1192]" "e[1198:1199]" "e[1201]" "e[1203]" "e[1206:1207]" "e[1210]" "e[1212:1214]" "e[1219]" "e[1223:1224]" "e[1227]" "e[1230]" "e[1232]" "e[1234]" "e[1241]" "e[1243:1244]" "e[1247]" "e[1250]" "e[1252]" "e[1254]" "e[1256]" "e[1269]" "e[1288]" "e[1291]" "e[1305]" "e[1308]" "e[1315]" "e[1319]" "e[1326]" "e[1361]" "e[1363]" "e[1381]" "e[1384]" "e[1388]" "e[1394]" "e[1400:1401]" "e[1406]" "e[1409]" "e[1412:1413]" "e[1418]" "e[1420:1421]" "e[1423]" "e[1426]" "e[1428]" "e[1430]" "e[1433]" "e[1435:1436]" "e[1438:1439]" "e[1441]" "e[1443:1445]" "e[1447]" "e[1449]" "e[1451:1456]" "e[1458]" "e[1460:1461]" "e[1463:1464]" "e[1467:1468]" "e[1470]" "e[1472:1473]" "e[1475]" "e[1478]" "e[1480:1481]" "e[1483]" "e[1486:1493]" "e[1495]" "e[1497]" "e[1501]" "e[1503]" "e[1509:1510]" "e[1518:1519]" "e[1525:1526]" "e[1532:1533]" "e[1539:1540]" "e[1546:1547]" "e[1553:1554]" "e[1560:1561]" "e[1567:1568]" "e[1574:1575]" "e[1580:1581]" "e[1584:1585]" "e[1587]" "e[1598:1602]" "e[1604:1605]" "e[1608]" "e[1610:1612]" "e[1615:1616]" "e[1619:1620]" "e[1623:1624]" "e[1627:1628]" "e[1631:1632]" "e[1635:1636]" "e[1639:1640]" "e[1643:1644]" "e[1647:1648]" "e[1651:1652]" "e[1655:1656]" "e[1659:1660]" "e[1663:1664]" "e[1667:1668]" "e[1671:1672]" "e[1675:1676]" "e[1678:1679]" "e[3205:3206]" "e[3219:3220]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweakUV -n "polyTweakUV63";
	rename -uid "CA1DB667-4D95-3C52-5708-7891704676CC";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1984]" -type "float2" 6.1298583e-06 1.8857812e-06 ;
	setAttr ".uvtk[4585]" -type "float2" 1.7463917e-05 -3.5505062e-05 ;
createNode polyMergeVert -n "polyMergeVert58";
	rename -uid "B4C649B7-4261-C55C-725B-0D9DD6012578";
	setAttr ".ics" -type "componentList" 2 "vtx[2190]" "vtx[3197]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak63";
	rename -uid "84444921-4F6E-B52D-CC2A-BBA2EEC3A845";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[75]" -type "float3" -1.1920929e-07 7.4505806e-09 3.7252903e-08 ;
	setAttr ".tk[76]" -type "float3" 2.9802322e-08 2.9802322e-08 0 ;
	setAttr ".tk[3197]" -type "float3" 0.0037870407 0.0020763874 0 ;
createNode polyTweakUV -n "polyTweakUV64";
	rename -uid "84530AA7-4713-CC3F-B4C5-79BD8D9BD355";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3831]" -type "float2" -4.2506679e-05 -8.4312924e-05 ;
	setAttr ".uvtk[3832]" -type "float2" 7.4433192e-05 -6.2954612e-05 ;
	setAttr ".uvtk[4777]" -type "float2" -4.2482199e-05 -1.7038586e-07 ;
	setAttr ".uvtk[4778]" -type "float2" 3.2705269e-05 5.7554039e-06 ;
createNode polyMergeVert -n "polyMergeVert59";
	rename -uid "A867E53E-489E-0AFE-53BD-06823EEEB836";
	setAttr ".ics" -type "componentList" 2 "vtx[2185]" "vtx[3265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak64";
	rename -uid "F191A729-4F12-C4AE-181C-9EAEE7AA16D6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[2185]" -type "float3" 0.0028505325 0.0015664101 0 ;
createNode polyTweakUV -n "polyTweakUV65";
	rename -uid "DCDD94EA-400E-7DF6-E5A7-70BE538838F6";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[2044]" -type "float2" -1.1492306e-05 -8.5067099e-05 ;
	setAttr ".uvtk[3833]" -type "float2" -8.4134872e-06 -4.5998286e-06 ;
createNode polyMergeVert -n "polyMergeVert60";
	rename -uid "2A92FB6A-4FF9-E339-0C0E-2B8F73AF1776";
	setAttr ".ics" -type "componentList" 1 "vtx[2186:2187]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak65";
	rename -uid "1EE901C1-4EBD-4174-0D3C-64A97A9318EE";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[2186]" -type "float3" 0.0028524399 0.0015673637 -3.6239624e-05 ;
createNode polyTweakUV -n "polyTweakUV66";
	rename -uid "D697743F-4157-2D69-69E0-F8B90F51F2CF";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1984]" -type "float2" -4.6143396e-06 2.6568281e-05 ;
	setAttr ".uvtk[4583]" -type "float2" 6.7488008e-06 3.9158e-05 ;
createNode polyMergeVert -n "polyMergeVert61";
	rename -uid "19E2C06F-4F50-8F19-E6CE-7395DE352491";
	setAttr ".ics" -type "componentList" 2 "vtx[2189]" "vtx[3195]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak66";
	rename -uid "E78B6032-44AF-BD08-7376-A98D3A43DBE2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3195]" -type "float3" -0.0043745041 -2.3841858e-07 0 ;
createNode polyTweakUV -n "polyTweakUV67";
	rename -uid "9407C8F6-41A1-0108-CC3E-87993EFC89A1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3831]" -type "float2" -2.0039946e-05 -2.5516849e-06 ;
	setAttr ".uvtk[3832]" -type "float2" 5.2172682e-06 1.7481118e-05 ;
	setAttr ".uvtk[3833]" -type "float2" 4.3495202e-05 9.7967633e-05 ;
	setAttr ".uvtk[3834]" -type "float2" -5.2624939e-05 8.7690307e-05 ;
createNode polyMergeVert -n "polyMergeVert62";
	rename -uid "B1650766-4125-E4FF-40BC-5CB752A6870A";
	setAttr ".ics" -type "componentList" 2 "vtx[2185]" "vtx[2188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak67";
	rename -uid "E7BC254C-4983-56C4-DD23-D78E72734B35";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[2188]" -type "float3" -0.0033063889 0 0 ;
createNode polyTweakUV -n "polyTweakUV68";
	rename -uid "80924C8F-423B-17E9-478F-359574C30535";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1302]" -type "float2" -1.5224308e-05 8.7157649e-05 ;
	setAttr ".uvtk[2044]" -type "float2" -8.0112668e-06 -7.2881227e-07 ;
createNode polyMergeVert -n "polyMergeVert63";
	rename -uid "DA71B907-422A-A0FA-3596-1B8A2B3719F3";
	setAttr ".ics" -type "componentList" 1 "vtx[2186:2187]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak68";
	rename -uid "191ACB7C-466E-F7CF-731A-47AB7650AB59";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[2187]" -type "float3"  -0.0033063889 0 3.4332275e-05;
createNode polyTweakUV -n "polyTweakUV69";
	rename -uid "AA6390CA-4A59-1C01-A4EA-9295F253B0D1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1301]" -type "float2" 3.681362e-07 8.6300388e-05 ;
	setAttr ".uvtk[3827]" -type "float2" 4.0729424e-07 2.082576e-07 ;
createNode polyMergeVert -n "polyMergeVert64";
	rename -uid "B1AB38B3-4771-6B4A-C293-F1841FC15CA5";
	setAttr ".ics" -type "componentList" 1 "vtx[2180:2181]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak69";
	rename -uid "2830DF62-4DE0-54E8-4D52-F9B9148B2015";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[2180:2181]" -type "float3"  -0.0032548904 0 3.6239624e-05
		 0 0 0;
createNode polyTweakUV -n "polyTweakUV70";
	rename -uid "09988F36-485A-A8EB-8660-B0A4E42FE0BB";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1301]" -type "float2" -4.1555518e-07 2.3393779e-06 ;
	setAttr ".uvtk[2860]" -type "float2" -1.5625018e-06 -8.6811233e-05 ;
createNode polyMergeVert -n "polyMergeVert65";
	rename -uid "AD4AE03F-4D3A-500A-03FF-968E863A768D";
	setAttr ".ics" -type "componentList" 1 "vtx[2180:2181]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak70";
	rename -uid "F5651302-43C6-AFCD-E75F-7696E90DB78B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[2181]" -type "float3"  0.0028972626 0.0015921593 -3.4332275e-05;
createNode polyTweakUV -n "polyTweakUV71";
	rename -uid "EAEFFD8B-4312-2B41-D25F-9C84D11F288B";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3824]" -type "float2" 3.5461439e-05 8.6875021e-05 ;
	setAttr ".uvtk[3825]" -type "float2" -4.0747258e-05 0.0001172663 ;
	setAttr ".uvtk[4768]" -type "float2" 3.1330543e-05 6.2897277e-07 ;
	setAttr ".uvtk[4769]" -type "float2" -3.7397604e-05 9.7573375e-06 ;
createNode polyMergeVert -n "polyMergeVert66";
	rename -uid "1755B709-4221-FC21-8056-7489AE355B0D";
	setAttr ".ics" -type "componentList" 2 "vtx[2179]" "vtx[3258]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak71";
	rename -uid "F3C37FB2-4122-8987-4EF5-A3945C9D2FEE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[2179]" -type "float3" -0.0032548904 0 0 ;
createNode polyTweakUV -n "polyTweakUV72";
	rename -uid "E9F2D709-46F1-34C5-BE0D-4B89E2080966";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3824]" -type "float2" 1.7318367e-05 2.548705e-06 ;
	setAttr ".uvtk[3825]" -type "float2" -1.578549e-05 -4.1966946e-06 ;
	setAttr ".uvtk[3826]" -type "float2" -9.9978446e-05 -7.8882265e-05 ;
	setAttr ".uvtk[3827]" -type "float2" 4.3180047e-05 -8.471591e-05 ;
createNode polyMergeVert -n "polyMergeVert67";
	rename -uid "71819EAE-440F-01BC-C72E-E48562D8D229";
	setAttr ".ics" -type "componentList" 2 "vtx[2179]" "vtx[2181]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak72";
	rename -uid "3B653E8D-45D8-BD92-2C57-338805151716";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[2181]" -type "float3" 0.0028953552 0.0015912056 0 ;
createNode polyTweakUV -n "polyTweakUV73";
	rename -uid "5AF8CA69-47EE-C349-EF37-68831E702F55";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[2051]" -type "float2" -1.3911274e-05 2.4564001e-06 ;
	setAttr ".uvtk[4574]" -type "float2" -3.4666125e-05 -3.8458875e-05 ;
createNode polyMergeVert -n "polyMergeVert68";
	rename -uid "95BC4C8A-4C95-039A-4995-68963B318FC5";
	setAttr ".ics" -type "componentList" 2 "vtx[2181]" "vtx[3188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak73";
	rename -uid "744DA43E-4A1C-5DF0-BED4-D7AADB196FB2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[3188]" -type "float3" 0.0038328171 0.0021009445 0 ;
createNode polyTweakUV -n "polyTweakUV74";
	rename -uid "5245D031-4496-C111-89C0-F78B7E932E76";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[2051]" -type "float2" 1.0042215e-05 2.7288806e-05 ;
	setAttr ".uvtk[4574]" -type "float2" -2.1542195e-05 4.2638389e-05 ;
createNode polyMergeVert -n "polyMergeVert69";
	rename -uid "72E17F7D-42D3-544B-ED65-F19C274354CE";
	setAttr ".ics" -type "componentList" 2 "vtx[2181]" "vtx[3188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak74";
	rename -uid "B305BEB6-4F04-F3B0-2390-72A7517E172F";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3188]" -type "float3" -0.0043230057 -2.3841858e-07 0 ;
createNode polyTweakUV -n "polyTweakUV75";
	rename -uid "018465DF-475C-D4CA-15D7-6BB2D348AE86";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1489]" -type "float2" 6.2114968e-06 -1.4043177e-06 ;
	setAttr ".uvtk[4568]" -type "float2" 1.7699072e-05 3.5943627e-05 ;
createNode polyMergeVert -n "polyMergeVert70";
	rename -uid "D2FF14F0-4346-CD3B-F878-C7B4D12927AC";
	setAttr ".ics" -type "componentList" 2 "vtx[1334]" "vtx[3182]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak75";
	rename -uid "C11446F9-4149-E583-ADC4-E0B109F95E16";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3182]" -type "float3" -0.0038328171 0.0021009445 0 ;
createNode polyTweakUV -n "polyTweakUV76";
	rename -uid "C607A327-4D66-5713-0BBC-EE9A24F4342F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1489]" -type "float2" -8.3761124e-06 -2.3386076e-05 ;
	setAttr ".uvtk[4568]" -type "float2" 2.9459056e-06 -3.6160171e-05 ;
createNode polyMergeVert -n "polyMergeVert71";
	rename -uid "9CFC6D4E-4430-CDE7-114A-0EB2DEF48F81";
	setAttr ".ics" -type "componentList" 2 "vtx[1334]" "vtx[3182]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak76";
	rename -uid "6C8D019A-4828-13A1-EF7C-1EA70A6BC247";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3182]" -type "float3" 0.0043230057 -2.3841858e-07 0 ;
createNode polyTweakUV -n "polyTweakUV77";
	rename -uid "BF1E60E5-461C-53F4-927C-FF934A9EAB7B";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3200]" -type "float2" 7.2180213e-05 5.1208437e-05 ;
	setAttr ".uvtk[3201]" -type "float2" -4.2763488e-05 8.5671418e-05 ;
	setAttr ".uvtk[4635]" -type "float2" -4.2482723e-05 -1.5192695e-07 ;
	setAttr ".uvtk[4636]" -type "float2" 2.3786082e-05 -1.1940658e-05 ;
createNode polyMergeVert -n "polyMergeVert72";
	rename -uid "D8E46E25-4B8F-D9C9-EF34-C19B73C16A35";
	setAttr ".ics" -type "componentList" 2 "vtx[1333]" "vtx[3212]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak77";
	rename -uid "A83E6D75-43B0-2C6A-9131-A589CC57D00B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1333]" -type "float3" -0.0028953552 0.0015912056 0 ;
createNode polyTweakUV -n "polyTweakUV78";
	rename -uid "32EF5D00-4BEC-2231-4103-029F00658FC3";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3197]" -type "float2" -5.1130683e-05 -8.6572385e-05 ;
	setAttr ".uvtk[3198]" -type "float2" 4.0942028e-05 -9.7618438e-05 ;
	setAttr ".uvtk[3200]" -type "float2" 7.4780673e-06 -1.0891878e-05 ;
	setAttr ".uvtk[3201]" -type "float2" -1.9735202e-05 1.6468788e-06 ;
createNode polyMergeVert -n "polyMergeVert73";
	rename -uid "35C66070-42CA-CDE7-3D65-9CA7C1BF3700";
	setAttr ".ics" -type "componentList" 2 "vtx[1329]" "vtx[1333]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak78";
	rename -uid "1C5E2631-46BB-71A6-5660-18B62B44ACBF";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1329]" -type "float3" 0.0032548904 0 0 ;
createNode polyTweakUV -n "polyTweakUV79";
	rename -uid "5221DA82-41B9-0173-FF7D-B5B14D3C7400";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[2834]" -type "float2" -1.2983499e-05 8.6697728e-05 ;
	setAttr ".uvtk[3199]" -type "float2" -1.2070508e-05 -1.3128668e-07 ;
createNode polyMergeVert -n "polyMergeVert74";
	rename -uid "23882F79-4C7E-3108-897E-E0BC69BC679C";
	setAttr ".ics" -type "componentList" 1 "vtx[1331:1332]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak79";
	rename -uid "4D1ECFFE-4767-9093-E1FE-6FAAF63B3C07";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[1332]" -type "float3"  -0.0028972626 0.0015921593 3.4332275e-05;
createNode polyTweakUV -n "polyTweakUV80";
	rename -uid "215749E9-4C77-C534-FE3B-5C9FEB1D5783";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1402]" -type "float2" -1.7725954e-05 -8.6468674e-05 ;
	setAttr ".uvtk[2834]" -type "float2" -6.1413443e-06 1.6293669e-06 ;
createNode polyMergeVert -n "polyMergeVert75";
	rename -uid "1DDC18FF-4171-56B9-596A-02AE7514D755";
	setAttr ".ics" -type "componentList" 1 "vtx[1330:1331]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak80";
	rename -uid "1BD0A8C5-4DD0-D9DA-6581-4080FC3A28A2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[1330:1331]" -type "float3"  0.0032548904 0 -3.6239624e-05
		 0 0 0;
createNode polyTweakUV -n "polyTweakUV81";
	rename -uid "4DA3D434-4292-AAEE-8B87-DAB25FAFE38C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1469]" -type "float2" -6.7337959e-07 8.6757267e-05 ;
	setAttr ".uvtk[3187]" -type "float2" 3.9288068e-07 3.4922187e-09 ;
createNode polyMergeVert -n "polyMergeVert76";
	rename -uid "B4701726-4635-EE7D-C767-F0A48EB81CB1";
	setAttr ".ics" -type "componentList" 2 "vtx[1317]" "vtx[1322]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak81";
	rename -uid "F3E0C06D-469A-51A3-A6BA-CC8A5E743406";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1322]" -type "float3" -0.0028972626 0.0015921593 9.5367432e-07 ;
createNode polyTweakUV -n "polyTweakUV82";
	rename -uid "07201404-4686-967D-CB52-5897ED191474";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1237]" -type "float2" -6.5877816e-07 -8.7822089e-05 ;
	setAttr ".uvtk[1469]" -type "float2" -4.388985e-07 2.0206755e-06 ;
createNode polyMergeVert -n "polyMergeVert77";
	rename -uid "59CF60AF-498B-348A-3EF9-9A93AC78C5EC";
	setAttr ".ics" -type "componentList" 1 "vtx[1317:1318]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak82";
	rename -uid "EFA0FC51-48C5-7E03-9967-49BC7804DB83";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[1318]" -type "float3"  0.0033063889 0 9.5367432e-07;
createNode polyTweakUV -n "polyTweakUV83";
	rename -uid "ADDA8204-4591-0E4F-35B1-5293FA493C91";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3186]" -type "float2" -4.074036e-05 -0.00011901481 ;
	setAttr ".uvtk[3187]" -type "float2" 3.5625562e-05 -8.7470005e-05 ;
	setAttr ".uvtk[4627]" -type "float2" -3.7410289e-05 -9.5915175e-06 ;
	setAttr ".uvtk[4628]" -type "float2" 3.1463522e-05 2.0455427e-07 ;
createNode polyMergeVert -n "polyMergeVert78";
	rename -uid "15EB8B5C-42EF-98B9-A7C9-CB863FF81151";
	setAttr ".ics" -type "componentList" 2 "vtx[1318]" "vtx[3206]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak83";
	rename -uid "15A9A8F3-4DB0-44DC-9BBC-CEBF99484819";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1318]" -type "float3" 0.0033063889 0 0 ;
createNode polyTweakUV -n "polyTweakUV84";
	rename -uid "4BC9CED4-4C31-F6A6-7675-329D2C1075BF";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3186]" -type "float2" -1.5783487e-05 4.034544e-06 ;
	setAttr ".uvtk[3187]" -type "float2" 1.7406897e-05 -2.218987e-06 ;
	setAttr ".uvtk[3188]" -type "float2" 4.3398999e-05 8.5685671e-05 ;
	setAttr ".uvtk[3189]" -type "float2" -9.9978897e-05 7.8851379e-05 ;
createNode polyMergeVert -n "polyMergeVert79";
	rename -uid "E4E8D16E-4032-36F3-441B-558037548D32";
	setAttr ".ics" -type "componentList" 2 "vtx[1318]" "vtx[1320]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak84";
	rename -uid "76D72E08-48B3-C644-78E6-C488E5BACE75";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1320]" -type "float3" -0.0028953552 0.0015912056 0 ;
createNode polyTweakUV -n "polyTweakUV85";
	rename -uid "62FF84D7-46B6-A24A-692E-A0A517B44DD2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1405]" -type "float2" -1.3897775e-05 -2.8478034e-06 ;
	setAttr ".uvtk[4558]" -type "float2" -1.5104921e-05 -4.9482427e-05 ;
createNode polyMergeVert -n "polyMergeVert80";
	rename -uid "73E0621B-4A8A-2059-3F37-219A4BAD4990";
	setAttr ".ics" -type "componentList" 2 "vtx[1319]" "vtx[3174]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak85";
	rename -uid "8B051EE3-40CF-C774-012E-D3A3D79C470D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3174]" -type "float3" 0.0043745041 -2.3841858e-07 0 ;
createNode hairTubeShader -n "hairTubeShader1";
	rename -uid "B9FDF64A-4D17-014F-B7CA-5486DC33038E";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.30000001 0.2 0.1 ;
	setAttr ".tc" 1;
	setAttr ".tcf" 0;
	setAttr ".cls[0].clsp" 0;
	setAttr ".cls[0].clsc" -type "float3" 1 1 1 ;
	setAttr ".cls[0].clsi" 1;
createNode shadingEngine -n "hairTubeShader1SG";
	rename -uid "0500ED75-43AA-BBF5-8A2B-C8ABD4EC214F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "0E8E9B7A-4BAD-9E87-CFBD-DEA1C54F1E1D";
createNode shadingEngine -n "lambert1SG";
	rename -uid "38604508-48B9-935D-EDCD-19B06BFF3655";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "B8D7B0EF-478B-D85A-E2D5-A5B5D319A921";
createNode lambert -n "lambert2";
	rename -uid "F3CC384C-4142-3E6E-FA83-A2993280FB5B";
	setAttr ".c" -type "float3" 0.2071 0.16249999 0.089299999 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "50EC9EB6-4776-3773-FF02-5088DD80FF03";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "31770A8A-4109-6499-6C45-D59184EE6E88";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "50F181C9-49FE-9F86-75B2-38B3D9F3E2AB";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyMergeVert80.out" "BenchShape.i";
connectAttr "polyTweakUV85.uvtk[0]" "BenchShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hairTubeShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hairTubeShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "BenchShape1.o" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyTweakUV1.ip";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "BenchShape.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak1.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "BenchShape.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak2.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV3.ip";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "BenchShape.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak3.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV4.ip";
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "BenchShape.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak4.ip";
connectAttr "polyMergeVert4.out" "polyExtrudeFace1.ip";
connectAttr "BenchShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak5.out" "polyExtrudeFace2.ip";
connectAttr "BenchShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace2.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polyExtrudeFace3.ip";
connectAttr "BenchShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyTweakUV5.ip";
connectAttr "polyTweak7.out" "polyMergeVert5.ip";
connectAttr "BenchShape.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV5.out" "polyTweak7.ip";
connectAttr "polyMergeVert5.out" "polyTweakUV6.ip";
connectAttr "polyTweak8.out" "polyMergeVert6.ip";
connectAttr "BenchShape.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV6.out" "polyTweak8.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV7.ip";
connectAttr "polyTweak9.out" "polyMergeVert7.ip";
connectAttr "BenchShape.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV7.out" "polyTweak9.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV8.ip";
connectAttr "polyTweak10.out" "polyMergeVert8.ip";
connectAttr "BenchShape.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV8.out" "polyTweak10.ip";
connectAttr "polyMergeVert8.out" "polyTweakUV9.ip";
connectAttr "polyTweak11.out" "polyMergeVert9.ip";
connectAttr "BenchShape.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV9.out" "polyTweak11.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV10.ip";
connectAttr "polyTweak12.out" "polyMergeVert10.ip";
connectAttr "BenchShape.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV10.out" "polyTweak12.ip";
connectAttr "polyMergeVert10.out" "polyTweakUV11.ip";
connectAttr "polyTweak13.out" "polyMergeVert11.ip";
connectAttr "BenchShape.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV11.out" "polyTweak13.ip";
connectAttr "polyMergeVert11.out" "polyTweakUV12.ip";
connectAttr "polyTweak14.out" "polyMergeVert12.ip";
connectAttr "BenchShape.wm" "polyMergeVert12.mp";
connectAttr "polyTweakUV12.out" "polyTweak14.ip";
connectAttr "polyMergeVert12.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polyTweakUV13.ip";
connectAttr "polyTweak15.out" "polyMergeVert13.ip";
connectAttr "BenchShape.wm" "polyMergeVert13.mp";
connectAttr "polyTweakUV13.out" "polyTweak15.ip";
connectAttr "polyMergeVert13.out" "polyTweakUV14.ip";
connectAttr "polyTweak16.out" "polyMergeVert14.ip";
connectAttr "BenchShape.wm" "polyMergeVert14.mp";
connectAttr "polyTweakUV14.out" "polyTweak16.ip";
connectAttr "polyMergeVert14.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polyExtrudeFace4.ip";
connectAttr "BenchShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeFace5.ip";
connectAttr "BenchShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyTweak18.ip";
connectAttr "polyTweak18.out" "polySplit15.ip";
connectAttr "polyTweak19.out" "polyDelEdge1.ip";
connectAttr "polySplit15.out" "polyTweak19.ip";
connectAttr "polyDelEdge1.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polyExtrudeFace6.ip";
connectAttr "BenchShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak20.out" "polyExtrudeFace7.ip";
connectAttr "BenchShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak20.ip";
connectAttr "polyExtrudeFace7.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polyTweak21.ip";
connectAttr "polyTweak21.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polySplit35.ip";
connectAttr "polySplit35.out" "polySplit36.ip";
connectAttr "polySplit36.out" "polyExtrudeFace8.ip";
connectAttr "BenchShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak22.ip";
connectAttr "polyTweak22.out" "polySplit37.ip";
connectAttr "polySplit37.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyTweakUV15.ip";
connectAttr "polyTweak23.out" "polyMergeVert15.ip";
connectAttr "BenchShape.wm" "polyMergeVert15.mp";
connectAttr "polyTweakUV15.out" "polyTweak23.ip";
connectAttr "polyMergeVert15.out" "polyTweakUV16.ip";
connectAttr "polyTweak24.out" "polyMergeVert16.ip";
connectAttr "BenchShape.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV16.out" "polyTweak24.ip";
connectAttr "polyMergeVert16.out" "polyTweakUV17.ip";
connectAttr "polyTweak25.out" "polyMergeVert17.ip";
connectAttr "BenchShape.wm" "polyMergeVert17.mp";
connectAttr "polyTweakUV17.out" "polyTweak25.ip";
connectAttr "polyMergeVert17.out" "polyTweakUV18.ip";
connectAttr "polyTweak26.out" "polyMergeVert18.ip";
connectAttr "BenchShape.wm" "polyMergeVert18.mp";
connectAttr "polyTweakUV18.out" "polyTweak26.ip";
connectAttr "polyMergeVert18.out" "polySplit38.ip";
connectAttr "polySplit38.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polySplit39.ip";
connectAttr "polySplit39.out" "polySplit40.ip";
connectAttr "polySplit40.out" "polySplit41.ip";
connectAttr "polySplit41.out" "polySplit42.ip";
connectAttr "polySplit42.out" "polySplit43.ip";
connectAttr "polySplit43.out" "polySplit44.ip";
connectAttr "polySplit44.out" "polySplit45.ip";
connectAttr "polySplit45.out" "polySplit46.ip";
connectAttr "polySplit46.out" "polySplit47.ip";
connectAttr "polySplit47.out" "polySplit48.ip";
connectAttr "polySplit48.out" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyTweakUV19.ip";
connectAttr "polyTweak27.out" "polyMergeVert19.ip";
connectAttr "BenchShape.wm" "polyMergeVert19.mp";
connectAttr "polyTweakUV19.out" "polyTweak27.ip";
connectAttr "polyMergeVert19.out" "polyTweakUV20.ip";
connectAttr "polyTweak28.out" "polyMergeVert20.ip";
connectAttr "BenchShape.wm" "polyMergeVert20.mp";
connectAttr "polyTweakUV20.out" "polyTweak28.ip";
connectAttr "polyMergeVert20.out" "polyTweakUV21.ip";
connectAttr "polyTweak29.out" "polyMergeVert21.ip";
connectAttr "BenchShape.wm" "polyMergeVert21.mp";
connectAttr "polyTweakUV21.out" "polyTweak29.ip";
connectAttr "polyMergeVert21.out" "polyTweakUV22.ip";
connectAttr "polyTweak30.out" "polyMergeVert22.ip";
connectAttr "BenchShape.wm" "polyMergeVert22.mp";
connectAttr "polyTweakUV22.out" "polyTweak30.ip";
connectAttr "polyMergeVert22.out" "polyTweakUV23.ip";
connectAttr "polyTweak31.out" "polyMergeVert23.ip";
connectAttr "BenchShape.wm" "polyMergeVert23.mp";
connectAttr "polyTweakUV23.out" "polyTweak31.ip";
connectAttr "polyMergeVert23.out" "polyTweakUV24.ip";
connectAttr "polyTweak32.out" "polyMergeVert24.ip";
connectAttr "BenchShape.wm" "polyMergeVert24.mp";
connectAttr "polyTweakUV24.out" "polyTweak32.ip";
connectAttr "polyMergeVert24.out" "polyTweakUV25.ip";
connectAttr "polyTweak33.out" "polyMergeVert25.ip";
connectAttr "BenchShape.wm" "polyMergeVert25.mp";
connectAttr "polyTweakUV25.out" "polyTweak33.ip";
connectAttr "polyMergeVert25.out" "polyTweakUV26.ip";
connectAttr "polyTweak34.out" "polyMergeVert26.ip";
connectAttr "BenchShape.wm" "polyMergeVert26.mp";
connectAttr "polyTweakUV26.out" "polyTweak34.ip";
connectAttr "polyMergeVert26.out" "polyTweakUV27.ip";
connectAttr "polyTweak35.out" "polyMergeVert27.ip";
connectAttr "BenchShape.wm" "polyMergeVert27.mp";
connectAttr "polyTweakUV27.out" "polyTweak35.ip";
connectAttr "polyMergeVert27.out" "polyTweakUV28.ip";
connectAttr "polyTweak36.out" "polyMergeVert28.ip";
connectAttr "BenchShape.wm" "polyMergeVert28.mp";
connectAttr "polyTweakUV28.out" "polyTweak36.ip";
connectAttr "polyMergeVert28.out" "polyTweakUV29.ip";
connectAttr "polyTweak37.out" "polyMergeVert29.ip";
connectAttr "BenchShape.wm" "polyMergeVert29.mp";
connectAttr "polyTweakUV29.out" "polyTweak37.ip";
connectAttr "polyMergeVert29.out" "polyTweakUV30.ip";
connectAttr "polyTweak38.out" "polyMergeVert30.ip";
connectAttr "BenchShape.wm" "polyMergeVert30.mp";
connectAttr "polyTweakUV30.out" "polyTweak38.ip";
connectAttr "polyMergeVert30.out" "polyTweakUV31.ip";
connectAttr "polyTweak39.out" "polyMergeVert31.ip";
connectAttr "BenchShape.wm" "polyMergeVert31.mp";
connectAttr "polyTweakUV31.out" "polyTweak39.ip";
connectAttr "polyMergeVert31.out" "polyTweakUV32.ip";
connectAttr "polyTweak40.out" "polyMergeVert32.ip";
connectAttr "BenchShape.wm" "polyMergeVert32.mp";
connectAttr "polyTweakUV32.out" "polyTweak40.ip";
connectAttr "polyMergeVert32.out" "polyTweakUV33.ip";
connectAttr "polyTweak41.out" "polyMergeVert33.ip";
connectAttr "BenchShape.wm" "polyMergeVert33.mp";
connectAttr "polyTweakUV33.out" "polyTweak41.ip";
connectAttr "polyMergeVert33.out" "polyTweakUV34.ip";
connectAttr "polyTweak42.out" "polyMergeVert34.ip";
connectAttr "BenchShape.wm" "polyMergeVert34.mp";
connectAttr "polyTweakUV34.out" "polyTweak42.ip";
connectAttr "polyMergeVert34.out" "polyTweakUV35.ip";
connectAttr "polyTweak43.out" "polyMergeVert35.ip";
connectAttr "BenchShape.wm" "polyMergeVert35.mp";
connectAttr "polyTweakUV35.out" "polyTweak43.ip";
connectAttr "polyMergeVert35.out" "polyTweakUV36.ip";
connectAttr "polyTweak44.out" "polyMergeVert36.ip";
connectAttr "BenchShape.wm" "polyMergeVert36.mp";
connectAttr "polyTweakUV36.out" "polyTweak44.ip";
connectAttr "polyMergeVert36.out" "polyTweakUV37.ip";
connectAttr "polyTweak45.out" "polyMergeVert37.ip";
connectAttr "BenchShape.wm" "polyMergeVert37.mp";
connectAttr "polyTweakUV37.out" "polyTweak45.ip";
connectAttr "polyMergeVert37.out" "polyTweakUV38.ip";
connectAttr "polyTweak46.out" "polyMergeVert38.ip";
connectAttr "BenchShape.wm" "polyMergeVert38.mp";
connectAttr "polyTweakUV38.out" "polyTweak46.ip";
connectAttr "polyMergeVert38.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyMapSew3.ip";
connectAttr "polyMapSew3.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyPlanarProj1.ip";
connectAttr "BenchShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polySplitVert1.ip";
connectAttr "polySplitVert1.out" "polyChipOff1.ip";
connectAttr "BenchShape.wm" "polyChipOff1.mp";
connectAttr "polyChipOff1.out" "polyTweakUV39.ip";
connectAttr "polyTweakUV39.out" "polyMapSew4.ip";
connectAttr "polyMapSew4.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyPlanarProj2.ip";
connectAttr "BenchShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV40.ip";
connectAttr "polyTweak47.out" "polyMergeVert39.ip";
connectAttr "BenchShape.wm" "polyMergeVert39.mp";
connectAttr "polyTweakUV40.out" "polyTweak47.ip";
connectAttr "polyMergeVert39.out" "polyTweakUV41.ip";
connectAttr "polyTweak48.out" "polyMergeVert40.ip";
connectAttr "BenchShape.wm" "polyMergeVert40.mp";
connectAttr "polyTweakUV41.out" "polyTweak48.ip";
connectAttr "polyMergeVert40.out" "polyTweak49.ip";
connectAttr "polyTweak49.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polyTweakUV42.ip";
connectAttr "polyTweak50.out" "polyMergeVert41.ip";
connectAttr "BenchShape.wm" "polyMergeVert41.mp";
connectAttr "polyTweakUV42.out" "polyTweak50.ip";
connectAttr "polyMergeVert41.out" "polyTweakUV43.ip";
connectAttr "polyTweak51.out" "polyMergeVert42.ip";
connectAttr "BenchShape.wm" "polyMergeVert42.mp";
connectAttr "polyTweakUV43.out" "polyTweak51.ip";
connectAttr "polyMergeVert42.out" "polyTweakUV44.ip";
connectAttr "polyTweak52.out" "polyMergeVert43.ip";
connectAttr "BenchShape.wm" "polyMergeVert43.mp";
connectAttr "polyTweakUV44.out" "polyTweak52.ip";
connectAttr "polyMergeVert43.out" "polyTweakUV45.ip";
connectAttr "polyTweak53.out" "polyMergeVert44.ip";
connectAttr "BenchShape.wm" "polyMergeVert44.mp";
connectAttr "polyTweakUV45.out" "polyTweak53.ip";
connectAttr "polyMergeVert44.out" "polyTweakUV46.ip";
connectAttr "polyTweak54.out" "polyMergeVert45.ip";
connectAttr "BenchShape.wm" "polyMergeVert45.mp";
connectAttr "polyTweakUV46.out" "polyTweak54.ip";
connectAttr "polyMergeVert45.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyExtrudeEdge1.ip";
connectAttr "BenchShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweakUV47.ip";
connectAttr "polyTweak55.out" "polyMergeVert46.ip";
connectAttr "BenchShape.wm" "polyMergeVert46.mp";
connectAttr "polyTweakUV47.out" "polyTweak55.ip";
connectAttr "polyMergeVert46.out" "polyTweakUV48.ip";
connectAttr "polyTweak56.out" "polyMergeVert47.ip";
connectAttr "BenchShape.wm" "polyMergeVert47.mp";
connectAttr "polyTweakUV48.out" "polyTweak56.ip";
connectAttr "polyMergeVert47.out" "polyTweakUV49.ip";
connectAttr "polyTweak57.out" "polyMergeVert48.ip";
connectAttr "BenchShape.wm" "polyMergeVert48.mp";
connectAttr "polyTweakUV49.out" "polyTweak57.ip";
connectAttr "polyMergeVert48.out" "polyTweakUV50.ip";
connectAttr "polyTweak58.out" "polyMergeVert49.ip";
connectAttr "BenchShape.wm" "polyMergeVert49.mp";
connectAttr "polyTweakUV50.out" "polyTweak58.ip";
connectAttr "polyMergeVert49.out" "polyTweakUV51.ip";
connectAttr "polyTweak59.out" "polyMergeVert50.ip";
connectAttr "BenchShape.wm" "polyMergeVert50.mp";
connectAttr "polyTweakUV51.out" "polyTweak59.ip";
connectAttr "polyMergeVert50.out" "polyTweakUV52.ip";
connectAttr "polyTweakUV52.out" "polyMergeVert51.ip";
connectAttr "BenchShape.wm" "polyMergeVert51.mp";
connectAttr "polyMergeVert51.out" "polyTweakUV53.ip";
connectAttr "polyTweakUV53.out" "polyMergeVert52.ip";
connectAttr "BenchShape.wm" "polyMergeVert52.mp";
connectAttr "polyMergeVert52.out" "polyTweakUV54.ip";
connectAttr "polyTweakUV54.out" "polyMergeVert53.ip";
connectAttr "BenchShape.wm" "polyMergeVert53.mp";
connectAttr "polyMergeVert53.out" "polyTweakUV55.ip";
connectAttr "polyTweakUV55.out" "polyMergeVert54.ip";
connectAttr "BenchShape.wm" "polyMergeVert54.mp";
connectAttr "polyMergeVert54.out" "polyTweakUV56.ip";
connectAttr "polyTweak60.out" "polyMergeVert55.ip";
connectAttr "BenchShape.wm" "polyMergeVert55.mp";
connectAttr "polyTweakUV56.out" "polyTweak60.ip";
connectAttr "polyMergeVert55.out" "polyTweakUV57.ip";
connectAttr "polyTweak61.out" "polyMergeVert56.ip";
connectAttr "BenchShape.wm" "polyMergeVert56.mp";
connectAttr "polyTweakUV57.out" "polyTweak61.ip";
connectAttr "polyMergeVert56.out" "polyTweakUV58.ip";
connectAttr "polyTweakUV58.out" "polyMergeVert57.ip";
connectAttr "BenchShape.wm" "polyMergeVert57.mp";
connectAttr "polyMergeVert57.out" "polyMirror1.ip";
connectAttr "BenchShape.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyPlanarProj3.ip";
connectAttr "BenchShape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV59.ip";
connectAttr "polyTweakUV59.out" "polyPlanarProj4.ip";
connectAttr "BenchShape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyTweakUV60.ip";
connectAttr "polyTweakUV60.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyPlanarProj5.ip";
connectAttr "BenchShape.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polyTweakUV61.ip";
connectAttr "polyTweakUV61.out" "polyAutoProj1.ip";
connectAttr "BenchShape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV62.ip";
connectAttr "polyTweakUV62.out" "polyBevel1.ip";
connectAttr "BenchShape.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "BenchShape.wm" "polyBevel2.mp";
connectAttr "polyTweak62.out" "polyBevel3.ip";
connectAttr "BenchShape.wm" "polyBevel3.mp";
connectAttr "polyBevel2.out" "polyTweak62.ip";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyBevel3.out" "polyBevel4.ip";
connectAttr "BenchShape.wm" "polyBevel4.mp";
connectAttr "polyBevel4.out" "polyTweakUV63.ip";
connectAttr "polyTweak63.out" "polyMergeVert58.ip";
connectAttr "BenchShape.wm" "polyMergeVert58.mp";
connectAttr "polyTweakUV63.out" "polyTweak63.ip";
connectAttr "polyMergeVert58.out" "polyTweakUV64.ip";
connectAttr "polyTweak64.out" "polyMergeVert59.ip";
connectAttr "BenchShape.wm" "polyMergeVert59.mp";
connectAttr "polyTweakUV64.out" "polyTweak64.ip";
connectAttr "polyMergeVert59.out" "polyTweakUV65.ip";
connectAttr "polyTweak65.out" "polyMergeVert60.ip";
connectAttr "BenchShape.wm" "polyMergeVert60.mp";
connectAttr "polyTweakUV65.out" "polyTweak65.ip";
connectAttr "polyMergeVert60.out" "polyTweakUV66.ip";
connectAttr "polyTweak66.out" "polyMergeVert61.ip";
connectAttr "BenchShape.wm" "polyMergeVert61.mp";
connectAttr "polyTweakUV66.out" "polyTweak66.ip";
connectAttr "polyMergeVert61.out" "polyTweakUV67.ip";
connectAttr "polyTweak67.out" "polyMergeVert62.ip";
connectAttr "BenchShape.wm" "polyMergeVert62.mp";
connectAttr "polyTweakUV67.out" "polyTweak67.ip";
connectAttr "polyMergeVert62.out" "polyTweakUV68.ip";
connectAttr "polyTweak68.out" "polyMergeVert63.ip";
connectAttr "BenchShape.wm" "polyMergeVert63.mp";
connectAttr "polyTweakUV68.out" "polyTweak68.ip";
connectAttr "polyMergeVert63.out" "polyTweakUV69.ip";
connectAttr "polyTweak69.out" "polyMergeVert64.ip";
connectAttr "BenchShape.wm" "polyMergeVert64.mp";
connectAttr "polyTweakUV69.out" "polyTweak69.ip";
connectAttr "polyMergeVert64.out" "polyTweakUV70.ip";
connectAttr "polyTweak70.out" "polyMergeVert65.ip";
connectAttr "BenchShape.wm" "polyMergeVert65.mp";
connectAttr "polyTweakUV70.out" "polyTweak70.ip";
connectAttr "polyMergeVert65.out" "polyTweakUV71.ip";
connectAttr "polyTweak71.out" "polyMergeVert66.ip";
connectAttr "BenchShape.wm" "polyMergeVert66.mp";
connectAttr "polyTweakUV71.out" "polyTweak71.ip";
connectAttr "polyMergeVert66.out" "polyTweakUV72.ip";
connectAttr "polyTweak72.out" "polyMergeVert67.ip";
connectAttr "BenchShape.wm" "polyMergeVert67.mp";
connectAttr "polyTweakUV72.out" "polyTweak72.ip";
connectAttr "polyMergeVert67.out" "polyTweakUV73.ip";
connectAttr "polyTweak73.out" "polyMergeVert68.ip";
connectAttr "BenchShape.wm" "polyMergeVert68.mp";
connectAttr "polyTweakUV73.out" "polyTweak73.ip";
connectAttr "polyMergeVert68.out" "polyTweakUV74.ip";
connectAttr "polyTweak74.out" "polyMergeVert69.ip";
connectAttr "BenchShape.wm" "polyMergeVert69.mp";
connectAttr "polyTweakUV74.out" "polyTweak74.ip";
connectAttr "polyMergeVert69.out" "polyTweakUV75.ip";
connectAttr "polyTweak75.out" "polyMergeVert70.ip";
connectAttr "BenchShape.wm" "polyMergeVert70.mp";
connectAttr "polyTweakUV75.out" "polyTweak75.ip";
connectAttr "polyMergeVert70.out" "polyTweakUV76.ip";
connectAttr "polyTweak76.out" "polyMergeVert71.ip";
connectAttr "BenchShape.wm" "polyMergeVert71.mp";
connectAttr "polyTweakUV76.out" "polyTweak76.ip";
connectAttr "polyMergeVert71.out" "polyTweakUV77.ip";
connectAttr "polyTweak77.out" "polyMergeVert72.ip";
connectAttr "BenchShape.wm" "polyMergeVert72.mp";
connectAttr "polyTweakUV77.out" "polyTweak77.ip";
connectAttr "polyMergeVert72.out" "polyTweakUV78.ip";
connectAttr "polyTweak78.out" "polyMergeVert73.ip";
connectAttr "BenchShape.wm" "polyMergeVert73.mp";
connectAttr "polyTweakUV78.out" "polyTweak78.ip";
connectAttr "polyMergeVert73.out" "polyTweakUV79.ip";
connectAttr "polyTweak79.out" "polyMergeVert74.ip";
connectAttr "BenchShape.wm" "polyMergeVert74.mp";
connectAttr "polyTweakUV79.out" "polyTweak79.ip";
connectAttr "polyMergeVert74.out" "polyTweakUV80.ip";
connectAttr "polyTweak80.out" "polyMergeVert75.ip";
connectAttr "BenchShape.wm" "polyMergeVert75.mp";
connectAttr "polyTweakUV80.out" "polyTweak80.ip";
connectAttr "polyMergeVert75.out" "polyTweakUV81.ip";
connectAttr "polyTweak81.out" "polyMergeVert76.ip";
connectAttr "BenchShape.wm" "polyMergeVert76.mp";
connectAttr "polyTweakUV81.out" "polyTweak81.ip";
connectAttr "polyMergeVert76.out" "polyTweakUV82.ip";
connectAttr "polyTweak82.out" "polyMergeVert77.ip";
connectAttr "BenchShape.wm" "polyMergeVert77.mp";
connectAttr "polyTweakUV82.out" "polyTweak82.ip";
connectAttr "polyMergeVert77.out" "polyTweakUV83.ip";
connectAttr "polyTweak83.out" "polyMergeVert78.ip";
connectAttr "BenchShape.wm" "polyMergeVert78.mp";
connectAttr "polyTweakUV83.out" "polyTweak83.ip";
connectAttr "polyMergeVert78.out" "polyTweakUV84.ip";
connectAttr "polyTweak84.out" "polyMergeVert79.ip";
connectAttr "BenchShape.wm" "polyMergeVert79.mp";
connectAttr "polyTweakUV84.out" "polyTweak84.ip";
connectAttr "polyMergeVert79.out" "polyTweakUV85.ip";
connectAttr "polyTweak85.out" "polyMergeVert80.ip";
connectAttr "BenchShape.wm" "polyMergeVert80.mp";
connectAttr "polyTweakUV85.out" "polyTweak85.ip";
connectAttr "hairTubeShader1.oc" "hairTubeShader1SG.ss";
connectAttr "hairTubeShader1SG.msg" "materialInfo1.sg";
connectAttr "hairTubeShader1.msg" "materialInfo1.m";
connectAttr ":lambert1.oc" "lambert1SG.ss";
connectAttr "lambert1SG.msg" "materialInfo2.sg";
connectAttr ":lambert1.msg" "materialInfo2.m";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "BenchShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "hairTubeShader1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "hairTubeShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of ParkBench.ma
