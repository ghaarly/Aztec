//Maya ASCII 2024 scene
//Name: Fuerte.ma
//Last modified: Wed, Nov 12, 2025 10:41:46 AM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.8";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "6.20.00 32436 24ec9df";
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "744C3A26-4F10-2041-C5DF-1B90A033D4DC";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "959CC28B-4423-DCF5-4BD6-BFB82008F783";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 49.237632678495778 28.318824499512548 66.412504710477023 ;
	setAttr ".r" -type "double3" -10.199999999999953 -1752.0000000000721 0 ;
	setAttr ".rpt" -type "double3" 1.7754173269718348e-16 -1.8840010287795898e-16 -1.0249714217563018e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "26417D5E-4826-03D2-653C-9290CEF9F5B3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 100.87899818814883;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -24.545253816873494 10.454693301663614 -0.021904690091209655 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D5C6CBA4-4BAD-8FD1-3BC1-6DB17093C93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "54777D3C-4CA0-E89F-A503-609ACDD4F56C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "E5EAF1DF-4031-788C-F456-B2914C668629";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9ECE21C8-424C-DF2D-7D3D-DCAA61BB63EA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "48BDF043-48D3-E37A-3D2E-4AB70FEECC88";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "952C4002-400E-08A9-2AFC-F18D97032504";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "524DD802-4B23-F8A4-56D0-0D81ED0877C2";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "CF6EEE6C-4228-1DEE-2D1F-5FB3E189EE0B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43749374151229858 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 46 ".pt";
	setAttr ".pt[5]" -type "float3" 0 -0.00097864703 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.0064210203 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.0020185101 0 ;
	setAttr ".pt[8]" -type "float3" 0 -0.00097864703 0 ;
	setAttr ".pt[10]" -type "float3" 0 -0.0064210203 0 ;
	setAttr ".pt[11]" -type "float3" 0 -0.0020185101 0 ;
	setAttr ".pt[16]" -type "float3" 0 -0.027223039 0 ;
	setAttr ".pt[17]" -type "float3" 0 -0.012541788 0 ;
	setAttr ".pt[18]" -type "float3" 0 -0.027223039 0 ;
	setAttr ".pt[19]" -type "float3" 0 -0.012541788 0 ;
	setAttr ".pt[20]" -type "float3" 0 -0.16567361 0 ;
	setAttr ".pt[21]" -type "float3" 0 -0.14490335 0 ;
	setAttr ".pt[22]" -type "float3" 0 -0.16567361 0 ;
	setAttr ".pt[23]" -type "float3" 0 -0.14490335 0 ;
	setAttr ".pt[24]" -type "float3" 0 -0.26213923 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.26590362 0 ;
	setAttr ".pt[26]" -type "float3" 0 -0.26213923 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.26590362 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.29303256 0 ;
	setAttr ".pt[29]" -type "float3" 0 -0.30934834 0 ;
	setAttr ".pt[30]" -type "float3" 0 -0.29303256 0 ;
	setAttr ".pt[31]" -type "float3" 0 -0.30934834 0 ;
	setAttr ".pt[37]" -type "float3" 0 -0.00097864703 0 ;
	setAttr ".pt[38]" -type "float3" 0 -0.0064210203 0 ;
	setAttr ".pt[39]" -type "float3" 0 -0.0020185101 0 ;
	setAttr ".pt[40]" -type "float3" 0 -0.00097864703 0 ;
	setAttr ".pt[42]" -type "float3" 0 -0.0064210203 0 ;
	setAttr ".pt[43]" -type "float3" 0 -0.0020185101 0 ;
	setAttr ".pt[48]" -type "float3" 0 -0.027223039 0 ;
	setAttr ".pt[49]" -type "float3" 0 -0.012541788 0 ;
	setAttr ".pt[50]" -type "float3" 0 -0.027223039 0 ;
	setAttr ".pt[51]" -type "float3" 0 -0.012541788 0 ;
	setAttr ".pt[52]" -type "float3" 0 -0.16567361 0 ;
	setAttr ".pt[53]" -type "float3" 0 -0.14490335 0 ;
	setAttr ".pt[54]" -type "float3" 0 -0.16567361 0 ;
	setAttr ".pt[55]" -type "float3" 0 -0.14490335 0 ;
	setAttr ".pt[56]" -type "float3" 0 -0.26213923 0 ;
	setAttr ".pt[57]" -type "float3" 0 -0.26590362 0 ;
	setAttr ".pt[58]" -type "float3" 0 -0.26213923 0 ;
	setAttr ".pt[59]" -type "float3" 0 -0.26590362 0 ;
	setAttr ".pt[60]" -type "float3" 0 -0.29303256 0 ;
	setAttr ".pt[61]" -type "float3" 0 -0.30934834 0 ;
	setAttr ".pt[62]" -type "float3" 0 -0.29303256 0 ;
	setAttr ".pt[63]" -type "float3" 0 -0.30934834 0 ;
createNode transform -n "pCube2";
	rename -uid "2595B523-4B41-E16D-44F5-D1A1F7F027E2";
	setAttr ".t" -type "double3" -6.4343528276919244 0.6885016893130258 0 ;
	setAttr ".s" -type "double3" 6.1349106118042407 1 0.66643113732786152 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "610A4A05-4B20-F7C9-4C06-D3B2BBD00D87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49660566449165344 0.31249374151229858 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[1]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[9]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[11]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[14]" -type "float3" 0 -0.19961448 0 ;
createNode transform -n "pCube3";
	rename -uid "F9FF92FB-49CE-DDD4-974F-63BC13AB0E36";
	setAttr ".t" -type "double3" -9.9430361697628094 0.17792924236794694 0 ;
	setAttr ".s" -type "double3" 1 0.47057058035648064 1 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "76A8E8D8-42AA-77E5-6076-C1809265A716";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56618449091911316 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[28]" -type "float3" 3.4207561 0 0.082112208 ;
	setAttr ".pt[29]" -type "float3" 3.4207561 0 -0.11684877 ;
	setAttr ".pt[30]" -type "float3" 3.4207561 0 0.082112208 ;
	setAttr ".pt[31]" -type "float3" 3.4207561 0 -0.11684877 ;
	setAttr ".pt[36]" -type "float3" 5.5959749 0 0.082112208 ;
	setAttr ".pt[37]" -type "float3" 5.5959749 0 -0.11684877 ;
	setAttr ".pt[38]" -type "float3" 5.5959749 0 0.082112208 ;
	setAttr ".pt[39]" -type "float3" 5.5959749 0 -0.11684877 ;
createNode transform -n "pCube4";
	rename -uid "7988FCDE-4B85-2526-7A68-63AF03BAEFE1";
	setAttr ".t" -type "double3" -17.377474062220102 0.6885016893130258 0 ;
	setAttr ".s" -type "double3" 6.1349106118042407 1 0.66643113732786152 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "F98C3E03-40EA-4A43-E7FF-60B4F5412F9F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45737394690513611 0.31249481439590454 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.66362655 0 0 0.6515578 
		0 0 0.66362655 0 0 0.6515578 0 0 0.6515578 0 0 0.66362655 0 0 0.66362655 0 0 0.6515578 
		0 0 0.6515578 0 0 0.6515578 0 0 0.6515578 0 0 0.6515578 0 0 0.97378445 0 0 0.97242534 
		0 0 0.976946 0 0 0.97786587 0 0 0.976946 0 0 0.976946 0 0 0.97242534 0 0 0.97334456 
		0 0 0.97786587 0 0 0.97650623 0 0 0.97334456 0 0 0.97334456 0 0;
createNode mesh -n "polySurfaceShape1" -p "pCube4";
	rename -uid "1DE76AAD-4034-3092-61CE-718F721FF66E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[10]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[2]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:1]" "f[3]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[4]" "f[6]" "f[9]" "f[14:24]";
	setAttr ".pv" -type "double2" 0.49660566449165344 0.31249374151229858 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.31250626 0 0.61821133
		 0 0.38178861 0.041647777 0.375 0.31249374 0.62499994 1 0.61821133 0.93750626 0.625
		 0.70835221 0.38178861 0.20835221 0.375 0.81249374 0.38178861 0.70835221 0.61821133
		 0.81249374 0.625 0.041647777 0.61821133 0.31249374 0.61821133 0.43750626 0.375 0.43750623
		 0.38178861 0.54164779 0.625 0.54164779 0.375 0.9375062 0.875 0.041647777 0.875 0.20835221
		 0.62499994 0.20835221 0.18749374 0 0.31250626 0.25 0.18749374 0.25 0.375 0.31249374
		 0.61821133 0.31249374 0.61821133 0.43750626 0.375 0.43750623 0.375 0.31249374 0.64056921
		 0.31249779 0.64182734 0.43750185 0.375 0.43750623 0.61821133 0.31249374 0.61821133
		 0.43750626;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[1]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[9]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[11]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[14]" -type "float3" 0 -0.19961448 0 ;
	setAttr -s 26 ".vt[0:25]"  -0.47284567 -0.33340889 0.5 -0.50000036 -0.5 0.250025
		 0.4999997 -0.33340889 0.5 0.47284508 -0.5 0.250025 -0.47284567 -0.03969866 0.5 -0.50000036 -0.073689163 0.33119687
		 0.47284508 -0.073689163 0.33119684 0.4999997 -0.03969866 0.5 -0.50000036 -0.073689163 -0.33119687
		 -0.47284567 -0.03969866 -0.5 0.47284508 -0.073689163 -0.33119684 0.4999997 -0.03969866 -0.5
		 -0.47284567 -0.33340889 -0.5 -0.50000036 -0.5 -0.250025 0.47284508 -0.5 -0.250025
		 0.4999997 -0.33340889 -0.5 0.56884074 2.6017065 0.33119684 -0.50000036 2.6017065 0.33119687
		 0.5688408 2.6017065 -0.33119684 -0.50000036 2.6017065 -0.33119687 0.874542 4.049979687 0.33119684
		 -0.50000036 4.049979687 0.33119687 0.874542 4.049979687 -0.33119684 -0.50000036 4.049979687 -0.33119687
		 0.65875965 2.6017065 -0.33119684 0.65875965 2.6017065 0.33119684;
	setAttr -s 49 ".ed[0:48]"  0 1 0 1 3 0 3 2 0 2 0 0 0 4 0 4 5 0 5 1 0
		 3 14 0 14 15 0 15 2 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 9 0 9 12 0 12 13 0
		 13 8 0 8 10 0 11 9 0 12 15 0 14 13 0 2 7 0 8 5 0 11 15 0 1 13 0 6 16 0 5 17 0 16 17 0
		 10 18 0 18 16 0 8 19 0 19 18 0 19 17 0 16 20 0 17 21 0 20 21 0 18 22 0 22 20 0 19 23 0
		 23 22 0 23 21 0 18 24 0 16 25 0 24 25 0 24 22 0 25 20 0;
	setAttr -s 25 -ch 98 ".fc[0:24]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 2 0 1 11
		f 4 -1 4 5 6
		mu 0 4 0 2 7 3
		f 4 -3 7 8 9
		mu 0 4 4 5 10 6
		f 4 -6 10 11 12
		mu 0 4 3 7 20 12
		f 4 -12 13 14 15
		mu 0 4 12 20 16 13
		f 4 16 17 18 19
		mu 0 4 14 15 9 8
		f 4 -17 20 -15 21
		mu 0 4 15 14 13 16
		f 4 -19 22 -9 23
		mu 0 4 8 9 6 10
		f 4 -4 24 -11 -5
		mu 0 4 2 11 20 7
		f 4 -39 -41 -43 43
		mu 0 4 28 29 30 31
		f 4 -22 26 -23 -18
		mu 0 4 15 16 6 9
		f 4 -24 -8 -2 27
		mu 0 4 8 10 5 17
		f 4 -10 -27 -14 -25
		mu 0 4 11 18 19 20
		f 4 -28 -7 -26 -20
		mu 0 4 21 0 22 23
		f 4 -13 28 30 -30
		mu 0 4 3 12 25 24
		f 4 -16 31 32 -29
		mu 0 4 12 13 26 25
		f 4 -21 33 34 -32
		mu 0 4 13 14 27 26
		f 4 25 29 -36 -34
		mu 0 4 14 3 24 27
		f 4 -31 36 38 -38
		mu 0 4 24 25 29 28
		f 4 -47 47 40 -49
		mu 0 4 32 33 30 29
		f 4 -35 41 42 -40
		mu 0 4 26 27 31 30
		f 4 35 37 -44 -42
		mu 0 4 27 24 28 31
		f 4 -33 44 46 -46
		mu 0 4 25 26 33 32
		f 3 39 -48 -45
		mu 0 3 26 30 33
		f 3 -37 45 48
		mu 0 3 29 25 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group";
	rename -uid "3DB6390C-43DB-FB11-C314-98AD65A43FF8";
	setAttr ".t" -type "double3" -15.047848132794496 0 0 ;
	setAttr ".rp" -type "double3" -7.0373149821712566 2.4294628738138435 0 ;
	setAttr ".sp" -type "double3" -7.0373149821712566 2.4294628738138435 0 ;
createNode transform -n "pasted__pCube3" -p "group";
	rename -uid "4B7F6C2D-41D7-13B5-DF2B-AF9792EED607";
	setAttr ".t" -type "double3" -1.4851562225078574 0.17792924236794694 0 ;
	setAttr ".s" -type "double3" 1 0.47057058035648064 1 ;
createNode mesh -n "pasted__pCubeShape3" -p "pasted__pCube3";
	rename -uid "E8E77BCF-4D13-571E-2819-C1859FDE5DE1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.31285160779953003 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".pt[0:53]" -type "float3"  1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0;
createNode transform -n "pasted__pCube4" -p "group";
	rename -uid "D41D0BE9-4B21-89DC-6C2F-FA85CE62462B";
	setAttr ".t" -type "double3" -8.0746153332484347 0.17792924236794694 0 ;
	setAttr ".s" -type "double3" 1 0.47057058035648064 1 ;
createNode mesh -n "pasted__pCubeShape4" -p "pasted__pCube4";
	rename -uid "F8EB311F-42A1-F5FC-F690-57B5B5E26D20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[20]" "f[46]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1:2]" "f[27:28]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3]" "f[29]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[0]" "f[4:19]" "f[21:26]" "f[30:45]" "f[47:51]";
	setAttr ".pv" -type "double2" 0.31285160779953003 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.375 0.62498748
		 0.43381548 0.44118455 0.375 0.12501249 0.43381548 0.30881545 0.375 0.75 0.125 0 0.375
		 0 0.125 0.12501249 0.43381548 0.30881545 0.43381548 0.44118455 0.43381548 0.30881545
		 0.43381548 0.44118455 0.43381548 0.30881545 0.43381548 0.44118455 0.43381548 0.30881545
		 0.43381548 0.44118455 0.43381548 0.44118455 0.43381548 0.30881545 0.43381548 0.30881545
		 0.43381548 0.44118455 0.43381548 0.44118455 0.43381548 0.30881545 0.43381548 0.30881545
		 0.43381548 0.44118455 0.5 0 0.5 0.12501249 0.50000012 0.30881545 0.5 0.30881545 0.5
		 0.30881545 0.5 0.30881545 0.5 0.30881545 0.5 0.75 0.49994528 0.62498748 0.50070322
		 0.44118455 0.50051212 0.44118455 0.5004487 0.44118455 0.50003958 0.44118455 0.49999997
		 0.44118455 0.375 0.12501249 0.43381548 0.30881545 0.43381548 0.44118455 0.375 0.62498748
		 0.5 0.12501249 0.50000012 0.30881545 0.375 0 0.5 0 0.125 0 0.125 0.12501249 0.5 0.30881545
		 0.43381548 0.30881545 0.43381548 0.44118455 0.5 0.30881545 0.43381548 0.30881545
		 0.43381548 0.44118455 0.43381548 0.30881545 0.43381548 0.30881545 0.43381548 0.44118455
		 0.5 0.30881545 0.43381548 0.30881545 0.43381548 0.44118455 0.43381548 0.44118455
		 0.5 0.30881545 0.43381548 0.30881545 0.43381548 0.44118455 0.43381548 0.30881545
		 0.43381548 0.30881545 0.43381548 0.44118455 0.43381548 0.44118455 0.49994528 0.62498748
		 0.5 0.75 0.375 0.75 0.50070322 0.44118455 0.50051212 0.44118455 0.5004487 0.44118455
		 0.50003958 0.44118455 0.49999997 0.44118455;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".pt[0:53]" -type "float3"  1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 0 0 1.4305115e-06 
		0 0 1.4305115e-06 0 0 1.4305115e-06 0 0;
	setAttr -s 54 ".vt[0:53]"  0.11192274 -0.5 0.5 0.11192274 -0.5 -0.5
		 -0.3922658 4.9620867e-05 0.5 -0.28643847 0.49999991 0.39417219 -0.28643847 0.49999991 -0.39417219
		 -0.3922658 4.9620867e-05 -0.5 -0.28643847 3.10117292 0.39417219 -0.28643847 3.10117292 -0.39417219
		 -0.28643847 3.96220398 0.39417219 -0.28643847 3.96220398 -0.39417219 -0.28643847 9.52994537 0.39417219
		 -0.28643847 9.52994537 -0.39417219 0.11192274 10.069376945 0.39417219 0.11192274 10.069376945 -0.39417219
		 -3.18643618 3.10117292 0.39417219 -3.18643618 3.10117292 -0.39417219 -3.18643618 3.96220398 0.39417219
		 -3.18643618 3.96220398 -0.39417219 -3.18643618 9.52994537 0.39417219 -3.18643618 9.52994537 -0.39417219
		 -3.18643618 10.069376945 0.39417219 -3.18643618 10.069376945 -0.39417219 0.11192274 -0.5 0.5
		 0.11192274 4.9620867e-05 0.5 0.11192274 0.49999979 0.39417219 0.11192274 3.10117292 0.39417219
		 0.11192274 3.96220398 0.39417219 0.11192274 9.52994537 0.39417219 0.11192274 10.069376945 0.39417219
		 0.11192274 -0.5 -0.5 0.11192274 4.9620867e-05 -0.5 0.11192274 0.49999979 -0.39417219
		 0.11192274 3.10117292 -0.39417219 0.11192274 3.96220398 -0.39417219 0.11192274 9.52994537 -0.39417219
		 0.11192274 10.069376945 -0.39417219 0.61611128 4.9620867e-05 0.5 0.51028395 0.49999991 0.39417219
		 0.51028395 0.49999991 -0.39417219 0.61611128 4.9620867e-05 -0.5 0.51028395 3.10117292 0.39417219
		 0.51028395 3.10117292 -0.39417219 0.51028395 3.96220398 0.39417219 0.51028395 3.96220398 -0.39417219
		 0.51028395 9.52994537 0.39417219 0.51028395 9.52994537 -0.39417219 3.41028166 3.10117292 0.39417219
		 3.41028166 3.10117292 -0.39417219 3.41028166 3.96220398 0.39417219 3.41028166 3.96220398 -0.39417219
		 3.41028166 9.52994537 0.39417219 3.41028166 9.52994537 -0.39417219 3.41028166 10.069376945 0.39417219
		 3.41028166 10.069376945 -0.39417219;
	setAttr -s 104 ".ed[0:103]"  0 22 1 1 29 1 1 0 0 2 3 0 3 4 0 4 5 0 5 2 0
		 2 23 0 4 31 0 2 0 0 1 5 0 3 6 0 4 7 0 7 32 0 6 7 0 6 8 1 7 9 1 9 33 0 8 9 0 8 10 0
		 9 11 0 11 34 0 10 11 0 10 12 1 11 13 1 13 35 1 12 13 1 6 14 0 7 15 0 14 15 0 8 16 0
		 14 16 0 9 17 0 16 17 0 15 17 0 10 18 0 11 19 0 18 19 0 12 20 0 18 20 0 13 21 0 20 21 0
		 19 21 0 24 3 0 25 6 0 26 8 0 27 10 0 28 12 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1
		 27 28 1 30 5 0 29 30 1 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1 36 37 0 37 38 0 38 39 0
		 39 36 0 36 23 0 24 37 0 36 0 0 1 39 0 25 40 0 37 40 0 40 41 0 38 41 0 26 42 0 40 42 1
		 46 47 0 46 48 0 48 49 0 47 49 0 27 44 0 42 44 0 42 43 0 44 45 0 43 45 0 44 12 1 50 51 0
		 50 52 0 52 53 0 51 53 0 40 46 0 41 47 0 42 48 0 43 49 0 41 43 1 44 50 0 45 51 0 12 52 0
		 13 53 0 45 13 1 30 39 0 38 31 0 41 32 0 43 33 0 45 34 0;
	setAttr -s 52 -ch 208 ".fc[0:51]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 2 3 1 0
		f 4 -4 7 49 43
		mu 0 4 3 2 25 26
		f 4 0 48 -8 9
		mu 0 4 6 24 25 2
		f 4 2 -10 -7 -11
		mu 0 4 5 6 2 7
		f 4 -44 50 44 -12
		mu 0 4 3 26 27 8
		f 4 -5 11 14 -13
		mu 0 4 1 3 8 9
		f 4 -45 51 45 -16
		mu 0 4 8 27 28 10
		f 4 -30 31 33 -35
		mu 0 4 16 17 18 19
		f 4 -46 52 46 -20
		mu 0 4 10 28 29 12
		f 4 -19 19 22 -21
		mu 0 4 11 10 12 13
		f 4 -47 53 47 -24
		mu 0 4 12 29 30 14
		f 4 -38 39 41 -43
		mu 0 4 20 21 22 23
		f 4 -15 27 29 -29
		mu 0 4 9 8 17 16
		f 4 15 30 -32 -28
		mu 0 4 8 10 18 17
		f 4 18 32 -34 -31
		mu 0 4 10 11 19 18
		f 4 -17 28 34 -33
		mu 0 4 11 9 16 19
		f 4 -23 35 37 -37
		mu 0 4 13 12 21 20
		f 4 23 38 -40 -36
		mu 0 4 12 14 22 21
		f 4 26 40 -42 -39
		mu 0 4 14 15 23 22
		f 4 -25 36 42 -41
		mu 0 4 15 13 20 23
		f 4 -55 -56 -2 10
		mu 0 4 0 32 31 4
		f 4 -6 8 -57 54
		mu 0 4 0 1 33 32
		f 4 -58 -9 12 13
		mu 0 4 34 33 1 9
		f 4 -59 -14 16 17
		mu 0 4 35 34 9 11
		f 4 -60 -18 20 21
		mu 0 4 36 35 11 13
		f 4 -61 -22 24 25
		mu 0 4 37 36 13 15
		f 4 -65 -64 -63 -62
		mu 0 4 38 41 40 39
		f 4 -67 -50 -66 61
		mu 0 4 39 43 42 38
		f 4 -68 65 -49 -1
		mu 0 4 44 38 42 45
		f 4 68 64 67 -3
		mu 0 4 46 47 38 44
		f 4 70 -70 -51 66
		mu 0 4 39 49 48 43
		f 4 72 -72 -71 62
		mu 0 4 40 50 49 39
		f 4 74 -74 -52 69
		mu 0 4 49 52 51 48
		f 4 78 -78 -77 75
		mu 0 4 53 56 55 54
		f 4 80 -80 -53 73
		mu 0 4 52 58 57 51
		f 4 83 -83 -81 81
		mu 0 4 59 60 58 52
		f 4 84 -48 -54 79
		mu 0 4 58 62 61 57
		f 4 88 -88 -87 85
		mu 0 4 63 66 65 64
		f 4 90 -76 -90 71
		mu 0 4 50 53 54 49
		f 4 89 76 -92 -75
		mu 0 4 49 54 55 52
		f 4 91 77 -93 -82
		mu 0 4 52 55 56 59
		f 4 92 -79 -91 93
		mu 0 4 59 56 53 50
		f 4 95 -86 -95 82
		mu 0 4 60 63 64 58
		f 4 94 86 -97 -85
		mu 0 4 58 64 65 62
		f 4 96 87 -98 -27
		mu 0 4 62 65 66 67
		f 4 97 -89 -96 98
		mu 0 4 67 66 63 60
		f 4 -69 1 55 99
		mu 0 4 41 70 69 68
		f 4 -100 56 -101 63
		mu 0 4 41 68 71 40
		f 4 -102 -73 100 57
		mu 0 4 72 50 40 71
		f 4 -103 -94 101 58
		mu 0 4 73 59 50 72
		f 4 -104 -84 102 59
		mu 0 4 74 60 59 73
		f 4 -26 -99 103 60
		mu 0 4 75 67 60 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "D30E8A75-4B14-291E-1761-508443ADB8B3";
	setAttr ".t" -type "double3" -23.94233336495282 0.6885016893130258 0 ;
	setAttr ".s" -type "double3" 6.1349106118042407 1 0.66643113732786152 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "8B51748C-475E-C09E-7E31-9A99FCC5A642";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[3]" "f[5]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0:2]" "f[6]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[4]" "f[7]" "f[11:16]";
	setAttr ".pv" -type "double2" 0.45737394690513611 0.31249481439590454 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.31250626 0 0.38178861
		 0.041647777 0.375 0.31249374 0.38178861 0.20835221 0.375 0.81249374 0.38178861 0.70835221
		 0.375 0.43750623 0.38178861 0.54164779 0.375 0.9375062 0.18749374 0 0.31250626 0.25
		 0.18749374 0.25 0.375 0.31249374 0.375 0.43750623 0.375 0.31249374 0.375 0.43750623
		 0.5403325 0 0.5562529 0.93750626 0.55548793 0.20835221 0.5580315 0.43750626 0.55854809
		 0.70835221 0.5415929 0.43750626 0.5171209 0.43750387 0.55548787 0.041647777 0.55600446
		 0.31249374 0.55854803 0.54164779 0.55778307 0.81249374 0.53974789 0.31249374 0.51488429
		 0.31249589;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.66362655 0 0 0.6515578 
		0 0 0.66362655 0 0 0.6515578 0 0 0.6515578 0 0 0.66362655 0 0 0.66362655 0 0 0.6515578 
		0 0 0.6515578 0 0 0.6515578 0 0 0.6515578 0 0 0.6515578 0 0 0.97378445 0 0 0.97242534 
		0 0 0.976946 0 0 0.97786587 0 0 0.976946 0 0 0.976946 0 0 0.97242534 0 0 0.97334456 
		0 0 0.97786587 0 0 0.97650623 0 0 0.97334456 0 0 0.97334456 0 0;
	setAttr -s 24 ".vt[0:23]"  -0.47284603 -0.33340889 0.5 -0.50000048 -0.69961447 0.250025
		 -0.47284603 -0.19964927 0.5 -0.50000048 -0.058633804 0.33119687 -0.50000048 -0.058633804 -0.33119687
		 -0.47284603 -0.19964927 -0.5 -0.47284603 -0.33340889 -0.5 -0.50000048 -0.69961447 -0.250025
		 -0.50000048 2.6017065 0.33119687 -0.50000048 2.6017065 -0.33119687 -0.50000048 4.049979687 0.33119687
		 -0.50000048 4.049979687 -0.33119687 0.22501063 -0.69961447 0.25002497 0.22195101 -0.19964927 0.5
		 0.23212528 -0.058633804 -0.33119684 0.23419166 -0.33340889 -0.5 0.23212528 2.6017065 -0.33119684
		 0.23212528 4.049979687 -0.33119687 0.22195101 -0.33340889 0.49999994 0.22401714 -0.058633804 0.33119687
		 0.23419166 -0.1996493 -0.49999994 0.23113179 -0.69961447 -0.25002497 0.22401714 2.6017065 0.33119681
		 0.22401714 4.049979687 0.33119687;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 12 0 0 2 0 2 3 0 3 1 0 2 13 0 4 5 0
		 5 6 0 6 7 0 7 4 0 4 14 0 6 15 0 4 3 0 1 7 0 3 8 0 4 9 0 9 16 0 9 8 0 8 10 0 9 11 0
		 11 17 0 11 10 0 18 0 0 19 3 0 20 5 0 21 7 0 22 8 0 23 10 0 12 18 0 13 19 0 14 20 0
		 15 21 0 18 13 0 23 17 0 20 15 0 21 12 0 19 22 0 22 23 0 14 16 0 16 17 0;
	setAttr -s 17 -ch 68 ".fc[0:16]" -type "polyFaces" 
		f 4 0 1 28 22
		mu 0 4 1 0 16 23
		f 4 -1 2 3 4
		mu 0 4 0 1 3 2
		f 4 -4 5 29 23
		mu 0 4 2 3 18 24
		f 4 6 7 8 9
		mu 0 4 6 7 5 4
		f 4 -7 10 30 24
		mu 0 4 7 6 19 25
		f 4 -9 11 31 25
		mu 0 4 4 5 20 26
		f 4 -23 32 -6 -3
		mu 0 4 1 23 18 3
		f 4 -28 33 -21 21
		mu 0 4 14 28 22 15
		f 4 -25 34 -12 -8
		mu 0 4 7 25 20 5
		f 4 -26 35 -2 13
		mu 0 4 4 26 17 8
		f 4 -14 -5 -13 -10
		mu 0 4 9 0 10 11
		f 4 -24 36 26 -15
		mu 0 4 2 24 27 12
		f 4 12 14 -18 -16
		mu 0 4 6 2 12 13
		f 4 -27 37 27 -19
		mu 0 4 12 27 28 14
		f 4 17 18 -22 -20
		mu 0 4 13 12 14 15
		f 4 -39 -11 15 16
		mu 0 4 21 19 6 13
		f 4 -40 -17 19 20
		mu 0 4 22 21 13 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube5";
	rename -uid "6A4E963D-4F40-F74D-3A02-988DD913E39A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[10]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[2]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:1]" "f[3]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[4]" "f[6]" "f[9]" "f[14:24]";
	setAttr ".pv" -type "double2" 0.49660566449165344 0.31249374151229858 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.31250626 0 0.61821133
		 0 0.38178861 0.041647777 0.375 0.31249374 0.62499994 1 0.61821133 0.93750626 0.625
		 0.70835221 0.38178861 0.20835221 0.375 0.81249374 0.38178861 0.70835221 0.61821133
		 0.81249374 0.625 0.041647777 0.61821133 0.31249374 0.61821133 0.43750626 0.375 0.43750623
		 0.38178861 0.54164779 0.625 0.54164779 0.375 0.9375062 0.875 0.041647777 0.875 0.20835221
		 0.62499994 0.20835221 0.18749374 0 0.31250626 0.25 0.18749374 0.25 0.375 0.31249374
		 0.61821133 0.31249374 0.61821133 0.43750626 0.375 0.43750623 0.375 0.31249374 0.64056921
		 0.31249779 0.64182734 0.43750185 0.375 0.43750623 0.61821133 0.31249374 0.61821133
		 0.43750626;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[1]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[9]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.015055381 0 ;
	setAttr ".pt[11]" -type "float3" 0 -0.15995063 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.19961448 0 ;
	setAttr ".pt[14]" -type "float3" 0 -0.19961448 0 ;
	setAttr -s 26 ".vt[0:25]"  -0.47284567 -0.33340889 0.5 -0.50000036 -0.5 0.250025
		 0.4999997 -0.33340889 0.5 0.47284508 -0.5 0.250025 -0.47284567 -0.03969866 0.5 -0.50000036 -0.073689163 0.33119687
		 0.47284508 -0.073689163 0.33119684 0.4999997 -0.03969866 0.5 -0.50000036 -0.073689163 -0.33119687
		 -0.47284567 -0.03969866 -0.5 0.47284508 -0.073689163 -0.33119684 0.4999997 -0.03969866 -0.5
		 -0.47284567 -0.33340889 -0.5 -0.50000036 -0.5 -0.250025 0.47284508 -0.5 -0.250025
		 0.4999997 -0.33340889 -0.5 0.56884074 2.6017065 0.33119684 -0.50000036 2.6017065 0.33119687
		 0.5688408 2.6017065 -0.33119684 -0.50000036 2.6017065 -0.33119687 0.874542 4.049979687 0.33119684
		 -0.50000036 4.049979687 0.33119687 0.874542 4.049979687 -0.33119684 -0.50000036 4.049979687 -0.33119687
		 0.65875965 2.6017065 -0.33119684 0.65875965 2.6017065 0.33119684;
	setAttr -s 49 ".ed[0:48]"  0 1 0 1 3 0 3 2 0 2 0 0 0 4 0 4 5 0 5 1 0
		 3 14 0 14 15 0 15 2 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 9 0 9 12 0 12 13 0
		 13 8 0 8 10 0 11 9 0 12 15 0 14 13 0 2 7 0 8 5 0 11 15 0 1 13 0 6 16 0 5 17 0 16 17 0
		 10 18 0 18 16 0 8 19 0 19 18 0 19 17 0 16 20 0 17 21 0 20 21 0 18 22 0 22 20 0 19 23 0
		 23 22 0 23 21 0 18 24 0 16 25 0 24 25 0 24 22 0 25 20 0;
	setAttr -s 25 -ch 98 ".fc[0:24]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 2 0 1 11
		f 4 -1 4 5 6
		mu 0 4 0 2 7 3
		f 4 -3 7 8 9
		mu 0 4 4 5 10 6
		f 4 -6 10 11 12
		mu 0 4 3 7 20 12
		f 4 -12 13 14 15
		mu 0 4 12 20 16 13
		f 4 16 17 18 19
		mu 0 4 14 15 9 8
		f 4 -17 20 -15 21
		mu 0 4 15 14 13 16
		f 4 -19 22 -9 23
		mu 0 4 8 9 6 10
		f 4 -4 24 -11 -5
		mu 0 4 2 11 20 7
		f 4 -39 -41 -43 43
		mu 0 4 28 29 30 31
		f 4 -22 26 -23 -18
		mu 0 4 15 16 6 9
		f 4 -24 -8 -2 27
		mu 0 4 8 10 5 17
		f 4 -10 -27 -14 -25
		mu 0 4 11 18 19 20
		f 4 -28 -7 -26 -20
		mu 0 4 21 0 22 23
		f 4 -13 28 30 -30
		mu 0 4 3 12 25 24
		f 4 -16 31 32 -29
		mu 0 4 12 13 26 25
		f 4 -21 33 34 -32
		mu 0 4 13 14 27 26
		f 4 25 29 -36 -34
		mu 0 4 14 3 24 27
		f 4 -31 36 38 -38
		mu 0 4 24 25 29 28
		f 4 -47 47 40 -49
		mu 0 4 32 33 30 29
		f 4 -35 41 42 -40
		mu 0 4 26 27 31 30
		f 4 35 37 -44 -42
		mu 0 4 27 24 28 31
		f 4 -33 44 46 -46
		mu 0 4 25 26 33 32
		f 3 39 -48 -45
		mu 0 3 26 30 33
		f 3 -37 45 48
		mu 0 3 29 25 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "EFED1B71-4FB3-51BB-F398-08B1DFDAD7BA";
	setAttr ".t" -type "double3" -24.959539794515234 1.4392944859969319 0 ;
	setAttr ".s" -type "double3" 6.1172061099023871 3.1527357741984159 4.4478298455456349 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "F2585D42-4D88-36C4-18B0-78A63D647542";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46013966202735901 0.32087913900613785 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 45 ".pt[24:68]" -type "float3"  -0.040189344 -0.3982605 -0.046456322 
		0.040832557 -0.3982605 -0.046456322 -0.040832624 -0.3982605 0.046456333 0.040832557 
		-0.3982605 0.045255654 -0.038113084 -0.54955584 -0.044056274 0.038723055 -0.54955584 
		-0.044056274 -0.038723152 -0.54955584 0.044056278 0.038723055 -0.54955584 0.042917617 
		-0.052701477 -0.51886505 -0.06091952 0.053544998 -0.51886505 -0.06091952 -0.053544998 
		-0.51886505 0.06091952 0.053544998 -0.51886505 0.059345052 0.00035235184 -0.63145351 
		-0.050897952 0.00035235184 -0.63145351 -0.050897952 -0.0443842 -0.63145351 1.9862549e-09 
		-0.0443842 -0.63145351 1.9862549e-09 -1.5887677e-08 -0.63145351 0.050240215 -1.5887677e-08 
		-0.63145351 0.050240215 0.044736568 -0.63145351 -0.00065773597 0.044736568 -0.63145351 
		-0.00065773184 -0.044031799 -0.72314399 -0.050897952 -0.044736605 -0.72314399 0.050897952 
		0.044736568 -0.72314399 -0.050897952 0.044736568 -0.72314399 0.049582478 -0.022062751 
		-1.1984187 -0.025503285 -0.033661902 -1.3487339 -0.038911346 0.022415567 -1.1984513 
		-0.025502289 0.034201685 -1.3487339 -0.038911346 -0.022415726 -1.1984462 0.025502421 
		-0.034201719 -1.3487339 0.038911346 0.022416387 -1.1984199 0.024843909 0.034201685 
		-1.3487339 0.037905343 8.5223794e-05 -1.4640391 -0.00015869635 -0.030401291 -1.1956106 
		-0.035142235 0.0003105939 -1.2028553 -0.044781167 0.0003105939 -1.2028553 -0.044781167 
		0.030888343 -1.1956148 -0.035141733 -0.030888377 -1.1956115 0.035141796 -0.039050471 
		-1.2028549 1.9862549e-09 -0.039050471 -1.2028549 1.9862549e-09 0.039361056 -1.2028569 
		-0.00057887973 0.039361056 -1.2028569 -0.00057887973 0.030888729 -1.1956145 0.034233656 
		-1.5887677e-08 -1.2028564 0.044202287 -1.5887677e-08 -1.2028564 0.044202287;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "00D83C17-49E8-0F54-09D8-86A6623FC600";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "99855238-41D7-C7DA-9B1F-A0A2D2292107";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2A59BB1C-44C3-26CB-2D66-91A8708CE126";
createNode displayLayerManager -n "layerManager";
	rename -uid "1A5EAE1E-4A96-A1E5-43F6-54BDB935E8F0";
createNode displayLayer -n "defaultLayer";
	rename -uid "783A05CE-4945-800C-D732-338CAFCDFC6A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "496597D4-4CB8-A317-CE17-A0B63B23D623";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B351AF93-47F2-B27F-7167-2E8F591AF19F";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "6B356F3E-4EAC-DD0E-0646-3A82B85F13C1";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "CAB03CBA-4518-74AA-8155-08BACE865DC2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "E925E198-46E2-5833-9F24-2EA0F6BDBD06";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 54547;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.36880329251289368 0.5 -0.36880329251289368 ;
	setAttr ".cbx" -type "double3" 0.36880329251289368 0.5 0.36880329251289368 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "424FF633-4D82-A4F5-40A2-EFA7A7E7E79A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[5]" -type "float3" -0.11877829 0 0.11877829 ;
	setAttr ".tk[6]" -type "float3" 0.11877829 0 0.11877829 ;
	setAttr ".tk[8]" -type "float3" -0.11877829 0 -0.11877829 ;
	setAttr ".tk[10]" -type "float3" 0.11877829 0 -0.11877829 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "4EC541CD-4C44-B077-EF2D-35B52FF6E31B";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.212359 1.2966588 0 ;
	setAttr ".rs" 37633;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.5811622142791748 1.2966587543487549 -0.36880329251289368 ;
	setAttr ".cbx" -type "double3" -2.8435556888580322 1.2966587543487549 0.36880329251289368 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "A4FFACD6-47EE-BB09-7424-5D9F8E4ED1F7";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  -3.21235895 0.50900412 0 -3.21235895
		 0.26851112 0 -3.21235895 0.26851112 0 -3.21235895 0.50900412 0 -3.21235895 0.26851112
		 0 -3.21235895 0.26851112 0 -3.21235895 0.26851112 0 -3.21235895 0.26851112 0 -3.21235895
		 0.26851112 0 -3.21235895 0.26851112 0 -3.21235895 0.26851112 0 -3.21235895 0.26851112
		 0 -3.21235895 0.26851112 0 -3.21235895 0.50900412 0 -3.21235895 0.50900412 0 -3.21235895
		 0.26851112 0 -3.21235895 0.79665869 0 -3.21235895 0.79665869 0 -3.21235895 0.79665869
		 0 -3.21235895 0.79665869 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "8D94F051-4D4C-04C1-13E3-D48C82139AC7";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9280534 3.1210651 0 ;
	setAttr ".rs" 63442;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.2738127708435059 2.9927437305450439 -0.36880329251289368 ;
	setAttr ".cbx" -type "double3" -2.582294225692749 3.2493863105773926 0.36880329251289368 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "085DC8E5-4A69-DF13-DA70-8F84B7F5C107";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[20]" -type "float3" 0.26126152 1.696085 0 ;
	setAttr ".tk[21]" -type "float3" 0.3073495 1.9527276 0 ;
	setAttr ".tk[22]" -type "float3" 0.26126152 1.696085 0 ;
	setAttr ".tk[23]" -type "float3" 0.3073495 1.9527276 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "19F7E55A-46B2-96DE-7188-D888AF355F1B";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1197248 4.1074491 0 ;
	setAttr ".rs" 50701;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4031548500061035 3.8714761734008789 -0.36880329251289368 ;
	setAttr ".cbx" -type "double3" -1.8362946510314941 4.3434219360351562 0.36880329251289368 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "DFCA9202-4FA2-7268-99F5-4A93E88B8ADE";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[24]" -type "float3" 0.74599957 0.87873232 0 ;
	setAttr ".tk[25]" -type "float3" 0.87065792 1.0940356 0 ;
	setAttr ".tk[26]" -type "float3" 0.74599957 0.87873232 0 ;
	setAttr ".tk[27]" -type "float3" 0.87065792 1.0940356 0 ;
createNode polyMirror -n "polyMirror1";
	rename -uid "6FB7EA02-4DCC-EC04-F5C7-C083A5258AFF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -0.86205744743347168 4.8463096618652344 0 ;
	setAttr ".ad" 0;
	setAttr ".ma" 0;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 30;
	setAttr ".lnf" 59;
	setAttr ".pc" -type "double3" -0.86205744743347168 4.8463096618652344 0 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "F0FCD5C0-4DA4-0C75-BC75-989D4F6CA4B8";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[28]" -type "float3" 0.9742372 0.73886079 0 ;
	setAttr ".tk[29]" -type "float3" 0.9742372 0.73886079 0 ;
	setAttr ".tk[30]" -type "float3" 0.9742372 0.73886079 0 ;
	setAttr ".tk[31]" -type "float3" 0.9742372 0.73886079 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "2B43412B-4B80-2129-1675-F8ABC0EC436A";
	setAttr ".dc" -type "componentList" 2 "f[9]" "f[39]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "AFD45AC1-4205-E1D6-7284-D681E8E731C9";
	setAttr ".ics" -type "componentList" 2 "e[59]" "e[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 31;
	setAttr ".sv2" 61;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "34A250B1-4EBF-3DAE-DFCF-5EAE6213B06C";
	setAttr ".ics" -type "componentList" 2 "e[58]" "e[88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 30;
	setAttr ".sv2" 63;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "E95A33C3-47BE-C608-70BC-E59D58E39FF9";
	setAttr ".ics" -type "componentList" 2 "e[54]" "e[86]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 29;
	setAttr ".sv2" 60;
	setAttr ".d" 1;
createNode polyCube -n "polyCube2";
	rename -uid "1676CDAB-4877-B49C-D863-5A89AC6B2770";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "DB644A9B-46FF-AC44-DED0-D0992C8930E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:4]" "e[7:8]" "e[11]";
	setAttr ".ix" -type "matrix" 6.1349106118042407 0 0 0 0 1 0 0 0 0 0.66643113732786152 0
		 -6.4343528276919244 0.6885016893130258 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "28B3D351-4611-3FED-C93F-F2B0C795D4DD";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 6.1349106118042407 0 0 0 0 1 0 0 0 0 0.66643113732786152 0
		 -6.4343528276919244 0.6885016893130258 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.5176497 0.61481255 0 ;
	setAttr ".rs" 52766;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.5018095962707161 0.61481252658185515 -0.22071990967257071 ;
	setAttr ".cbx" -type "double3" -3.5334894469004059 0.61481252658185515 0.22071990967257071 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "2703A586-4685-B08D-AF2D-829729C5C68E";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -0.37310749 -1.8626451e-09 ;
	setAttr ".tk[5]" -type "float3" 0 -0.57368916 0.081171863 ;
	setAttr ".tk[6]" -type "float3" 0 -0.57368916 0.08117184 ;
	setAttr ".tk[7]" -type "float3" 0 -0.37310749 1.3038516e-08 ;
	setAttr ".tk[8]" -type "float3" 0 -0.57368916 -0.081171863 ;
	setAttr ".tk[9]" -type "float3" 0 -0.37310749 1.8626451e-09 ;
	setAttr ".tk[10]" -type "float3" 0 -0.57368916 -0.08117184 ;
	setAttr ".tk[11]" -type "float3" 0 -0.37310749 -1.3038516e-08 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "28BBFB7B-4634-CF30-4DE7-33A5C661A209";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 6.1349106118042407 0 0 0 0 1 0 0 0 0 0.66643113732786152 0
		 -6.4343528276919244 0.6885016893130258 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.5176501 3.2902081 0 ;
	setAttr ".rs" 59972;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.5018103276090518 3.2902081941348031 -0.22071990967257071 ;
	setAttr ".cbx" -type "double3" -3.5334898125695733 3.2902081941348031 0.22071990967257071 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "A40B637D-478B-6656-399B-57965641DA02";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[16]" -type "float3" 0 2.6753957 0 ;
	setAttr ".tk[17]" -type "float3" 0 2.6753957 0 ;
	setAttr ".tk[18]" -type "float3" 0 2.6753957 0 ;
	setAttr ".tk[19]" -type "float3" 0 2.6753957 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "C302B9BA-4013-BEB5-A33C-78AF59EC19FF";
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".ix" -type "matrix" 6.1349106118042407 0 0 0 0 1 0 0 0 0 0.66643113732786152 0
		 -6.4343528276919244 0.6885016893130258 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.2637444 4.0143447 0 ;
	setAttr ".rs" 50597;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.2637444435838425 3.2902081941348031 -0.22071988981137511 ;
	setAttr ".cbx" -type "double3" -3.2637444435838425 4.7384813760500863 0.22071988981137511 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "89C6795A-4157-468C-48D4-DAA666318048";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[16]" -type "float3" 0.043968961 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.043968961 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.043968961 1.4482733 0 ;
	setAttr ".tk[21]" -type "float3" 0 1.4482733 0 ;
	setAttr ".tk[22]" -type "float3" 0.043968961 1.4482733 0 ;
	setAttr ".tk[23]" -type "float3" 0 1.4482733 0 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "E31DC2BE-40F3-E383-205E-48AF10A153EA";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[29]" -type "float2" 0.044715732 3.5646151e-06 ;
	setAttr ".uvtk[35]" -type "float2" 6.6613381e-15 4.4988701e-06 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "9B97C1DA-450F-8A04-12D2-338F4AB812CB";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[27]";
	setAttr ".ix" -type "matrix" 6.1349106118042407 0 0 0 0 1 0 0 0 0 0.66643113732786152 0
		 -6.4343528276919244 0.6885016893130258 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak9";
	rename -uid "C2F85D40-4CD5-F2D3-A53A-1FB68584D684";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[16]" -type "float3" 0.052026715 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.05202673 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.35772797 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.1419456 2.3923349e-08 0 ;
	setAttr ".tk[25]" -type "float3" 0.1419456 2.3923349e-08 0 ;
	setAttr ".tk[26]" -type "float3" 0.35772792 -4.6740752e-08 0 ;
	setAttr ".tk[27]" -type "float3" 0.35772792 -4.6740752e-08 0 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "69F6B377-4285-9B96-74A8-CC86CB7F9775";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[30]" -type "float2" 0.044039592 -3.3296817e-06 ;
	setAttr ".uvtk[34]" -type "float2" 0.0031925037 -5.5254777e-06 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "36DD5653-4352-E2D3-4161-58AA6D739124";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 6.1349106118042407 0 0 0 0 1 0 0 0 0 0.66643113732786152 0
		 -6.4343528276919244 0.6885016893130258 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak10";
	rename -uid "D7AA3751-446D-7045-4785-938188F000F5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[22]" -type "float3" 0.35772794 0 0 ;
createNode polyCube -n "polyCube3";
	rename -uid "BBEAF9A0-4234-2046-F9B8-CB9F8E41BC14";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "F7102AE2-427F-4971-A48F-65B4F61EFD29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "8A949A68-4333-8229-A9A2-95AC5B1C4885";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 0.4132145 0 ;
	setAttr ".rs" 39182;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.229474903102119 0.4132144904738988 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.441130907292564 0.4132144904738988 0.39417219161987305 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak11";
	rename -uid "167B7554-40CF-F085-536D-95B30CD7BE9B";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0.10773326 0 0 0.10773326
		 0 0 0.10773326 0 0 0.10773326 0 0 0.10773326 0 0 -0.021700641 1.110223e-16 0.12943396
		 0.23716718 1.110223e-16 0.12943396 0.10773326 0 0 -0.021700641 1.110223e-16 -0.12943396
		 0.10773326 0 0 0.23716718 1.110223e-16 -0.12943396 0.10773326 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "0DDCDD13-4DBC-68A9-6805-D789316F8D1C";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 1.6372499 0 ;
	setAttr ".rs" 46062;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.229475111718376 1.6372499850200763 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.4411307284786297 1.6372499850200763 0.39417219161987305 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak12";
	rename -uid "DEE147B8-4937-EA34-6CF5-5C96467BC0D8";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 2.6011729 0 ;
	setAttr ".tk[13]" -type "float3" 0 2.6011729 0 ;
	setAttr ".tk[14]" -type "float3" 0 2.6011729 0 ;
	setAttr ".tk[15]" -type "float3" 0 2.6011729 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "224061A7-4257-22C8-E0FF-0A844E02339F";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 2.0424259 0 ;
	setAttr ".rs" 51324;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.229475111718376 2.0424257562955734 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.4411307284786297 2.0424257562955734 0.39417219161987305 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak13";
	rename -uid "7B762958-4AF5-9A0B-58B2-66A736E8AC08";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0.86103082 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.86103082 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.86103082 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.86103082 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "F373D8BA-41FC-AB0E-1FB5-33BE3CFBB40F";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 4.6624413 0 ;
	setAttr ".rs" 44256;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.229475111718376 4.6624411675579429 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.4411307284786297 4.6624411675579429 0.39417219161987305 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak14";
	rename -uid "802701F6-4470-76F2-A4C2-2E99BC01ECE4";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[20]" -type "float3" 0 5.5677419 0 ;
	setAttr ".tk[21]" -type "float3" 0 5.5677419 0 ;
	setAttr ".tk[22]" -type "float3" 0 5.5677419 0 ;
	setAttr ".tk[23]" -type "float3" 0 5.5677419 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "533E4C24-4D59-9BC5-0216-B9915AE2EFBD";
	setAttr ".ics" -type "componentList" 4 "f[15]" "f[17]" "f[23]" "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 3.2767658 0 ;
	setAttr ".rs" 53178;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 2.9000000953674316;
	setAttr ".cbn" -type "double3" -10.229475111718376 1.6372499850200763 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.4411307284786297 4.9162817954379801 0.39417219161987305 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "F55858C8-46D2-3816-7256-5BAFA2B63E58";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[24]" -type "float3" 0 0.53943163 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.53943163 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.53943163 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.53943163 0 ;
createNode polyCut -n "polyCut1";
	rename -uid "B924E89A-4ED7-8006-FB0A-5FA24130A394";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[0]" "f[3]" "f[6:11]" "f[14]" "f[16]" "f[18]" "f[20]";
	setAttr ".ix" -type "matrix" 6.1349106118042407 0 0 0 0 1 0 0 0 0 0.66643113732786152 0
		 -17.377474062220102 0.6885016893130258 0 1;
	setAttr ".pc" -type "double3" -13.777811829999999 11.993311500000001 39.402559869999997 ;
	setAttr ".ro" -type "double3" 176.77392592000001 -89.216793080000002 0 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "4917E85F-4A59-8AF2-4D7C-AA98ED74347D";
	setAttr ".dc" -type "componentList" 7 "f[2]" "f[4]" "f[12]" "f[15:16]" "f[19:20]" "f[22:33]" "f[35]";
createNode polyCut -n "polyCut2";
	rename -uid "3E00CD27-4C2D-2F30-A50E-EA9AF86B7E51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[0]" "f[2]" "f[4:9]" "f[11]" "f[13]" "f[15:16]";
	setAttr ".ix" -type "matrix" 6.1349106118042407 0 0 0 0 1 0 0 0 0 0.66643113732786152 0
		 -17.377474062220102 0.6885016893130258 0 1;
	setAttr ".pc" -type "double3" -9.2396124000000004 2.4235363099999998 -59.80207687 ;
	setAttr ".ro" -type "double3" -180 83.570872499999993 0 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "28D39C91-479D-DEED-1278-3D88BEC1FE62";
	setAttr ".dc" -type "componentList" 1 "f[15:26]";
createNode polyExtrudeFace -n "pasted__polyExtrudeFace12";
	rename -uid "DB8F8E90-4FCC-E8D2-0C05-2F888CF5CCBC";
	setAttr ".ics" -type "componentList" 4 "f[15]" "f[17]" "f[23]" "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 3.2767658 0 ;
	setAttr ".rs" 53178;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 2.9000000953674316;
	setAttr ".cbn" -type "double3" -10.229475111718376 1.6372499850200763 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.4411307284786297 4.9162817954379801 0.39417219161987305 ;
createNode polyTweak -n "pasted__polyTweak15";
	rename -uid "4B46D2FE-472F-97B9-D168-EDBD2885CD60";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0 0.53943163 0 0 0.53943163
		 0 0 0.53943163 0 0 0.53943163 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace11";
	rename -uid "4860734F-45F0-EC98-6606-8B982910A410";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 4.6624413 0 ;
	setAttr ".rs" 44256;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.229475111718376 4.6624411675579429 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.4411307284786297 4.6624411675579429 0.39417219161987305 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak14";
	rename -uid "D5110BF8-4921-C7E2-D604-C0BAB79051A3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 5.56774187 0 0 5.56774187
		 0 0 5.56774187 0 0 5.56774187 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace10";
	rename -uid "A4113BCC-4F88-0FC1-BE63-EDA2F61B0254";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 2.0424259 0 ;
	setAttr ".rs" 51324;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.229475111718376 2.0424257562955734 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.4411307284786297 2.0424257562955734 0.39417219161987305 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak13";
	rename -uid "F8D1635F-429E-256B-7105-7DA80A177386";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 0.86103082 0 0 0.86103082
		 0 0 0.86103082 0 0 0.86103082 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace9";
	rename -uid "51C435AD-4758-B354-62DD-ACB91E0BA189";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 1.6372499 0 ;
	setAttr ".rs" 46062;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.229475111718376 1.6372499850200763 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.4411307284786297 1.6372499850200763 0.39417219161987305 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak12";
	rename -uid "1B229FBB-49E2-9528-2BDE-C3B61EDAB848";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 2.60117292 0 0 2.60117292
		 0 0 2.60117292 0 0 2.60117292 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace8";
	rename -uid "9B65B6AB-48A3-9768-C7FB-1C93F9ED6F23";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.8353033 0.4132145 0 ;
	setAttr ".rs" 39182;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.229474903102119 0.4132144904738988 -0.39417219161987305 ;
	setAttr ".cbx" -type "double3" -9.441130907292564 0.4132144904738988 0.39417219161987305 ;
	setAttr ".raf" no;
createNode polyTweak -n "pasted__polyTweak11";
	rename -uid "AD3DC0F2-4F45-1F13-50B3-E0A181E42CA5";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0.10773326 0 0 0.10773326
		 0 0 0.10773326 0 0 0.10773326 0 0 0.10773326 0 0 -0.021700641 1.110223e-16 0.12943396
		 0.23716718 1.110223e-16 0.12943396 0.10773326 0 0 -0.021700641 1.110223e-16 -0.12943396
		 0.10773326 0 0 0.23716718 1.110223e-16 -0.12943396 0.10773326 0 0;
createNode polyBevel3 -n "pasted__polyBevel3";
	rename -uid "A913CD26-4C39-38ED-F811-C38B43DB25B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -9.9430361697628094 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "pasted__polyCube3";
	rename -uid "870A765E-4C18-6322-9DCD-1D9B0E0FF39D";
	setAttr ".cuv" 4;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "52600BDF-4F88-8D6A-D59A-D7B6C1111C60";
	setAttr ".version" -type "string" "5.4.8";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "1429CC27-4485-FC9E-D555-6C997DC045A4";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "FB05049F-4BA5-1432-9F33-D3826DC95772";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3031DAD3-429D-FBB4-DE67-8E95B5855F42";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "F4EDA813-4EB6-8D6A-4A95-3FA43C97C700";
createNode polyTweak -n "polyTweak16";
	rename -uid "F18ACC39-4CC6-FB3B-C736-808F6BA1C03A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[28]" -type "float3" 3.4207561 0 0.082112208 ;
	setAttr ".tk[29]" -type "float3" 3.4207561 0 -0.11684877 ;
	setAttr ".tk[30]" -type "float3" 3.4207561 0 0.082112208 ;
	setAttr ".tk[31]" -type "float3" 3.4207561 0 -0.11684877 ;
	setAttr ".tk[36]" -type "float3" 5.5959749 0 0.082112208 ;
	setAttr ".tk[37]" -type "float3" 5.5959749 0 -0.11684877 ;
	setAttr ".tk[38]" -type "float3" 5.5959749 0 0.082112208 ;
	setAttr ".tk[39]" -type "float3" 5.5959749 0 -0.11684877 ;
createNode polySplit -n "polySplit1";
	rename -uid "8F6B162D-4C06-A19D-75E4-BEB64FB87876";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.49999899 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483648 -2147483640 -2147483638 -2147483626 -2147483618 -2147483610 
		-2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "5E772CDE-4987-C4FE-1B48-E085D497EED0";
	setAttr -s 7 ".e[0:6]"  0.5 0.50021899 0.50531298 0.503869 0.50339001
		 0.50029898 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483647 -2147483633 -2147483634 -2147483622 -2147483614 -2147483606 
		-2147483598;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "9CAE2BE1-4FDA-C436-57A2-DCBBB54E0669";
	setAttr ".dc" -type "componentList" 10 "f[0]" "f[3:4]" "f[6:8]" "f[11:12]" "f[16]" "f[19:20]" "f[24]" "f[26:29]" "f[34:37]" "f[42:47]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "A3A6D74F-452D-335A-2EE1-29B06B51BEB3";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "F2E22ABA-49A9-9D82-E2BA-6CA0A135D619";
	setAttr ".dc" -type "componentList" 1 "f[11]";
createNode polyMirror -n "polyMirror2";
	rename -uid "123B3938-46D9-2330-7E34-3C9E8342FAAB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.47057058035648064 0 0 0 0 1 0 -24.990884302557305 0.17792924236794694 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -24.878962589801148 2.4294628738138435 0 ;
	setAttr ".ad" 0;
	setAttr ".ma" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 3.9028379917144775;
	setAttr ".cm" yes;
	setAttr ".fnf" 26;
	setAttr ".lnf" 51;
	setAttr ".pc" -type "double3" -24.878962589801148 2.4294628738138435 0 ;
createNode polyCube -n "polyCube4";
	rename -uid "0795D563-48FC-3D15-CE79-DD85DB6F4B23";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "14E99FF4-494B-0AA3-401B-2B8A24571764";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak17";
	rename -uid "237286BD-4782-E75C-567B-81AF41602178";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 -0.76991552 0 0 -0.76991552
		 0 0 -0.76991552 0 0 -0.76991552 0;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "05B0BD92-4E12-7849-F951-2DA557E8C34E";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.959541 0.28688636 0 ;
	setAttr ".rs" 50519;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.527019597584648 0.28688636387177602 -1.7327895784594685 ;
	setAttr ".cbx" -type "double3" -22.392061449901405 0.28688636387177602 1.7327895784594685 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "2506F3C0-4ABB-AE5A-46E6-24BC8D289D05";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.959541 5.0425696 0 ;
	setAttr ".rs" 54783;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.527019597584648 5.0425696258489285 -1.7327895784594685 ;
	setAttr ".cbx" -type "double3" -22.392061449901405 5.0425696258489285 1.7327895784594685 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak18";
	rename -uid "C73B8E53-4B08-A456-A78B-58887142E1E7";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 1.1138699 0 ;
	setAttr ".tk[13]" -type "float3" 0 1.1138699 0 ;
	setAttr ".tk[14]" -type "float3" 0 1.1138699 0 ;
	setAttr ".tk[15]" -type "float3" 0 1.1138699 0 ;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "1334BF7A-43FF-EB73-17CB-A58B1F5DEF14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[30]" "e[32]" "e[34:35]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak19";
	rename -uid "8E4D6AF9-4AB6-C7D5-EB2C-C09C8BF735E9";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[16]" -type "float3" 0.076204002 0.2112485 0.070732929 ;
	setAttr ".tk[17]" -type "float3" -0.076204002 0.2112485 0.070732929 ;
	setAttr ".tk[18]" -type "float3" 0.076204002 0.2112485 -0.070732929 ;
	setAttr ".tk[19]" -type "float3" -0.076204002 0.2112485 -0.070732929 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "08749EB0-4905-F630-55A6-0CAE77C5361A";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.939644 5.9444971 -0.019898459 ;
	setAttr ".rs" 54754;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.465694456987023 5.9444968745774016 -1.5597111243032986 ;
	setAttr ".cbx" -type "double3" -22.413594088214367 5.9444968745774016 1.5199142039182814 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "2737D83D-47F2-4C02-70EA-04903823A3CC";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.939644 6.7004623 -0.019898459 ;
	setAttr ".rs" 40872;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.14792214254765 6.7004621643513333 -1.3660055514971932 ;
	setAttr ".cbx" -type "double3" -22.731366402653741 6.7004621643513333 1.3262086311121759 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak20";
	rename -uid "B1839E20-4910-AA39-BE96-FF86164CEF5B";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[24]" -type "float3" -0.051128931 0.17706127 -0.043550581 ;
	setAttr ".tk[25]" -type "float3" 0.051947311 0.17706127 -0.043550581 ;
	setAttr ".tk[26]" -type "float3" -0.051947311 0.17706127 0.043550581 ;
	setAttr ".tk[27]" -type "float3" 0.051947311 0.17706127 0.042425003 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "8E1BC7D0-4EE6-4949-7045-4392588F9934";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.939644 10.335808 -0.019898459 ;
	setAttr ".rs" 52844;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.578947544209775 10.335807999058696 -1.628746244057077 ;
	setAttr ".cbx" -type "double3" -22.300341000991619 10.335807999058696 1.5889493236720598 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak21";
	rename -uid "1499C079-4BBD-0E40-EF6E-C1A173E733DD";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[28]" -type "float3" 0.069350913 0.85146594 0.059071671 ;
	setAttr ".tk[29]" -type "float3" -0.070460975 0.85146594 0.059071671 ;
	setAttr ".tk[30]" -type "float3" 0.070460975 0.85146594 -0.059071671 ;
	setAttr ".tk[31]" -type "float3" -0.070460975 0.85146594 -0.057544947 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "1D30A0BF-4081-AB3A-6D62-ACAD44E7DCAD";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.939644 11.923674 -0.019898459 ;
	setAttr ".rs" 65156;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.578946450368083 11.923673213526399 -1.628746244057077 ;
	setAttr ".cbx" -type "double3" -22.300340636377719 11.923673213526399 1.5889493236720598 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak22";
	rename -uid "77DE77F9-4B83-3BF9-8F7E-16BE08675E42";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[28:35]" -type "float3"  0 -0.42566365 0 0 -0.42566365
		 0 0 -0.42566365 0 0 -0.42566365 0 0 0.37190744 0 0 0.37190744 0 0 0.37190744 0 0
		 0.37190744 0;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "FB51C073-495A-5654-D1BA-F6AEC07D6FF8";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.939644 12.988336 -0.019898459 ;
	setAttr ".rs" 36638;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.578946450368083 12.988335896204507 -1.628746244057077 ;
	setAttr ".cbx" -type "double3" -22.300340636377719 12.988335896204507 1.5889493236720598 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak23";
	rename -uid "E6EF9462-4E60-38E7-0541-D4A1F062A063";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[36]" -type "float3" 0 0.24936375 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.24936375 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.24936375 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.24936375 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "B7774328-48BB-9089-DA83-2FBB9958787A";
	setAttr ".ics" -type "componentList" 1 "f[34:37]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.939644 12.456006 -0.019898459 ;
	setAttr ".rs" 35095;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.725892778603157 11.894037156298143 -1.7183207306145447 ;
	setAttr ".cbx" -type "double3" -22.153394308142644 13.017975007227216 1.6785238102295275 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak24";
	rename -uid "E52D542F-41C6-A5D8-F155-5986F7EBEDE9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[32:43]" -type "float3"  0.023643365 -0.0069418112
		 0.020138931 -0.02402181 -0.0069418112 0.020138931 0.02402181 -0.0069418112 -0.020138931
		 -0.02402181 -0.0069418112 -0.019618435 0.023643365 0.0069418112 0.020138931 -0.02402181
		 0.0069418112 0.020138931 0.02402181 0.0069418112 -0.020138931 -0.02402181 0.0069418112
		 -0.019618435 -0.036617152 -0.061222076 -0.031189715 0.037203252 -0.061222076 -0.031189715
		 -0.037203252 -0.061222076 0.031189715 0.037203252 -0.061222076 0.030383619;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "625ED753-4ED1-18B9-8DDB-189B2AAAFFC9";
	setAttr ".ics" -type "componentList" 4 "f[43]" "f[45]" "f[47]" "f[49]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 4.2695140955108117 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.939646 13.073299 -0.019898459 ;
	setAttr ".rs" 64330;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -28.27449485908101 13.017975007227216 -2.0527322796514165 ;
	setAttr ".cbx" -type "double3" -21.604795873803763 13.128624159549513 2.012935359266399 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak25";
	rename -uid "29CADEE8-4870-7107-1259-539C495D531B";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[44]" -type "float3" 0.088268578 -0.025916088 0.075185314 ;
	setAttr ".tk[45]" -type "float3" -0.089681506 -0.025916088 0.075185314 ;
	setAttr ".tk[46]" -type "float3" 0.088268578 0.025916088 0.075185314 ;
	setAttr ".tk[47]" -type "float3" -0.089681506 0.025916088 0.075185314 ;
	setAttr ".tk[48]" -type "float3" 0.089681357 -0.025916088 -0.075185314 ;
	setAttr ".tk[49]" -type "float3" 0.089681357 0.025916088 -0.075185314 ;
	setAttr ".tk[50]" -type "float3" -0.089681506 -0.025916088 -0.073242195 ;
	setAttr ".tk[51]" -type "float3" -0.089681506 0.025916088 -0.073242195 ;
createNode polyExtrudeVertex -n "polyExtrudeVertex1";
	rename -uid "6AA88BE3-4930-4874-30B9-BABC8A63A526";
	setAttr ".ics" -type "componentList" 3 "vtx[52:53]" "vtx[56]" "vtx[58]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".w" 0.5;
createNode polyTweak -n "polyTweak26";
	rename -uid "1E355A72-470E-1678-A903-F4A723C84552";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk[0:59]" -type "float3"  0.19684871 0 0 -0.066277847
		 0 0 0.19684871 0 0 -0.066277847 0 0 0.19684871 0 0 0.17572342 0 0 -0.045152579 0
		 0 -0.066277847 0 0 0.17572342 0 0 0.19684871 0 0 -0.045152579 0 0 -0.066277847 0
		 0 -0.045152579 0 0 0.17572342 0 0 -0.045152579 0 0 0.17572342 0 0 -0.042514574 0
		 0 -0.055179194 0 0 0.18575014 0 0 0.17308562 0 0 -0.04422633 0 0 -0.055179194 0 0
		 0.17308562 0 0 0.18575014 0 0 0.0018573173 -0.025142021 0.035739865 0.12800354 -0.025142021
		 0.035739865 0.00085570151 -0.025142021 -0.035739865 0.12800354 -0.025142021 -0.034816161
		 -0.056739397 0.025142044 -0.01090059 0.18753798 0.025142044 -0.01090059 -0.058678925
		 0.025142021 0.01090059 0.18753798 0.025142044 0.010618879 -0.082357928 -0.46090683
		 -0.033322617 0.21356668 -0.46090683 -0.033322617 -0.08470732 -0.46090683 0.033322617
		 0.21356668 -0.46090683 0.032461382 -0.053530537 -0.2493941 0 0.18427788 -0.2493941
		 0 -0.055418588 -0.2493941 0 0.18427788 -0.2493941 0 -0.037674304 -0.2493941 0 0.16816784
		 -0.2493941 0 -0.039308701 -0.2493941 0 0.16816784 -0.2493941 0 -0.076756299 -0.11087494
		 0 0.20787548 -0.11087494 0 -0.076756299 -0.2493941 0 0.20787548 -0.2493941 0 -0.079016119
		 -0.11087494 0 -0.079016119 -0.2493941 0 0.20787548 -0.11087494 0 0.20787548 -0.2493941
		 0 -0.053530537 -0.12191579 0 0.18427788 -0.12191579 0 0.20787548 -0.19209665 0 -0.076756299
		 -0.19209665 0 -0.055418588 -0.12191579 0 -0.079016119 -0.19209665 0 0.18427788 -0.12191579
		 0 0.20787548 -0.19209665 0;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "0F056C92-4E2E-FC72-A248-BCBDE143E38A";
	setAttr ".ics" -type "componentList" 7 "f[43]" "f[45]" "f[47]" "f[49]" "f[60:61]" "f[64]" "f[69]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.545515 11.140826 -0.019898459 ;
	setAttr ".rs" 40100;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -26.80075356187443 11.099589066681457 -1.88552657141081 ;
	setAttr ".cbx" -type "double3" -22.290278022042834 11.182063780933071 1.8457296510257928 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak27";
	rename -uid "EED8BDE2-419F-049D-B8E8-E987EE36BC7F";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[52]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[74]" -type "float3" 0 0.024452787 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.024452787 0 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "636F0CAE-493F-D8AB-530D-069BE3ACE4B2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" -0.019466344 -5.8564265e-14 ;
	setAttr ".uvtk[83]" -type "float2" 8.3371715e-06 4.2466031e-14 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "C93D14C5-4BB6-F88C-2A63-62B38AD8CA78";
	setAttr ".ics" -type "componentList" 2 "vtx[62]" "vtx[77]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak28";
	rename -uid "19C06159-45A2-5CF1-57EA-609E5AD4685E";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[76]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[77]" -type "float3" 0 -8.9406967e-08 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[79]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[82]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[83]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[84]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[85]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[87]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[88]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[89]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[90]" -type "float3" 0 0.24641147 0 ;
	setAttr ".tk[91]" -type "float3" 0 0.24641147 0 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "E2EE5354-4611-0A5B-FD5E-FE83BDFBEDAF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" -0.014141425 -8.9372953e-15 ;
	setAttr ".uvtk[91]" -type "float2" 0.014480193 -7.2759576e-12 ;
	setAttr ".uvtk[92]" -type "float2" 1.1004422e-07 1.1711766e-05 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "881D3503-4502-FA2B-5C8A-2090B0FBB9CC";
	setAttr ".ics" -type "componentList" 2 "vtx[62]" "vtx[86]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak29";
	rename -uid "2CF14EDF-4C0C-E90B-4416-B4A28F3EC323";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[86]" -type "float3" 0 -0.24641156 0 ;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "D1149EC9-4EA1-ED8E-660B-D58E19488666";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[77]" -type "float2" 0.019621175 0.00021258813 ;
	setAttr ".uvtk[96]" -type "float2" -8.1688277e-06 -8.8497572e-08 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "E631BD71-4606-2F16-1876-B9BBE740EE83";
	setAttr ".ics" -type "componentList" 2 "vtx[71]" "vtx[89]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak30";
	rename -uid "BC4F7515-45C5-25BC-DF62-CAAC0DC1D1BF";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[89]" -type "float3" 0 -0.24641156 0 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "A04B89F5-4A70-0EFA-DD9E-EAB4ADD196E6";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[77]" -type "float2" 0.014253719 0.00015443655 ;
	setAttr ".uvtk[86]" -type "float2" 8.3632613e-06 9.0603898e-08 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "CFEEDD9E-49AA-8E60-B38D-8682A7F5D3EE";
	setAttr ".ics" -type "componentList" 2 "vtx[71]" "vtx[80]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak31";
	rename -uid "B0A87BFD-4ADE-9CC0-F325-FDBB6FD71209";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[80]" -type "float3" 0 -0.24641156 0 ;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "8B7CC1E8-4FD7-4F67-BC6D-5C9528C1FB4A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[73]" -type "float2" -0.00018894253 -0.020108692 ;
	setAttr ".uvtk[80]" -type "float2" 5.7691074e-12 -9.1525271e-06 ;
	setAttr ".uvtk[84]" -type "float2" -4.5155069e-08 -4.8057263e-06 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "21703672-418D-B52B-9B42-2597EF151B48";
	setAttr ".ics" -type "componentList" 2 "vtx[67]" "vtx[78]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak32";
	rename -uid "A57F0AF6-485C-01C1-32B1-789753ACB987";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[78]" -type "float3" 0 -0.24641156 0 ;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "01BE6DE4-42FB-7B7A-9945-18BD71D3D28D";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[73]" -type "float2" -7.867442e-05 -0.0083733825 ;
	setAttr ".uvtk[80]" -type "float2" 5.7691074e-12 -6.862525e-06 ;
	setAttr ".uvtk[84]" -type "float2" -1.1495083e-07 -1.2852349e-05 ;
	setAttr ".uvtk[89]" -type "float2" 5.7691074e-12 -1.6011838e-05 ;
	setAttr ".uvtk[92]" -type "float2" -0.00013701235 -0.014582183 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "19131F31-47C3-942C-EBA4-C3B6F113C805";
	setAttr ".ics" -type "componentList" 2 "vtx[67]" "vtx[80]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak33";
	rename -uid "8874C4D0-4660-BC0E-621E-728BAAF62495";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[80]" -type "float3" 0 -0.24641156 0 ;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "62D96940-4095-8DEC-6E4E-F9BEC70CB416";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[69]" -type "float2" 0.0036101753 0 ;
	setAttr ".uvtk[80]" -type "float2" 1.7392122e-08 0.019858234 ;
	setAttr ".uvtk[93]" -type "float2" 6.7612582e-14 4.8779666e-06 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "31554C70-4C9E-B7B5-82F8-4D9877A67715";
	setAttr ".ics" -type "componentList" 2 "vtx[74]" "vtx[84]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak34";
	rename -uid "ED3DEF2F-49A9-2726-A88C-6DA3D52C2D42";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[84]" -type "float3" 0 -0.24641156 2.9773219e-08 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "B6514ADB-4215-E554-6292-2C9CA0F0C631";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[69]" -type "float2" 0.0027065708 0 ;
	setAttr ".uvtk[80]" -type "float2" 4.4408921e-15 0.0057730065 ;
	setAttr ".uvtk[90]" -type "float2" -0.0081634689 0 ;
	setAttr ".uvtk[93]" -type "float2" 2.1538327e-14 1.2569035e-05 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "278CA612-4155-A149-CE74-968C64644DD1";
	setAttr ".ics" -type "componentList" 2 "vtx[74]" "vtx[81]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak35";
	rename -uid "71E279CD-439D-E80C-04B8-A5B5FD3B4781";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[81]" -type "float3" 0 -0.24641156 0 ;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "81CCE670-4650-4EFC-0CDF-B289BF7B2F34";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[59]" -type "float2" -0.0061359764 1.3905543e-13 ;
	setAttr ".uvtk[60]" -type "float2" -0.0028428657 -0.0011865897 ;
	setAttr ".uvtk[62]" -type "float2" 6.5374006e-05 0.0069575319 ;
	setAttr ".uvtk[70]" -type "float2" -0.0008910608 -0.0021744699 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "1F2C57C8-4913-AEAA-4CC9-A583F40D0B8A";
	setAttr ".ics" -type "componentList" 2 "vtx[54]" "vtx[64]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak36";
	rename -uid "83AD8468-4289-0168-87F8-4A8B952FC66D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[64]" -type "float3" -0.033042431 -0.046584845 0.037592679 ;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "F0EA8528-4C67-42DB-7BA7-68AE14C455B2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[65]" -type "float2" -0.0016045006 0.0024304294 ;
	setAttr ".uvtk[78]" -type "float2" -0.0042607062 0.0044697267 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "15487BB1-4EBF-B5A9-D11F-8D925344A4A8";
	setAttr ".ics" -type "componentList" 2 "vtx[59]" "vtx[72]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak37";
	rename -uid "E8C51A50-49D7-D1CA-B45C-8F81C3498996";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[72]" -type "float3" -0.033042431 -0.046584845 -0.036621124 ;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "C0F28946-408D-86FB-5E58-2E977B5223C1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[57]" -type "float2" -0.0008920554 0.00096986227 ;
	setAttr ".uvtk[65]" -type "float2" 0.001292942 -0.0010624191 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "9405EC0A-43E9-6EE6-CE96-A58B2066A1DC";
	setAttr ".ics" -type "componentList" 2 "vtx[51]" "vtx[59]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak38";
	rename -uid "35E58112-41F6-5DF6-8744-8BBA05F2B483";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[59]" -type "float3" 0 -0.057297707 0 ;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "B4F121C2-4FBA-FC1D-6D2C-6D8F8ABA1BEA";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[53]" -type "float2" -0.00058782526 -0.00044300299 ;
	setAttr ".uvtk[59]" -type "float2" 7.9378478e-05 5.0620619e-13 ;
	setAttr ".uvtk[60]" -type "float2" 0.0029719467 0.00050391315 ;
	setAttr ".uvtk[62]" -type "float2" -1.1961796e-06 -0.00012753709 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "038E12C2-4A47-9528-A161-24A67BA794DE";
	setAttr ".ics" -type "componentList" 2 "vtx[47]" "vtx[54]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak39";
	rename -uid "2B2B715C-4F4D-AA7E-1BE4-5FA076D41B61";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[54]" -type "float3" 0 -0.057297707 0 ;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "5EB33A1C-49D4-3D7C-EADF-2A88BA23A0A0";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[60]" -type "float2" 0.0016728278 -0.0025338412 ;
	setAttr ".uvtk[68]" -type "float2" 0.0047568972 -0.0051911981 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "AF13FDA9-45EE-8720-96BA-0F9A55CB9539";
	setAttr ".ics" -type "componentList" 2 "vtx[54]" "vtx[62]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak40";
	rename -uid "343EE883-4F11-E98E-E6D1-2CB6FB11C87E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[62]" -type "float3" 0.032521486 -0.046584845 0.037592679 ;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "1E0259B3-4FEA-C601-A931-CCB5E29D1172";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[52]" -type "float2" 0.0009555032 -0.0011650759 ;
	setAttr ".uvtk[60]" -type "float2" -0.0013597655 0.00093376695 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "98561673-47B2-0997-F326-EFAD3749A6B2";
	setAttr ".ics" -type "componentList" 2 "vtx[46]" "vtx[54]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak41";
	rename -uid "7D0B5360-4A45-A9B1-B495-38B713A0897B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[54]" -type "float3" 0 -0.057297707 0 ;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "EE38CC9E-4A20-6AB4-7C0F-9CA6C2686A16";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[53]" -type "float2" 7.0614915e-05 -0.0072290036 ;
	setAttr ".uvtk[61]" -type "float2" 0.0022230514 0.0011402786 ;
	setAttr ".uvtk[70]" -type "float2" 0.0029081956 0.0029402161 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "320833E0-49FE-6C13-E0A1-12A09AA133BB";
	setAttr ".ics" -type "componentList" 2 "vtx[55]" "vtx[64]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak42";
	rename -uid "09CFD389-4B92-80C7-CB3F-6A9EC2EA37F4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[64]" -type "float3" 0.033041954 -0.046584845 -0.037592649 ;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "9E742E44-4514-C4FC-AE96-D388439BEAEC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[53]" -type "float2" 5.8743128e-05 -9.5361902e-05 ;
	setAttr ".uvtk[55]" -type "float2" 0.00077181187 0.00059796445 ;
	setAttr ".uvtk[61]" -type "float2" -0.0025833978 -0.0012848878 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "A179DACB-463B-02DF-384F-16B18ACDD332";
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[55]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak43";
	rename -uid "A5486E4C-491E-3C8A-B6EF-1FBCA228FA35";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[55]" -type "float3" 0 -0.057297707 0 ;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "AAACD93B-448C-AEE3-8658-20A3C0DAA1BC";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[45]" -type "float2" 0.0061934656 -0.0074811312 ;
	setAttr ".uvtk[49]" -type "float2" 0.0024634572 -0.0019993058 ;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "9ED992B2-4310-8DB2-9155-D0A8D0DCDDD0";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[43]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak44";
	rename -uid "36860521-481B-3D36-2A78-0FACC662B97B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[39]" -type "float3" 0.045115471 -0.068163395 0.050002038 ;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "AB8D4F40-48D6-BF53-28FD-46B35B79CB22";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[42]" -type "float2" 0.0082531935 0.0050251284 ;
	setAttr ".uvtk[46]" -type "float2" 0.0034399016 -0.00040910192 ;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "FC3BA900-44F6-CB07-9ADA-4EA516DA73C3";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[41]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak45";
	rename -uid "8CE6C1D1-4342-50BE-42A8-93AE9F3F14CE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[37]" -type "float3" 0.045115471 -0.068163395 -0.051328629 ;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "42B5CD37-4FA8-E946-F1A5-03BB8C31F493";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[42]" -type "float2" 0.0014919508 0.00022189894 ;
	setAttr ".uvtk[61]" -type "float2" 0.0083790272 0.0042215995 ;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "2F88B994-4954-7510-7455-2AB3FBD6DB09";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[55]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak46";
	rename -uid "B331C857-4889-56F2-B74D-5F85D58240C5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[55]" -type "float3" 0.045115471 -0.15635562 -0.051328629 ;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "78ADF885-47FB-F72E-D1DC-0E8CE1E3B0F5";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[45]" -type "float2" 0.0013802426 -0.00063898973 ;
	setAttr ".uvtk[66]" -type "float2" 0.005446306 -0.011375103 ;
createNode polyMergeVert -n "polyMergeVert22";
	rename -uid "FDABE76B-4746-2FED-0200-8DBA41F0ECBA";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[60]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak47";
	rename -uid "B5F43C1F-4871-1BDB-9916-7084A4E907E0";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[60]" -type "float3" 0.045115471 -0.15635562 0.050002038 ;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "0EB22B68-4D7F-5388-ADCE-E79E290BD308";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[45]" -type "float2" 0.00064384204 0.00010983994 ;
	setAttr ".uvtk[59]" -type "float2" 0.00733029 -0.007739081 ;
createNode polyMergeVert -n "polyMergeVert23";
	rename -uid "00D19B66-4A32-62C6-3262-4FA3D1DDE97E";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[53]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak48";
	rename -uid "8F2C01DE-4C7F-5B4E-8A64-1FBC9B667782";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[53]" -type "float3" 0.045115471 -0.22009444 0.050002038 ;
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "466D86C0-492E-1509-8AE5-7AA11F58E46E";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[42]" -type "float2" 0.00033820033 -0.00093398016 ;
	setAttr ".uvtk[51]" -type "float2" 0.0090942886 -0.0061130989 ;
	setAttr ".uvtk[53]" -type "float2" 0.00019291419 -0.0091308895 ;
	setAttr ".uvtk[57]" -type "float2" 0.013911682 0.0033826609 ;
createNode polyMergeVert -n "polyMergeVert24";
	rename -uid "E1A60C12-4B11-90C8-DA45-219D539A817C";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[51]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak49";
	rename -uid "81850A5F-4EF8-046F-6B4C-2ABBA399C31B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[51]" -type "float3" 0.045115471 -0.22009444 -0.051328629 ;
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "1C9797ED-492E-A78E-CED9-CAA3FAB070E9";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[43]" -type "float2" 0.0034745145 -0.0027839656 ;
	setAttr ".uvtk[58]" -type "float2" 0.00049402338 0.0012575461 ;
createNode polyMergeVert -n "polyMergeVert25";
	rename -uid "14B5E5AD-48BC-14E5-6C02-5B9573DC4131";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[52]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak50";
	rename -uid "BAFCAA3B-47A0-8D7D-4066-51BCE5938C31";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[52]" -type "float3" 0 -0.088192225 0 ;
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "CB07869A-4178-C3FD-AD27-FEADE9AEC46C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[43]" -type "float2" -0.0076834927 0.0088262921 ;
	setAttr ".uvtk[46]" -type "float2" 0.0003063523 0.0035390933 ;
createNode polyMergeVert -n "polyMergeVert26";
	rename -uid "1060844A-4469-F99A-9E8F-09A4456022AB";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[40]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak51";
	rename -uid "7801468E-4E92-5755-2711-69BB56A6B361";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[36]" -type "float3" -0.044404268 -0.068163395 -0.051328629 ;
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "B8FC7A3C-4938-F8F7-48BD-7992822DDCC3";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[43]" -type "float2" 0.00015591226 0.0013279609 ;
	setAttr ".uvtk[55]" -type "float2" -0.0053180801 0.0060473536 ;
createNode polyMergeVert -n "polyMergeVert27";
	rename -uid "ADFCAB8F-436E-27B7-8C5D-D8ADDF93BCDE";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[49]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak52";
	rename -uid "6E0D711C-4F59-BEE3-E91E-13B99CB64266";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[49]" -type "float3" -0.044404268 -0.22009444 -0.051328629 ;
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "F7C5FE7F-43CA-0BBD-D891-D48524D7527C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[44]" -type "float2" -0.0087915668 -0.004632439 ;
	setAttr ".uvtk[46]" -type "float2" -0.00082971726 -0.00069667533 ;
createNode polyMergeVert -n "polyMergeVert28";
	rename -uid "0545D139-4149-CA63-861A-EFB8523CF32D";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[40]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak53";
	rename -uid "CA18102A-4D56-304E-D8BB-13B91DE2B7A0";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[38]" -type "float3" -0.045114994 -0.068163395 0.051328629 ;
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "9A3E9E5E-42A2-B64A-3EC8-3B91A7B979A8";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[44]" -type "float2" -0.0021292623 -0.00034119072 ;
	setAttr ".uvtk[57]" -type "float2" -0.010781221 -0.0030968669 ;
createNode polyMergeVert -n "polyMergeVert29";
	rename -uid "DD280F85-4E0D-FC6B-093D-379C03928962";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[51]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak54";
	rename -uid "ADA05068-4656-A74D-E1AC-61A554094BC7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[51]" -type "float3" -0.045114994 -0.15635562 0.051328629 ;
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "360E5007-4B2D-E5DC-04D1-2BA83439A8AE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[42]" -type "float2" 0.0060396628 0.012255641 ;
	setAttr ".uvtk[44]" -type "float2" -0.00078675785 0.00072783296 ;
	setAttr ".uvtk[54]" -type "float2" -0.0086805783 -0.0090225432 ;
createNode polyMergeVert -n "polyMergeVert30";
	rename -uid "BD792061-4738-6ED2-6A55-808B6F6F9C03";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[48]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak55";
	rename -uid "A98E619D-4638-E8BB-221E-1A84FB4D368C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[48]" -type "float3" -0.045114994 -0.22009444 0.051328629 ;
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "D4FCDA21-46B5-56F9-9E42-55BB97CE388F";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[65]" -type "float2" -0.002391434 -0.0018006108 ;
	setAttr ".uvtk[67]" -type "float2" -0.002115285 -0.0027986888 ;
	setAttr ".uvtk[68]" -type "float2" 3.636585e-06 2.7185746e-05 ;
	setAttr ".uvtk[69]" -type "float2" -0.0011719518 0.0081507033 ;
createNode polyMergeVert -n "polyMergeVert31";
	rename -uid "18DB0631-45F0-19E5-5942-0B8E8E45FB45";
	setAttr ".ics" -type "componentList" 1 "vtx[58:59]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak56";
	rename -uid "923F5772-45C8-0A61-A2B3-D19D7164062A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[58:59]" -type "float3"  -0.033041716 0.022132158 0.037592679
		 0 0 0;
createNode polyTweakUV -n "polyTweakUV32";
	rename -uid "B06B2A03-464E-4825-885B-B0BA2803051A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[62]" -type "float2" -0.0030324578 0.0015782508 ;
	setAttr ".uvtk[63]" -type "float2" -0.0038053503 0.0024066116 ;
createNode polyMergeVert -n "polyMergeVert32";
	rename -uid "7E325F9B-4FCE-3BA6-160F-F3BDE7D9B3A3";
	setAttr ".ics" -type "componentList" 1 "vtx[56:57]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak57";
	rename -uid "807D76C0-41B2-B733-9D26-15BBFAFAE77F";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[57]" -type "float3"  -0.032521486 0.022132158 -0.037592679;
createNode polyTweakUV -n "polyTweakUV33";
	rename -uid "3451109C-4729-F67D-FC25-1692619A449F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[64]" -type "float2" 0.0013378919 -0.00070611062 ;
	setAttr ".uvtk[66]" -type "float2" 0.0021832329 0.0033044517 ;
	setAttr ".uvtk[67]" -type "float2" 0.0043792049 -0.0007172848 ;
createNode polyMergeVert -n "polyMergeVert33";
	rename -uid "7B95731A-4FA7-CEC7-D5C7-80B6D486AA6C";
	setAttr ".ics" -type "componentList" 1 "vtx[58:59]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak58";
	rename -uid "D3AB524D-4360-B618-CE54-12B53FFACB55";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[59]" -type "float3"  0.033041477 0.022132158 -0.037592679;
createNode polyTweakUV -n "polyTweakUV34";
	rename -uid "AE6D575E-4C3B-5D77-3A60-06A0C9525135";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" 0.0038415301 -0.0023015779 ;
	setAttr ".uvtk[70]" -type "float2" 0.0029120191 -0.0014352594 ;
createNode polyMergeVert -n "polyMergeVert34";
	rename -uid "0B07767D-45D0-D9D4-C165-60A8F744D21C";
	setAttr ".ics" -type "componentList" 1 "vtx[59:60]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.7264650473925207 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak59";
	rename -uid "B83308A7-4217-7B3C-57F3-51A113531657";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[59:60]" -type "float3"  0.033041477 0.022132158 0.036621094
		 0 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "109DAB9E-47AA-EBB2-1D7C-6BB5BC01D3BD";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.545515 8.9881601 -0.019898459 ;
	setAttr ".rs" 62458;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -26.322650307647717 8.9881603011300069 -1.4900197214818975 ;
	setAttr ".cbx" -type "double3" -22.768379453200062 8.9881603011300069 1.4502228010968803 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "B14594D0-4167-B098-2FC1-6EB76B6443DF";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.545515 14.279846 -0.019898459 ;
	setAttr ".rs" 51413;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.53181789610073 14.279845947022121 -0.83579378513097335 ;
	setAttr ".cbx" -type "double3" -23.559211864747052 14.279845947022121 0.7959968647459561 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak60";
	rename -uid "218E2FE0-485E-6EB4-0C7D-64AD2B4E24D7";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[60]" -type "float3" -0.12724763 1.6784428 -0.1470888 ;
	setAttr ".tk[61]" -type "float3" 0.12928 1.6784428 -0.1470888 ;
	setAttr ".tk[62]" -type "float3" -0.12928 1.6784428 0.1470888 ;
	setAttr ".tk[63]" -type "float3" 0.12928 1.6784428 0.14328885 ;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "6B55DC2B-447E-4CC5-727A-80974822F754";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[126]" "e[128]" "e[130:131]" "e[134]" "e[136]" "e[138:139]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak61";
	rename -uid "F5342650-4247-BAD2-6D27-12A02F4978A2";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[64]" -type "float3" 0 0.61092573 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.61092573 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.61092573 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.61092573 0 ;
createNode polyExtrudeVertex -n "polyExtrudeVertex2";
	rename -uid "D5EDD229-4249-AA6F-183A-3F88D8DA9BFC";
	setAttr ".ics" -type "componentList" 4 "vtx[61]" "vtx[63]" "vtx[65]" "vtx[67]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".w" 0.5;
createNode polyTweak -n "polyTweak62";
	rename -uid "7F56ED63-4DC9-03D2-EDBE-7FADCB403482";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[60]" -type "float3" 0 0.15545784 0 ;
	setAttr ".tk[61]" -type "float3" 0.13195018 0.013230903 0.15252726 ;
	setAttr ".tk[62]" -type "float3" 0 0.15545784 0 ;
	setAttr ".tk[63]" -type "float3" -0.13406615 0.013235757 0.15252726 ;
	setAttr ".tk[64]" -type "float3" 0 0.15545784 0 ;
	setAttr ".tk[65]" -type "float3" 0.13406613 0.013235968 -0.15252726 ;
	setAttr ".tk[66]" -type "float3" 0 0.15545784 0 ;
	setAttr ".tk[67]" -type "float3" -0.13406615 0.013230025 -0.1485839 ;
	setAttr ".tk[68]" -type "float3" 0 0.16824897 0 ;
	setAttr ".tk[69]" -type "float3" 0.13195018 -0.013235968 0.15252726 ;
	setAttr ".tk[70]" -type "float3" -0.13406615 -0.013235968 0.15252726 ;
	setAttr ".tk[71]" -type "float3" 0 0.16824897 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.16824897 0 ;
	setAttr ".tk[73]" -type "float3" 0.13406613 -0.013235968 -0.15252726 ;
	setAttr ".tk[74]" -type "float3" 0 0.16824897 0 ;
	setAttr ".tk[75]" -type "float3" -0.13406615 -0.013235968 -0.1485839 ;
createNode polyTweakUV -n "polyTweakUV35";
	rename -uid "615720A1-4178-1AB7-F291-329A0B220DBF";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[84]" -type "float2" -0.0030064671 0.0020615691 ;
	setAttr ".uvtk[103]" -type "float2" -0.0024416563 0.0016733669 ;
createNode polyMergeVert -n "polyMergeVert35";
	rename -uid "7BB7585D-4093-DEAB-0977-FF9793C1E311";
	setAttr ".ics" -type "componentList" 2 "vtx[67]" "vtx[91]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak63";
	rename -uid "2BD1FE37-436A-D90F-00C6-0E879B79FC69";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[61]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[88]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.027048228 0 ;
	setAttr ".tk[91]" -type "float3" 0 -0.20952189 0 ;
createNode polyTweakUV -n "polyTweakUV36";
	rename -uid "8D506470-4BB4-0C64-DD67-13B2C5145586";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[82]" -type "float2" 0.0027994793 0.0026137973 ;
	setAttr ".uvtk[102]" -type "float2" 0.0020055249 0.0021444419 ;
createNode polyMergeVert -n "polyMergeVert36";
	rename -uid "92AAD4B7-40A8-AF1D-71EB-68905F4ED9A5";
	setAttr ".ics" -type "componentList" 2 "vtx[65]" "vtx[90]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak64";
	rename -uid "C3FAE3A4-42EB-B065-F5A7-38BBB1D1E1E5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[90]" -type "float3" 0 -0.18251371 0 ;
createNode polyTweakUV -n "polyTweakUV37";
	rename -uid "981F9324-4014-13C8-C564-058715BE402A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[80]" -type "float2" 0.0028808895 -0.0026491624 ;
	setAttr ".uvtk[100]" -type "float2" 0.0023572014 -0.0019150551 ;
createNode polyMergeVert -n "polyMergeVert37";
	rename -uid "8DDDBD61-4418-F6A2-CDA9-759F890C2A43";
	setAttr ".ics" -type "componentList" 2 "vtx[61]" "vtx[88]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak65";
	rename -uid "5F1C3EF7-4F9E-44D4-D65B-32AA0BDB5A6B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[88]" -type "float3" 0 -0.18247938 0 ;
createNode polyTweakUV -n "polyTweakUV38";
	rename -uid "E69542BF-49E7-D377-D4AD-9994418BF07F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[86]" -type "float2" -0.0026838055 -0.0020596692 ;
	setAttr ".uvtk[100]" -type "float2" -0.001947404 -0.0014863177 ;
createNode polyMergeVert -n "polyMergeVert38";
	rename -uid "0D132CF3-41C3-789C-C122-189DFCCBD48D";
	setAttr ".ics" -type "componentList" 2 "vtx[63]" "vtx[88]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak66";
	rename -uid "51194514-475A-1268-0981-6188226D0B12";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[88]" -type "float3" 0 -0.18251276 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "20BBBE7D-4117-A7CB-F17D-B8AEE64A249A";
	setAttr ".ics" -type "componentList" 3 "f[65:68]" "f[78:80]" "f[85]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -24.545517 14.4928 -0.019898459 ;
	setAttr ".rs" 37364;
	setAttr ".off" 0.12300000339746475;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 4.0999999046325684;
	setAttr ".cbn" -type "double3" -26.351930535508775 14.462038918226238 -1.5142090083556718 ;
	setAttr ".cbx" -type "double3" -22.739102233403656 14.523560165178067 1.4744120879706546 ;
createNode polyTweakUV -n "polyTweakUV39";
	rename -uid "7F74F686-43AF-F7F0-FF80-5093328E972B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[60]" -type "float2" -0.0020779651 0.00064288051 ;
	setAttr ".uvtk[80]" -type "float2" 0.11557577 -0.0026370548 ;
	setAttr ".uvtk[102]" -type "float2" 0.023400759 0.001280841 ;
createNode polyMergeVert -n "polyMergeVert39";
	rename -uid "F663B545-4FB8-A97E-453C-7B898F654579";
	setAttr ".ics" -type "componentList" 2 "vtx[56]" "vtx[90]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak67";
	rename -uid "17794AA8-4750-B74F-EFCB-74BDF11B413B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[90]" -type "float3" 0.094089746 -0.0045506954 -0.099956274 ;
createNode polyTweakUV -n "polyTweakUV40";
	rename -uid "24D87B96-4C32-FF77-106B-23B163D53F27";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[60]" -type "float2" -0.0019672797 0.00060863694 ;
	setAttr ".uvtk[80]" -type "float2" -5.1109342e-05 -3.5518096e-05 ;
	setAttr ".uvtk[88]" -type "float2" 0.11814371 -0.0049546896 ;
	setAttr ".uvtk[101]" -type "float2" 0.0038120425 -0.00023260128 ;
	setAttr ".uvtk[102]" -type "float2" -0.01071818 0.00038985306 ;
createNode polyMergeVert -n "polyMergeVert40";
	rename -uid "A198DF72-402D-EAD4-7BD4-CC8453049AB3";
	setAttr ".ics" -type "componentList" 2 "vtx[56]" "vtx[89]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak68";
	rename -uid "BB5D26A7-4ADB-1272-00FB-DA8ED12CFEC5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[89]" -type "float3" 0.10757351 -0.00034737587 -0.084369004 ;
createNode polyTweakUV -n "polyTweakUV41";
	rename -uid "96A4C373-4371-2B41-D600-97AD1A4CB075";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[60]" -type "float2" -0.00186249 0.00057621743 ;
	setAttr ".uvtk[99]" -type "float2" 0.073223524 -0.00375899 ;
	setAttr ".uvtk[100]" -type "float2" 0.01223471 -0.00049200951 ;
createNode polyMergeVert -n "polyMergeVert41";
	rename -uid "C74829EF-4A6D-F68E-682F-9C8583B89E4D";
	setAttr ".ics" -type "componentList" 2 "vtx[56]" "vtx[88]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak69";
	rename -uid "4CCA4D5C-4B8B-C972-4346-9B8CEB62ED09";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[88]" -type "float3" 0.15723848 -0.0045440197 -0.099956274 ;
createNode polyTweakUV -n "polyTweakUV42";
	rename -uid "C33AD010-4500-CDC2-754C-B6BF965CB375";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[60]" -type "float2" -0.0017632819 0.00054552348 ;
	setAttr ".uvtk[80]" -type "float2" 0.16197765 -0.068956718 ;
	setAttr ".uvtk[93]" -type "float2" 0.27662635 -0.11776467 ;
	setAttr ".uvtk[99]" -type "float2" 5.4607199e-06 -2.4286877e-07 ;
	setAttr ".uvtk[100]" -type "float2" 0.057422306 -0.019094042 ;
	setAttr ".uvtk[101]" -type "float2" 0.059645485 -0.020963585 ;
	setAttr ".uvtk[102]" -type "float2" 0.068989977 -0.060131088 ;
createNode polyMergeVert -n "polyMergeVert42";
	rename -uid "92CFF903-4788-D5AB-6463-4D9F15B90007";
	setAttr ".ics" -type "componentList" 2 "vtx[56]" "vtx[88:90]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak70";
	rename -uid "1A5071D4-48AF-D7FD-6F04-22B7B2A9D7AB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[88]" -type "float3" -0.026427746 0.007371664 0.12584406 ;
	setAttr ".tk[89]" -type "float3" -0.046306849 0.0011742115 0.10286492 ;
	setAttr ".tk[90]" -type "float3" -0.047047377 0.0011851788 0.20962273 ;
createNode polyTweakUV -n "polyTweakUV43";
	rename -uid "892817E5-4AA9-36B6-AB75-01ADEA52664E";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[62]" -type "float2" -2.2637139e-05 -6.087555e-06 ;
	setAttr ".uvtk[64]" -type "float2" -6.2040449e-06 -1.858416e-07 ;
	setAttr ".uvtk[82]" -type "float2" -0.002581819 0.060670543 ;
	setAttr ".uvtk[91]" -type "float2" -0.00017933453 0.063049659 ;
	setAttr ".uvtk[92]" -type "float2" -0.0014546355 0.10893379 ;
	setAttr ".uvtk[109]" -type "float2" -0.00093889423 0.057894669 ;
	setAttr ".uvtk[110]" -type "float2" 0.00012550004 0.019055225 ;
	setAttr ".uvtk[111]" -type "float2" -0.001889592 0.016961494 ;
createNode polyMergeVert -n "polyMergeVert43";
	rename -uid "802A0CAD-4DF3-4F2F-5E22-EDB1043B4B83";
	setAttr ".ics" -type "componentList" 2 "vtx[57]" "vtx[97:99]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak71";
	rename -uid "42AA68D4-417B-1D4B-9034-309A9D52D78D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[97]" -type "float3" -0.043823242 0.0012953281 -0.21301547 ;
	setAttr ".tk[98]" -type "float3" -0.024335623 0.0074908733 -0.12911284 ;
	setAttr ".tk[99]" -type "float3" -0.044564724 0.0013067722 -0.10609838 ;
createNode polyTweakUV -n "polyTweakUV44";
	rename -uid "755658DB-4FA5-B369-05C4-DDB2987E138D";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[62]" -type "float2" -2.2619735e-05 -6.0828829e-06 ;
	setAttr ".uvtk[64]" -type "float2" -6.1987089e-06 -1.8568764e-07 ;
	setAttr ".uvtk[82]" -type "float2" 0.14066301 0.17486408 ;
	setAttr ".uvtk[95]" -type "float2" 0.18214376 0.22643054 ;
	setAttr ".uvtk[101]" -type "float2" 0.026531888 0.041509364 ;
	setAttr ".uvtk[102]" -type "float2" 0.028497966 0.043466382 ;
	setAttr ".uvtk[103]" -type "float2" 0.071458705 0.048474539 ;
	setAttr ".uvtk[107]" -type "float2" -1.085309e-08 9.9538238e-07 ;
createNode polyMergeVert -n "polyMergeVert44";
	rename -uid "E51A4968-41CB-1EB1-5220-839FB12959C8";
	setAttr ".ics" -type "componentList" 2 "vtx[57]" "vtx[91:93]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak72";
	rename -uid "0AF99352-4885-56FC-03F6-A9B2B5052485";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[91]" -type "float3" 0.11068678 -0.00086736679 0.085883528 ;
	setAttr ".tk[92]" -type "float3" 0.097524405 -0.0048904419 0.10085839 ;
	setAttr ".tk[93]" -type "float3" 0.15867186 -0.0048987865 0.099959075 ;
createNode polyTweakUV -n "polyTweakUV45";
	rename -uid "84F56298-4093-2109-1683-BABA649EE9A1";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[66]" -type "float2" 0.0018025436 -0.00046827548 ;
	setAttr ".uvtk[92]" -type "float2" -0.0073001045 0.094001614 ;
	setAttr ".uvtk[105]" -type "float2" -0.0016798126 0.016137425 ;
	setAttr ".uvtk[106]" -type "float2" -0.0037543953 0.050437629 ;
	setAttr ".uvtk[107]" -type "float2" 0.00061569916 0.014487126 ;
	setAttr ".uvtk[108]" -type "float2" -0.076092333 -0.0046846122 ;
	setAttr ".uvtk[109]" -type "float2" -0.005895996 -0.0035713497 ;
	setAttr ".uvtk[110]" -type "float2" -0.0019305387 -0.0058315154 ;
createNode polyMergeVert -n "polyMergeVert45";
	rename -uid "B431D85C-4A9F-3B26-193A-E0B19E3D1051";
	setAttr ".ics" -type "componentList" 2 "vtx[59]" "vtx[94:99]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak73";
	rename -uid "C06B373C-4C27-286F-B5EF-7EBA404C76EC";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[94]" -type "float3" 0.024066925 0.0076267719 -0.12460801 ;
	setAttr ".tk[95]" -type "float3" 0.044478893 0.0013754368 -0.20848008 ;
	setAttr ".tk[96]" -type "float3" 0.044478893 0.0013623238 -0.10198572 ;
	setAttr ".tk[97]" -type "float3" -0.15545511 -0.0050666332 0.10509261 ;
	setAttr ".tk[98]" -type "float3" -0.10752678 -0.0010406971 0.089624882 ;
	setAttr ".tk[99]" -type "float3" -0.094380856 -0.0050752163 0.10419449 ;
createNode polyTweakUV -n "polyTweakUV46";
	rename -uid "4C06F2B6-457E-08F8-0C36-57899C237310";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[62]" -type "float2" -1.1107179e-05 -3.1595137e-05 ;
	setAttr ".uvtk[64]" -type "float2" 4.7378733e-05 3.7211859e-05 ;
	setAttr ".uvtk[86]" -type "float2" -0.01554619 -0.0085175261 ;
	setAttr ".uvtk[89]" -type "float2" -0.17178328 0.01082566 ;
	setAttr ".uvtk[90]" -type "float2" -0.01786177 -0.010290526 ;
	setAttr ".uvtk[91]" -type "float2" 0.0040748236 -0.095055021 ;
	setAttr ".uvtk[97]" -type "float2" 0.0023392194 -0.050921131 ;
	setAttr ".uvtk[98]" -type "float2" 0.00029384351 -0.016615 ;
	setAttr ".uvtk[99]" -type "float2" 0.0022364869 -0.015041326 ;
	setAttr ".uvtk[101]" -type "float2" -0.02626613 0.0021671501 ;
	setAttr ".uvtk[102]" -type "float2" -0.068461642 0.004479114 ;
	setAttr ".uvtk[103]" -type "float2" -0.024270352 0.0035956779 ;
createNode polyMergeVert -n "polyMergeVert46";
	rename -uid "69999529-4DAD-5872-79E1-5E9E3F061B86";
	setAttr ".ics" -type "componentList" 2 "vtx[58]" "vtx[88:93]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak74";
	rename -uid "1B08DD42-4EAF-019E-812A-EC8BBEDFE663";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[88]" -type "float3" 0.044128418 0.001502037 0.21095549 ;
	setAttr ".tk[89]" -type "float3" 0.023681164 0.0077631474 0.12754317 ;
	setAttr ".tk[90]" -type "float3" 0.044128418 0.0015149117 0.10427976 ;
	setAttr ".tk[91]" -type "float3" -0.10917711 -0.00018453598 -0.083814144 ;
	setAttr ".tk[92]" -type "float3" -0.15867662 -0.0043830872 -0.09941861 ;
	setAttr ".tk[93]" -type "float3" -0.095460892 -0.0043759346 -0.09941861 ;
createNode polyTweakUV -n "polyTweakUV47";
	rename -uid "064A145F-4945-107E-F583-0B8707B3D6D1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[81]" -type "float2" 0.031492237 0.014171508 ;
	setAttr ".uvtk[86]" -type "float2" 0.026710052 0.019565653 ;
createNode polyMergeVert -n "polyMergeVert47";
	rename -uid "5AE8A392-4E12-597B-0D8A-0B924602CB47";
	setAttr ".ics" -type "componentList" 2 "vtx[63]" "vtx[70]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak75";
	rename -uid "EE1F32D2-459F-7E51-FEC1-83B3B0631A46";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[63]" -type "float3" 0 0.39207315 0 ;
createNode polyTweakUV -n "polyTweakUV48";
	rename -uid "99B93EA3-46CD-FD31-9480-92BA05DC2E55";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[84]" -type "float2" 0.019633675 0.01856973 ;
	setAttr ".uvtk[86]" -type "float2" 0.02997293 0.029093087 ;
createNode polyMergeVert -n "polyMergeVert48";
	rename -uid "BF1389D6-4B90-5E99-BC10-AE8356942B70";
	setAttr ".ics" -type "componentList" 2 "vtx[67]" "vtx[74]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak76";
	rename -uid "D1B37AB4-4939-FCB0-F100-B28B03ADBB51";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[67]" -type "float3" 0 0.39199495 0 ;
createNode polyTweakUV -n "polyTweakUV49";
	rename -uid "99CD2ADB-4E62-0A72-A200-7EA98F0413EC";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[80]" -type "float2" 0.066995233 0.040016212 ;
	setAttr ".uvtk[83]" -type "float2" -0.099634044 -0.048516437 ;
createNode polyMergeVert -n "polyMergeVert49";
	rename -uid "5C372A95-4C23-C3AF-960B-5F9C8F10BFA9";
	setAttr ".ics" -type "componentList" 2 "vtx[61]" "vtx[69]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak77";
	rename -uid "0C3AD337-458C-8540-C0B2-9493BB37081A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[61]" -type "float3" 0 0.3920064 0 ;
createNode polyTweakUV -n "polyTweakUV50";
	rename -uid "741A37D4-4ABD-7DF1-B67B-E7B943398D26";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[82]" -type "float2" 0.062175717 0.041040432 ;
	setAttr ".uvtk[84]" -type "float2" -0.08468914 -0.073063739 ;
createNode polyMergeVert -n "polyMergeVert50";
	rename -uid "A802721C-4AC3-C240-0A21-CA8ACE8BF68C";
	setAttr ".ics" -type "componentList" 2 "vtx[65]" "vtx[71]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak78";
	rename -uid "3CF2C6AF-4CAA-9425-ABA2-6487FD5372F3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[65]" -type "float3" 0 0.39207602 0 ;
createNode polyMergeVert -n "polyMergeVert51";
	rename -uid "519B6A5D-4B34-1FD8-9208-B9AB3FD2FAF6";
	setAttr ".ics" -type "componentList" 1 "vtx[68:71]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak79";
	rename -uid "3C1D8B7F-43EF-4492-180D-0C8374A2C161";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[68:71]" -type "float3"  -0.093785584 0 -0.091238454
		 0.094423234 0 -0.091238454 -0.095060885 0 0.092631839 0.094423234 0 0.089845076;
createNode polyTweakUV -n "polyTweakUV51";
	rename -uid "FEC7CF58-4949-98FF-4A16-5E83727712B8";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[42]" -type "float2" 0.0099783484 0.0034539229 ;
	setAttr ".uvtk[43]" -type "float2" -0.0032191866 -0.005838403 ;
	setAttr ".uvtk[44]" -type "float2" -0.0011774435 -0.0074777994 ;
	setAttr ".uvtk[47]" -type "float2" -0.0013731775 0.0065018786 ;
createNode polyMergeVert -n "polyMergeVert52";
	rename -uid "BFEC505B-4B41-2E4D-2198-DA821F84DDE0";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[43]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak80";
	rename -uid "3F6ECBA6-435E-9BA0-D0E0-5B8089E26E97";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[43]" -type "float3" 0 -0.1765604 0 ;
	setAttr ".tk[61]" -type "float3" -0.038096428 7.4505806e-09 -0.044037465 ;
	setAttr ".tk[63]" -type "float3" 0.038707346 7.4505806e-09 -0.044037465 ;
	setAttr ".tk[65]" -type "float3" -0.038707346 7.4505806e-09 0.044037465 ;
	setAttr ".tk[67]" -type "float3" 0.038707346 7.4505806e-09 0.042898901 ;
createNode polyTweakUV -n "polyTweakUV52";
	rename -uid "A23BDF15-4B56-9ECD-132C-74AD6C262D2E";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[45]" -type "float2" 0.0042609624 -0.0038708434 ;
	setAttr ".uvtk[46]" -type "float2" -0.0010498238 0.0037265867 ;
createNode polyMergeVert -n "polyMergeVert53";
	rename -uid "E4916CF4-4A93-F0B3-B7F6-DD8F913ECA6F";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[42]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak81";
	rename -uid "4CC505F4-4B5B-F7A9-A589-A8BC7BD52964";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[42]" -type "float3" 0 -0.1765604 0 ;
createNode polyTweakUV -n "polyTweakUV53";
	rename -uid "77157737-4A97-E8C1-A93C-51997C47015A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[48]" -type "float2" -0.004352509 0.0037537487 ;
	setAttr ".uvtk[49]" -type "float2" 0.0033068678 -0.0048935609 ;
createNode polyMergeVert -n "polyMergeVert54";
	rename -uid "EF97CFE8-44CE-7EA4-5C4D-43AB2D3E3C5B";
	setAttr ".ics" -type "componentList" 1 "vtx[44:45]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak82";
	rename -uid "CA85BFE7-4481-78AA-0218-EBAB9AC8319A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[45]" -type "float3"  0 -0.1765604 0;
createNode polyTweakUV -n "polyTweakUV54";
	rename -uid "B78E30B4-4714-AF6B-E0E1-DDB50D9280F0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[44]" -type "float2" 5.762884e-05 0.00071341195 ;
	setAttr ".uvtk[46]" -type "float2" 0.0040968158 0.00082932028 ;
	setAttr ".uvtk[47]" -type "float2" -0.0058185123 0.0009923561 ;
createNode polyMergeVert -n "polyMergeVert55";
	rename -uid "06BD7458-4125-2054-ECCB-AAB6098C6726";
	setAttr ".ics" -type "componentList" 1 "vtx[42:43]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak83";
	rename -uid "D3A5836D-4B06-2444-894E-9E825BCD2F48";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[43]" -type "float3"  0 -0.1765604 0;
createNode polyTweakUV -n "polyTweakUV55";
	rename -uid "619F7A8F-4F34-86C3-AC2E-0F86E430D609";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[18]" -type "float2" -0.00077633635 0.00051455636 ;
	setAttr ".uvtk[31]" -type "float2" -0.0011489189 0.00097742304 ;
createNode polyMergeVert -n "polyMergeVert56";
	rename -uid "E9FD175C-4C40-D7C8-89B5-CBB1D8338D5E";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[24]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak84";
	rename -uid "130B5FA0-45C5-F23A-2F7A-0C9B39707079";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[16]" -type "float3" -0.006757021 0.15191913 -0.0078107119 ;
createNode polyTweakUV -n "polyTweakUV56";
	rename -uid "55C11534-4381-E317-45C5-D7AC2C3F5730";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[19]" -type "float2" 9.9987708e-05 0.00087787298 ;
	setAttr ".uvtk[30]" -type "float2" 0.001138541 0.00097172719 ;
createNode polyMergeVert -n "polyMergeVert57";
	rename -uid "3E7FCE20-4297-EEF0-49D7-0688E5698FA6";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[24]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak85";
	rename -uid "6D9283A9-42ED-8DDC-5EFF-F79DEDD3A2AD";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[19]" -type "float3" 0.0068655014 0.15191913 -0.0078107119 ;
createNode polyTweakUV -n "polyTweakUV57";
	rename -uid "F5B417F7-408B-39B7-B6D7-F894EA95D735";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.0011053931 0.00015342688 ;
	setAttr ".uvtk[31]" -type "float2" 0.0011525217 -0.00092554151 ;
createNode polyMergeVert -n "polyMergeVert58";
	rename -uid "14385075-4015-9F81-C9FA-158A7EB5B30E";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak86";
	rename -uid "08F07E89-4434-CEF9-4412-279FF0A21C16";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[22]" -type "float3" 0.0068655014 0.15191913 0.0076088309 ;
createNode polyTweakUV -n "polyTweakUV58";
	rename -uid "DAAE8A6D-452D-016C-09F4-899D9D2DCC08";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[21]" -type "float2" -0.00053909223 -0.00025059306 ;
	setAttr ".uvtk[30]" -type "float2" -0.0011301665 -0.00093865133 ;
createNode polyMergeVert -n "polyMergeVert59";
	rename -uid "025122A0-4564-1AB9-CB1B-0EB19BBEC29D";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[24]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak87";
	rename -uid "53B5D6A5-47F4-432B-90B7-47B6FA0D74B4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[20]" -type "float3" -0.006865263 0.15191913 0.0078107119 ;
createNode polyTweakUV -n "polyTweakUV59";
	rename -uid "EA9DCB1D-4321-2C61-EB2E-73A70F4E3F85";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[21]" -type "float2" 0.0014314246 0.0014079415 ;
	setAttr ".uvtk[32]" -type "float2" -0.0018528354 -0.0014648098 ;
createNode polyMergeVert -n "polyMergeVert60";
	rename -uid "2198FF2A-4AF6-A457-8D64-C18BF8A2461F";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[26]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak88";
	rename -uid "6F34A61F-411F-4E92-59AF-C38955D57278";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[26]" -type "float3" -0.010926723 -0.47608614 0.012431204 ;
createNode polyTweakUV -n "polyTweakUV60";
	rename -uid "E1F03B68-43AF-0828-2E90-4AA2A01B02E1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[18]" -type "float2" 0.0015223892 -0.001508604 ;
	setAttr ".uvtk[31]" -type "float2" -0.0019086857 0.0017644343 ;
createNode polyMergeVert -n "polyMergeVert61";
	rename -uid "A3197C25-49D0-4F08-806D-4489B8448E28";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[24]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak89";
	rename -uid "8B1504D4-4043-C3B7-94F9-FCAD4EE8B5F7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[24]" -type "float3" -0.010754347 -0.47608614 -0.012431204 ;
createNode polyTweakUV -n "polyTweakUV61";
	rename -uid "AF989D69-42A7-8B6D-32D8-3B875C7A7446";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" -0.001729409 0.0013002073 ;
	setAttr ".uvtk[31]" -type "float2" 0.0021201598 -0.0012752358 ;
createNode polyMergeVert -n "polyMergeVert62";
	rename -uid "8623D439-4DDA-6EA2-712D-09AD480B1388";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak90";
	rename -uid "48FF10B7-4CF2-ECC9-602C-A5B63AC1508C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[25]" -type "float3" 0.010926723 -0.47608614 0.012109905 ;
createNode polyTweakUV -n "polyTweakUV62";
	rename -uid "5912105E-4EFC-D19B-8627-818976326B36";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[19]" -type "float2" -0.0014473912 -0.0016182812 ;
	setAttr ".uvtk[30]" -type "float2" 0.0018547211 0.0017929416 ;
createNode polyMergeVert -n "polyMergeVert63";
	rename -uid "A27EC3EC-46D9-D09B-4FE0-A089BB0357E9";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[24]";
	setAttr ".ix" -type "matrix" 6.1172061099023871 0 0 0 0 3.1527357741984159 0 0 0 0 4.4478298455456349 0
		 -24.959539794515234 1.4392944859969319 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak91";
	rename -uid "503BE5FC-4775-A722-7F01-0CB4BA20D395";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[24]" -type "float3" 0.010926723 -0.47608614 -0.012431204 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CD407454-43A4-1550-A30A-CBBC7B9F37D9";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 718\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4BFE13D8-4AB1-3DBC-1598-D294547A90D2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "4D57CF91-49FE-CBD0-DF04-609E6146BEF4";
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyBridgeEdge3.out" "pCubeShape1.i";
connectAttr "polyMergeVert2.out" "pCubeShape2.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
connectAttr "polyExtrudeFace12.out" "pCubeShape3.i";
connectAttr "deleteComponent3.og" "pCubeShape4.i";
connectAttr "polyMirror2.out" "pasted__pCubeShape3.i";
connectAttr "polyMergeVert63.out" "pCubeShape6.i";
connectAttr "polyTweakUV62.uvtk[0]" "pCubeShape6.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyBevel1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMirror1.ip";
connectAttr "pCubeShape1.wm" "polyMirror1.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polyMirror1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBridgeEdge1.ip";
connectAttr "pCubeShape1.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "pCubeShape1.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "pCubeShape1.wm" "polyBridgeEdge3.mp";
connectAttr "polyCube2.out" "polyBevel2.ip";
connectAttr "pCubeShape2.wm" "polyBevel2.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyBevel2.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace7.out" "polyTweakUV1.ip";
connectAttr "polyTweak9.out" "polyMergeVert1.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak9.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak10.out" "polyMergeVert2.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak10.ip";
connectAttr "polyCube3.out" "polyBevel3.ip";
connectAttr "pCubeShape3.wm" "polyBevel3.mp";
connectAttr "polyTweak11.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace8.mp";
connectAttr "polyBevel3.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak15.ip";
connectAttr "|pCube4|polySurfaceShape1.o" "polyCut1.ip";
connectAttr "pCubeShape4.wm" "polyCut1.mp";
connectAttr "polyCut1.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyCut2.ip";
connectAttr "pCubeShape4.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "deleteComponent3.ig";
connectAttr "pasted__polyTweak15.out" "pasted__polyExtrudeFace12.ip";
connectAttr "pasted__pCubeShape3.wm" "pasted__polyExtrudeFace12.mp";
connectAttr "pasted__polyExtrudeFace11.out" "pasted__polyTweak15.ip";
connectAttr "pasted__polyTweak14.out" "pasted__polyExtrudeFace11.ip";
connectAttr "pasted__pCubeShape3.wm" "pasted__polyExtrudeFace11.mp";
connectAttr "pasted__polyExtrudeFace10.out" "pasted__polyTweak14.ip";
connectAttr "pasted__polyTweak13.out" "pasted__polyExtrudeFace10.ip";
connectAttr "pasted__pCubeShape3.wm" "pasted__polyExtrudeFace10.mp";
connectAttr "pasted__polyExtrudeFace9.out" "pasted__polyTweak13.ip";
connectAttr "pasted__polyTweak12.out" "pasted__polyExtrudeFace9.ip";
connectAttr "pasted__pCubeShape3.wm" "pasted__polyExtrudeFace9.mp";
connectAttr "pasted__polyExtrudeFace8.out" "pasted__polyTweak12.ip";
connectAttr "pasted__polyTweak11.out" "pasted__polyExtrudeFace8.ip";
connectAttr "pasted__pCubeShape3.wm" "pasted__polyExtrudeFace8.mp";
connectAttr "pasted__polyBevel3.out" "pasted__polyTweak11.ip";
connectAttr "pasted__polyCube3.out" "pasted__polyBevel3.ip";
connectAttr "pasted__pCubeShape3.wm" "pasted__polyBevel3.mp";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "pasted__polyExtrudeFace12.out" "polyTweak16.ip";
connectAttr "polyTweak16.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyMirror2.ip";
connectAttr "pasted__pCubeShape3.wm" "polyMirror2.mp";
connectAttr "polyTweak17.out" "polyBevel4.ip";
connectAttr "pCubeShape6.wm" "polyBevel4.mp";
connectAttr "polyCube4.out" "polyTweak17.ip";
connectAttr "polyBevel4.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace13.mp";
connectAttr "polyTweak18.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyBevel5.ip";
connectAttr "pCubeShape6.wm" "polyBevel5.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak19.ip";
connectAttr "polyBevel5.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak20.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeVertex1.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeVertex1.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeVertex1.out" "polyTweak27.ip";
connectAttr "polyExtrudeFace22.out" "polyTweakUV3.ip";
connectAttr "polyTweak28.out" "polyMergeVert3.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak28.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV4.ip";
connectAttr "polyTweak29.out" "polyMergeVert4.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak29.ip";
connectAttr "polyMergeVert4.out" "polyTweakUV5.ip";
connectAttr "polyTweak30.out" "polyMergeVert5.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV5.out" "polyTweak30.ip";
connectAttr "polyMergeVert5.out" "polyTweakUV6.ip";
connectAttr "polyTweak31.out" "polyMergeVert6.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV6.out" "polyTweak31.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV7.ip";
connectAttr "polyTweak32.out" "polyMergeVert7.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV7.out" "polyTweak32.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV8.ip";
connectAttr "polyTweak33.out" "polyMergeVert8.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV8.out" "polyTweak33.ip";
connectAttr "polyMergeVert8.out" "polyTweakUV9.ip";
connectAttr "polyTweak34.out" "polyMergeVert9.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV9.out" "polyTweak34.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV10.ip";
connectAttr "polyTweak35.out" "polyMergeVert10.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV10.out" "polyTweak35.ip";
connectAttr "polyMergeVert10.out" "polyTweakUV11.ip";
connectAttr "polyTweak36.out" "polyMergeVert11.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV11.out" "polyTweak36.ip";
connectAttr "polyMergeVert11.out" "polyTweakUV12.ip";
connectAttr "polyTweak37.out" "polyMergeVert12.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert12.mp";
connectAttr "polyTweakUV12.out" "polyTweak37.ip";
connectAttr "polyMergeVert12.out" "polyTweakUV13.ip";
connectAttr "polyTweak38.out" "polyMergeVert13.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert13.mp";
connectAttr "polyTweakUV13.out" "polyTweak38.ip";
connectAttr "polyMergeVert13.out" "polyTweakUV14.ip";
connectAttr "polyTweak39.out" "polyMergeVert14.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert14.mp";
connectAttr "polyTweakUV14.out" "polyTweak39.ip";
connectAttr "polyMergeVert14.out" "polyTweakUV15.ip";
connectAttr "polyTweak40.out" "polyMergeVert15.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert15.mp";
connectAttr "polyTweakUV15.out" "polyTweak40.ip";
connectAttr "polyMergeVert15.out" "polyTweakUV16.ip";
connectAttr "polyTweak41.out" "polyMergeVert16.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV16.out" "polyTweak41.ip";
connectAttr "polyMergeVert16.out" "polyTweakUV17.ip";
connectAttr "polyTweak42.out" "polyMergeVert17.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert17.mp";
connectAttr "polyTweakUV17.out" "polyTweak42.ip";
connectAttr "polyMergeVert17.out" "polyTweakUV18.ip";
connectAttr "polyTweak43.out" "polyMergeVert18.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert18.mp";
connectAttr "polyTweakUV18.out" "polyTweak43.ip";
connectAttr "polyMergeVert18.out" "polyTweakUV19.ip";
connectAttr "polyTweak44.out" "polyMergeVert19.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert19.mp";
connectAttr "polyTweakUV19.out" "polyTweak44.ip";
connectAttr "polyMergeVert19.out" "polyTweakUV20.ip";
connectAttr "polyTweak45.out" "polyMergeVert20.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert20.mp";
connectAttr "polyTweakUV20.out" "polyTweak45.ip";
connectAttr "polyMergeVert20.out" "polyTweakUV21.ip";
connectAttr "polyTweak46.out" "polyMergeVert21.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert21.mp";
connectAttr "polyTweakUV21.out" "polyTweak46.ip";
connectAttr "polyMergeVert21.out" "polyTweakUV22.ip";
connectAttr "polyTweak47.out" "polyMergeVert22.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert22.mp";
connectAttr "polyTweakUV22.out" "polyTweak47.ip";
connectAttr "polyMergeVert22.out" "polyTweakUV23.ip";
connectAttr "polyTweak48.out" "polyMergeVert23.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert23.mp";
connectAttr "polyTweakUV23.out" "polyTweak48.ip";
connectAttr "polyMergeVert23.out" "polyTweakUV24.ip";
connectAttr "polyTweak49.out" "polyMergeVert24.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert24.mp";
connectAttr "polyTweakUV24.out" "polyTweak49.ip";
connectAttr "polyMergeVert24.out" "polyTweakUV25.ip";
connectAttr "polyTweak50.out" "polyMergeVert25.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert25.mp";
connectAttr "polyTweakUV25.out" "polyTweak50.ip";
connectAttr "polyMergeVert25.out" "polyTweakUV26.ip";
connectAttr "polyTweak51.out" "polyMergeVert26.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert26.mp";
connectAttr "polyTweakUV26.out" "polyTweak51.ip";
connectAttr "polyMergeVert26.out" "polyTweakUV27.ip";
connectAttr "polyTweak52.out" "polyMergeVert27.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert27.mp";
connectAttr "polyTweakUV27.out" "polyTweak52.ip";
connectAttr "polyMergeVert27.out" "polyTweakUV28.ip";
connectAttr "polyTweak53.out" "polyMergeVert28.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert28.mp";
connectAttr "polyTweakUV28.out" "polyTweak53.ip";
connectAttr "polyMergeVert28.out" "polyTweakUV29.ip";
connectAttr "polyTweak54.out" "polyMergeVert29.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert29.mp";
connectAttr "polyTweakUV29.out" "polyTweak54.ip";
connectAttr "polyMergeVert29.out" "polyTweakUV30.ip";
connectAttr "polyTweak55.out" "polyMergeVert30.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert30.mp";
connectAttr "polyTweakUV30.out" "polyTweak55.ip";
connectAttr "polyMergeVert30.out" "polyTweakUV31.ip";
connectAttr "polyTweak56.out" "polyMergeVert31.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert31.mp";
connectAttr "polyTweakUV31.out" "polyTweak56.ip";
connectAttr "polyMergeVert31.out" "polyTweakUV32.ip";
connectAttr "polyTweak57.out" "polyMergeVert32.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert32.mp";
connectAttr "polyTweakUV32.out" "polyTweak57.ip";
connectAttr "polyMergeVert32.out" "polyTweakUV33.ip";
connectAttr "polyTweak58.out" "polyMergeVert33.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert33.mp";
connectAttr "polyTweakUV33.out" "polyTweak58.ip";
connectAttr "polyMergeVert33.out" "polyTweakUV34.ip";
connectAttr "polyTweak59.out" "polyMergeVert34.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert34.mp";
connectAttr "polyTweakUV34.out" "polyTweak59.ip";
connectAttr "polyMergeVert34.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace23.mp";
connectAttr "polyTweak60.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak60.ip";
connectAttr "polyTweak61.out" "polyBevel6.ip";
connectAttr "pCubeShape6.wm" "polyBevel6.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyExtrudeVertex2.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeVertex2.mp";
connectAttr "polyBevel6.out" "polyTweak62.ip";
connectAttr "polyExtrudeVertex2.out" "polyTweakUV35.ip";
connectAttr "polyTweak63.out" "polyMergeVert35.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert35.mp";
connectAttr "polyTweakUV35.out" "polyTweak63.ip";
connectAttr "polyMergeVert35.out" "polyTweakUV36.ip";
connectAttr "polyTweak64.out" "polyMergeVert36.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert36.mp";
connectAttr "polyTweakUV36.out" "polyTweak64.ip";
connectAttr "polyMergeVert36.out" "polyTweakUV37.ip";
connectAttr "polyTweak65.out" "polyMergeVert37.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert37.mp";
connectAttr "polyTweakUV37.out" "polyTweak65.ip";
connectAttr "polyMergeVert37.out" "polyTweakUV38.ip";
connectAttr "polyTweak66.out" "polyMergeVert38.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert38.mp";
connectAttr "polyTweakUV38.out" "polyTweak66.ip";
connectAttr "polyMergeVert38.out" "polyExtrudeFace25.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace25.out" "polyTweakUV39.ip";
connectAttr "polyTweak67.out" "polyMergeVert39.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert39.mp";
connectAttr "polyTweakUV39.out" "polyTweak67.ip";
connectAttr "polyMergeVert39.out" "polyTweakUV40.ip";
connectAttr "polyTweak68.out" "polyMergeVert40.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert40.mp";
connectAttr "polyTweakUV40.out" "polyTweak68.ip";
connectAttr "polyMergeVert40.out" "polyTweakUV41.ip";
connectAttr "polyTweak69.out" "polyMergeVert41.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert41.mp";
connectAttr "polyTweakUV41.out" "polyTweak69.ip";
connectAttr "polyMergeVert41.out" "polyTweakUV42.ip";
connectAttr "polyTweak70.out" "polyMergeVert42.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert42.mp";
connectAttr "polyTweakUV42.out" "polyTweak70.ip";
connectAttr "polyMergeVert42.out" "polyTweakUV43.ip";
connectAttr "polyTweak71.out" "polyMergeVert43.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert43.mp";
connectAttr "polyTweakUV43.out" "polyTweak71.ip";
connectAttr "polyMergeVert43.out" "polyTweakUV44.ip";
connectAttr "polyTweak72.out" "polyMergeVert44.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert44.mp";
connectAttr "polyTweakUV44.out" "polyTweak72.ip";
connectAttr "polyMergeVert44.out" "polyTweakUV45.ip";
connectAttr "polyTweak73.out" "polyMergeVert45.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert45.mp";
connectAttr "polyTweakUV45.out" "polyTweak73.ip";
connectAttr "polyMergeVert45.out" "polyTweakUV46.ip";
connectAttr "polyTweak74.out" "polyMergeVert46.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert46.mp";
connectAttr "polyTweakUV46.out" "polyTweak74.ip";
connectAttr "polyMergeVert46.out" "polyTweakUV47.ip";
connectAttr "polyTweak75.out" "polyMergeVert47.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert47.mp";
connectAttr "polyTweakUV47.out" "polyTweak75.ip";
connectAttr "polyMergeVert47.out" "polyTweakUV48.ip";
connectAttr "polyTweak76.out" "polyMergeVert48.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert48.mp";
connectAttr "polyTweakUV48.out" "polyTweak76.ip";
connectAttr "polyMergeVert48.out" "polyTweakUV49.ip";
connectAttr "polyTweak77.out" "polyMergeVert49.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert49.mp";
connectAttr "polyTweakUV49.out" "polyTweak77.ip";
connectAttr "polyMergeVert49.out" "polyTweakUV50.ip";
connectAttr "polyTweak78.out" "polyMergeVert50.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert50.mp";
connectAttr "polyTweakUV50.out" "polyTweak78.ip";
connectAttr "polyTweak79.out" "polyMergeVert51.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert51.mp";
connectAttr "polyMergeVert50.out" "polyTweak79.ip";
connectAttr "polyMergeVert51.out" "polyTweakUV51.ip";
connectAttr "polyTweak80.out" "polyMergeVert52.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert52.mp";
connectAttr "polyTweakUV51.out" "polyTweak80.ip";
connectAttr "polyMergeVert52.out" "polyTweakUV52.ip";
connectAttr "polyTweak81.out" "polyMergeVert53.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert53.mp";
connectAttr "polyTweakUV52.out" "polyTweak81.ip";
connectAttr "polyMergeVert53.out" "polyTweakUV53.ip";
connectAttr "polyTweak82.out" "polyMergeVert54.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert54.mp";
connectAttr "polyTweakUV53.out" "polyTweak82.ip";
connectAttr "polyMergeVert54.out" "polyTweakUV54.ip";
connectAttr "polyTweak83.out" "polyMergeVert55.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert55.mp";
connectAttr "polyTweakUV54.out" "polyTweak83.ip";
connectAttr "polyMergeVert55.out" "polyTweakUV55.ip";
connectAttr "polyTweak84.out" "polyMergeVert56.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert56.mp";
connectAttr "polyTweakUV55.out" "polyTweak84.ip";
connectAttr "polyMergeVert56.out" "polyTweakUV56.ip";
connectAttr "polyTweak85.out" "polyMergeVert57.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert57.mp";
connectAttr "polyTweakUV56.out" "polyTweak85.ip";
connectAttr "polyMergeVert57.out" "polyTweakUV57.ip";
connectAttr "polyTweak86.out" "polyMergeVert58.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert58.mp";
connectAttr "polyTweakUV57.out" "polyTweak86.ip";
connectAttr "polyMergeVert58.out" "polyTweakUV58.ip";
connectAttr "polyTweak87.out" "polyMergeVert59.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert59.mp";
connectAttr "polyTweakUV58.out" "polyTweak87.ip";
connectAttr "polyMergeVert59.out" "polyTweakUV59.ip";
connectAttr "polyTweak88.out" "polyMergeVert60.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert60.mp";
connectAttr "polyTweakUV59.out" "polyTweak88.ip";
connectAttr "polyMergeVert60.out" "polyTweakUV60.ip";
connectAttr "polyTweak89.out" "polyMergeVert61.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert61.mp";
connectAttr "polyTweakUV60.out" "polyTweak89.ip";
connectAttr "polyMergeVert61.out" "polyTweakUV61.ip";
connectAttr "polyTweak90.out" "polyMergeVert62.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert62.mp";
connectAttr "polyTweakUV61.out" "polyTweak90.ip";
connectAttr "polyMergeVert62.out" "polyTweakUV62.ip";
connectAttr "polyTweak91.out" "polyMergeVert63.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert63.mp";
connectAttr "polyTweakUV62.out" "polyTweak91.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
// End of Fuerte.ma
