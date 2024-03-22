//Maya ASCII 2022 scene
//Name: Map.ma
//Last modified: Wed, Mar 20, 2024 08:26:42 PM
//Codeset: 1251
requires maya "2022";
requires "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 22631)";
fileInfo "UUID" "4B50C310-4C72-21E0-74FA-4A8067C8AD8E";
createNode transform -s -n "persp";
	rename -uid "12FE529F-4039-419E-48EB-FBA3F50B705A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1588.3854633565127 545.70185276548921 776.45639739031162 ;
	setAttr ".r" -type "double3" -21.338352729443042 -87.399999999961182 3.5056714874620154e-14 ;
	setAttr ".rp" -type "double3" -2.6645352591003757e-15 0 -1.4210854715202004e-14 ;
	setAttr ".rpt" -type "double3" -2.1055342060232206e-15 7.4170388050683679e-15 2.5668695373265536e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B9300FFF-48C7-2019-F338-B2AC0A5624B3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 1549.570463655393;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 22.88422793135264 -19.701865276555719 -46.059544756192942 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "199E26A6-4E5E-70F7-2A70-E7A1BC83671F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 106.33236966905542 1000.1 387.22586616977105 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "033481DE-4693-0456-AB6C-63B661570A5A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 685.46514015764274;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "14B0C611-41BE-D1CD-2A90-FDBD25E44B56";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 337.61203818527275 97.222481658732235 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F445776C-42F1-8BD5-75BC-D88365B61C13";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 582.98081228679382;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "AE4BF48E-496B-2F0D-03A9-229879FC73AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 -207.20676487405186 650.20972491183727 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CCD6036A-44E4-F3AF-B4E0-6E9299A140AD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 637.10434003017417;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "929BF06E-4FCB-5110-6F16-FC93474F5D22";
	setAttr ".t" -type "double3" 0 13.143418125304098 8.3204521558208295 ;
	setAttr ".s" -type "double3" 17.646946427610839 1.8641368982560083 17.646946427610839 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "11F58A7E-419F-B163-FDB0-5288E23C4146";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "924069BF-4451-9750-5FB9-FF8241630297";
	setAttr ".t" -type "double3" 304.30198486408455 108.34142825406904 52.34627762445318 ;
	setAttr ".s" -type "double3" 19.362009208439201 2.6066511844386535 32.270014946990017 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "20C3C5F8-4A23-0AC2-03C7-41ADE2B5B980";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "96A0D5C6-4A57-9CC8-841B-55A20E8871DF";
	setAttr ".t" -type "double3" 333.21657853914303 128.40299040469671 52.34627762445318 ;
	setAttr ".s" -type "double3" 19.362009208439201 2.6066511844386535 32.270014946990017 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "961ED945-4462-D293-F71F-E7BF305C0622";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "4938AD57-47CB-FA7B-1CD8-4C8052AB789E";
	setAttr ".t" -type "double3" 359.64731945356874 136.41451580578109 52.34627762445318 ;
	setAttr ".s" -type "double3" 19.362009208439201 2.6066511844386535 32.270014946990017 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "81A25318-443E-E08B-6256-3F9F7A95AA7E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 5.5179706 0 0 5.5179706 
		0 0 5.5179706 0 0 5.5179706;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "5AB64432-4027-63DC-C2A7-26938B08AFD8";
	setAttr ".t" -type "double3" 326.99594350083555 118.82457440225258 272.16173083610914 ;
	setAttr ".r" -type "double3" 0 -57.950208750759849 0 ;
	setAttr ".s" -type "double3" 19.362009208439201 2.6066511844386535 32.270014946990017 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "044E7A73-42E3-D2C0-5641-9F974836BC56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 5.5179706 0 0 5.5179706 
		0 0 5.5179706 0 0 5.5179706;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pTorus1";
	rename -uid "8EDCDDFF-4BE4-F871-CF7F-258A7C8D0E4C";
	setAttr ".t" -type "double3" 107.79726465419506 13.44911493751809 412.95039975709051 ;
	setAttr ".s" -type "double3" 54.085576874113713 113.89612252779577 54.085576874113713 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "3033BB27-4D34-74C3-70FD-0989999A2F7B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube6";
	rename -uid "DF0AF5E6-46C3-32F5-1FFD-7DBFD07CB082";
	setAttr ".t" -type "double3" 69.638694381166971 -28.674763949148712 52.34627762445318 ;
	setAttr ".s" -type "double3" 38.863426824615445 398.46626906030372 32.270014946990017 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "35A9B2AB-465F-1406-D42F-38A5A99AC088";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "BDCEA97D-4841-F95C-78FA-0A97E8511A0F";
	setAttr ".t" -type "double3" 365.44572142999107 -63.748318349108999 71.451745201163533 ;
	setAttr ".s" -type "double3" 9.9157067364839868 398.46626906030372 9.2731901713591043 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "DF3F19B3-45CE-F5D4-C2C0-098746552812";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "3B4C6759-4022-339E-2B8E-72A7AB7F9E94";
	setAttr ".t" -type "double3" 365.44572142999107 -63.748318349108999 139.18988827525146 ;
	setAttr ".s" -type "double3" 9.9157067364839868 398.46626906030372 9.2731901713591043 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "A5CCE737-4797-E0B5-0181-A7B70E878E7A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "90F56C73-4BD4-2AA1-96CF-0CB655500CF1";
	setAttr ".t" -type "double3" 365.44572142999107 -63.748318349108999 214.90871663739941 ;
	setAttr ".s" -type "double3" 9.9157067364839868 398.46626906030372 9.2731901713591043 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "9D817BFA-4C8E-4241-89C5-958644DF3099";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	rename -uid "32CD8C75-4AFE-6F62-9075-0CB8EF9D3B73";
	setAttr ".t" -type "double3" 322.81104200185581 -81.692486906456139 273.21975065775172 ;
	setAttr ".s" -type "double3" 9.9157067364839868 398.46626906030372 9.2731901713591043 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "00D41C12-469A-DE81-2125-D3B6442596CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "D49156D9-457D-8D38-1C24-F789FE665150";
	setAttr ".t" -type "double3" 196.68798716446355 -80.825741419618566 351.66423794646289 ;
	setAttr ".s" -type "double3" 9.9157067364839868 398.46626906030372 9.2731901713591043 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "A7433A9A-4521-FEA7-6581-0E96D49DFE03";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12";
	rename -uid "4C5BC005-4A4B-6756-C05D-1EBDCCAFD331";
	setAttr ".t" -type "double3" 258.34945495300684 -177.92316002813419 305.50162834909884 ;
	setAttr ".s" -type "double3" 9.9157067364839868 199.23510951115807 9.2731901713591043 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "389952ED-4883-6455-EE38-C18608CD4A0E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13";
	rename -uid "056753BA-498E-2D49-02FF-398B3D1E29E3";
	setAttr ".t" -type "double3" 264.18660773945038 67.999247171678633 310.6550345294213 ;
	setAttr ".s" -type "double3" 9.9157067364839868 99.459698602477332 9.2731901713591043 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "6C59696F-4C7F-1D1C-08AF-D0BEA08D80D6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	rename -uid "AB5D55D8-4BD1-D32E-1467-3E92C549AACC";
	setAttr ".t" -type "double3" -27.361817214939279 -249.96330479635884 553.60962497905416 ;
	setAttr ".s" -type "double3" 385.20365511026546 8.7708668612620535 642.00608388438638 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "237E6F7F-4EA1-E86A-2B1C-B6B175ADE91E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51999998092651367 0.35000002384185791 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[16]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[17]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[18]" -type "float3" 0 -2.8908253e-06 6.9849193e-10 ;
	setAttr ".pt[19]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[28]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[29]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[30]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[31]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[32]" -type "float3" -2.6077032e-08 -2.8610234e-06 -2.9802322e-08 ;
	setAttr ".pt[33]" -type "float3" 2.3283064e-09 -2.7024225e-07 5.5879354e-09 ;
	setAttr ".pt[34]" -type "float3" -2.6077032e-08 5.6843419e-14 -1.4901161e-07 ;
	setAttr ".pt[35]" -type "float3" -8.9406967e-08 0 -1.4901161e-07 ;
	setAttr ".pt[36]" -type "float3" -2.9802322e-08 5.6843419e-14 -1.4901161e-07 ;
	setAttr ".pt[37]" -type "float3" -2.9802322e-08 5.6843419e-14 -2.9802322e-08 ;
	setAttr ".pt[38]" -type "float3" -8.9406967e-08 0 -2.9802322e-08 ;
	setAttr ".pt[39]" -type "float3" 8.9406967e-08 0 -2.9802322e-08 ;
	setAttr ".pt[40]" -type "float3" 8.9406967e-08 0 -1.4901161e-07 ;
	setAttr ".pt[41]" -type "float3" -2.9802322e-08 0 -2.9802322e-08 ;
	setAttr ".pt[42]" -type "float3" -2.6077032e-08 0 -2.9802322e-08 ;
	setAttr ".pt[43]" -type "float3" -2.9802322e-08 0 2.9802322e-08 ;
	setAttr ".pt[44]" -type "float3" -2.6077032e-08 0 2.9802322e-08 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube15";
	rename -uid "4C380764-4922-8EF9-FA4F-B6A38E7B8621";
	setAttr ".t" -type "double3" -27.361817214939279 -249.96330479635884 1277.872670662239 ;
	setAttr ".s" -type "double3" 385.20365511026546 8.7708668612620535 642.00608388438638 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "879BF8FD-4353-D1E1-EA89-28B27AB98DA7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51999998092651367 0.35000002384185791 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[16]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[17]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[18]" -type "float3" 0 -2.8908253e-06 6.9849193e-10 ;
	setAttr ".pt[19]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[28]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[29]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[30]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[31]" -type "float3" 0 -2.8610229e-06 0 ;
	setAttr ".pt[32]" -type "float3" -2.6077032e-08 -2.8610234e-06 -2.9802322e-08 ;
	setAttr ".pt[33]" -type "float3" 2.3283064e-09 -2.7024225e-07 5.5879354e-09 ;
	setAttr ".pt[34]" -type "float3" -2.6077032e-08 5.6843419e-14 -1.4901161e-07 ;
	setAttr ".pt[35]" -type "float3" -8.9406967e-08 0 -1.4901161e-07 ;
	setAttr ".pt[36]" -type "float3" -2.9802322e-08 5.6843419e-14 -1.4901161e-07 ;
	setAttr ".pt[37]" -type "float3" -2.9802322e-08 5.6843419e-14 -2.9802322e-08 ;
	setAttr ".pt[38]" -type "float3" -8.9406967e-08 0 -2.9802322e-08 ;
	setAttr ".pt[39]" -type "float3" 8.9406967e-08 0 -2.9802322e-08 ;
	setAttr ".pt[40]" -type "float3" 8.9406967e-08 0 -1.4901161e-07 ;
	setAttr ".pt[41]" -type "float3" -2.9802322e-08 0 -2.9802322e-08 ;
	setAttr ".pt[42]" -type "float3" -2.6077032e-08 0 -2.9802322e-08 ;
	setAttr ".pt[43]" -type "float3" -2.9802322e-08 0 2.9802322e-08 ;
	setAttr ".pt[44]" -type "float3" -2.6077032e-08 0 2.9802322e-08 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "746B9A44-4FC8-A8C8-3BDB-26BE1965A01C";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "55C0BD0C-426A-7AFF-41FF-5097985F5A28";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F9961720-4B8A-0306-3ECF-0F818B20FF33";
createNode displayLayerManager -n "layerManager";
	rename -uid "F2833A0C-484C-E4C2-AB16-D5B6E5FA83BD";
createNode displayLayer -n "defaultLayer";
	rename -uid "6B444C8B-49DE-3BC3-D831-F79437B61F34";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B9F3EA47-4811-D749-E188-789DA7B14729";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E9B24406-496E-23CC-0578-B289A29EDC9A";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "2DFD2A91-496C-B0B7-EA4D-279EA7B3723C";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "37718599-4D5B-4F9E-4E93-9FA4604FA41B";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 13.143418 -0.50302106 ;
	setAttr ".rs" 43159;
	setAttr ".lt" -type "double3" 0 -1.1123291279588696e-15 9.0828566141136893 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.8234732138054195 12.211349676176095 -0.50302105798458996 ;
	setAttr ".cbx" -type "double3" 8.8234732138054195 14.075486574432102 -0.50302105798458996 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "EE83E66D-4D45-399A-B263-0DBC1ABA2982";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.823473 13.143417 -5.0444493 ;
	setAttr ".rs" 65125;
	setAttr ".lt" -type "double3" -1.7763568394002505e-15 -3.5527136788005009e-15 26.731743410795652 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.8234726878854328 12.211348787286353 -9.5858780091781934 ;
	setAttr ".cbx" -type "double3" -8.8234726878854328 14.075486574432102 -0.50302105798458996 ;
createNode polySplit -n "polySplit1";
	rename -uid "CA948BC1-408D-7C58-43B4-E180C9378868";
	setAttr -s 5 ".e[0:4]"  0.683002 0.683002 0.683002 0.683002 0.683002;
	setAttr -s 5 ".d[0:4]"  -2147483628 -2147483625 -2147483623 -2147483627 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "FB49CAE8-4F5E-3104-5BEF-2F9022DCD22D";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -31.318258 13.143417 -9.5858784 ;
	setAttr ".rs" 51594;
	setAttr ".lt" -type "double3" 0 7.3570694799220018 13.809999199436131 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.555211978160528 12.211347898396612 -9.5858780091781934 ;
	setAttr ".cbx" -type "double3" -27.081305157364493 14.075486574432102 -9.5858780091781934 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "FC5AEF31-432F-AE5E-465D-F493192EF622";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -31.318254 4.1905665 -23.395876 ;
	setAttr ".rs" 48147;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 1.5977878245681098e-16 5.9478344103006222 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.555207770800635 3.2584966486465667 -23.395876301634686 ;
	setAttr ".cbx" -type "double3" -27.081303053684547 5.1226362135717984 -23.395876301634686 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "7DF087C8-4E4A-0195-DA57-0DBC76C5406C";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[20]" -type "float3" 0 -0.85604322 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.85604322 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.85604322 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.85604322 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "4A87503D-400A-EEED-C0FF-E1B4C7DFCDB8";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -27.081301 4.1905661 -26.369793 ;
	setAttr ".rs" 36076;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 3.9487614081343779e-16 10.476935565477945 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -27.0813009500046 3.2584966486465667 -29.343711590661499 ;
	setAttr ".cbx" -type "double3" -27.0813009500046 5.122635324682058 -23.39587419795474 ;
createNode polySplit -n "polySplit2";
	rename -uid "C7D7BAB9-4D64-A050-DA86-F68438002818";
	setAttr -s 5 ".e[0:4]"  0.38834301 0.38834301 0.38834301 0.38834301
		 0.38834301;
	setAttr -s 5 ".d[0:4]"  -2147483596 -2147483595 -2147483593 -2147483591 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "BE646800-479F-7E61-0BC9-F3A5039395A2";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.80851 4.1905661 -23.395872 ;
	setAttr ".rs" 52363;
	setAttr ".lt" -type "double3" -3.5527136788005009e-15 -3.1627181836993126 12.436182887964748 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.012655609236329 3.2584966486465667 -23.395872094274793 ;
	setAttr ".cbx" -type "double3" -16.604363698026773 5.122635324682058 -23.395872094274793 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "4DA5F89A-42C9-7EA2-7DE8-5D80E662AB49";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.808508 1.0278474 -10.959688 ;
	setAttr ".rs" 64771;
	setAttr ".lt" -type "double3" 0 0 6.4577764017384069 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.012655609236329 0.095778060998041425 -10.959688301839106 ;
	setAttr ".cbx" -type "double3" -16.604361594346827 1.9599167370335309 -10.959688301839106 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "56AD866C-4D8E-FE31-C27A-EAB7B53EA0C0";
	setAttr ".ics" -type "componentList" 1 "f[40]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -16.604361 1.0278482 -7.7307992 ;
	setAttr ".rs" 46466;
	setAttr ".lt" -type "double3" 0 7.7822253670094641e-17 53.216288982533349 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -16.604360542506853 0.095778949887781906 -10.959688301839106 ;
	setAttr ".cbx" -type "double3" -16.604360542506853 1.9599176259232731 -4.5019104754109733 ;
createNode polySplit -n "polySplit3";
	rename -uid "83B164F1-47DC-8D14-7102-36A84C58E315";
	setAttr -s 5 ".e[0:4]"  0.56722802 0.56722802 0.56722802 0.56722802
		 0.56722802;
	setAttr -s 5 ".d[0:4]"  -2147483564 -2147483561 -2147483559 -2147483563 -2147483564;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "200608E9-4D8F-69AB-63FC-3AAA6A9228E8";
	setAttr ".ics" -type "componentList" 1 "f[44]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 25.09667 1.0278482 -4.5019107 ;
	setAttr ".rs" 40808;
	setAttr ".lt" -type "double3" 0 0 104.08004908863929 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 13.581410325803311 0.095778949887781906 -4.5019104754109733 ;
	setAttr ".cbx" -type "double3" 36.611928281464323 1.9599176259232731 -4.5019104754109733 ;
createNode polySplit -n "polySplit4";
	rename -uid "B1A456B7-4B34-596E-1BD1-50ABD477EDCD";
	setAttr -s 5 ".e[0:4]"  0.85211402 0.85211402 0.85211402 0.85211402
		 0.85211402;
	setAttr -s 5 ".d[0:4]"  -2147483548 -2147483547 -2147483545 -2147483543 -2147483548;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "64E40E52-4185-990D-205A-AF8C440B712E";
	setAttr ".ics" -type "componentList" 1 "f[52]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 36.611923 1.0278482 91.882149 ;
	setAttr ".rs" 34811;
	setAttr ".lt" -type "double3" -1.4210854715202004e-14 2.2708429039974496e-16 9.1068111301671593 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 36.611924074104429 0.095778949887781906 84.186160483727392 ;
	setAttr ".cbx" -type "double3" 36.611924074104429 1.9599176259232731 99.578138717938458 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "018CF4CC-4C00-BA70-BB08-9BAB42157A5A";
	setAttr ".ics" -type "componentList" 1 "f[52]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 45.718735 1.0278482 91.882149 ;
	setAttr ".rs" 52945;
	setAttr ".lt" -type "double3" -2.8421709430404007e-14 3.6768364494414216e-16 22.946814551559186 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 45.718733525167472 0.095778949887781906 84.186160483727392 ;
	setAttr ".cbx" -type "double3" 45.718733525167472 1.9599176259232731 99.578130303218671 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "F4F9D2F3-437B-64B0-1DA1-21BA2AD28EDA";
	setAttr ".dc" -type "componentList" 1 "f[58:61]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "DB8ADB59-457E-784B-C763-66AF6C337C98";
	setAttr ".ics" -type "componentList" 1 "e[116:119]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "99A93EDC-4CA4-9021-5DE6-8BBD463F8E58";
	setAttr ".ics" -type "componentList" 3 "e[106]" "e[110:111]" "e[114]";
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "511723A9-4C80-6F2B-A6C5-0C96FD2C0F9E";
	setAttr ".ics" -type "componentList" 1 "f[52]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 68.66555 1.0278482 91.882141 ;
	setAttr ".rs" 39400;
	setAttr ".lt" -type "double3" -1.4210854715202004e-14 -2.7878463194604109e-17 17.903673022966785 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 68.66554815944211 0.095778949887781906 84.186160483727392 ;
	setAttr ".cbx" -type "double3" 68.66554815944211 1.9599176259232731 99.578121888498885 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "5EB5AF3C-47B9-5ECB-4DF0-A185457040EB";
	setAttr ".ics" -type "componentList" 1 "f[52]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 86.569214 1.0278482 91.882133 ;
	setAttr ".rs" 37720;
	setAttr ".lt" -type "double3" 0 1.5908606508408538e-16 32.122276819312418 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 86.569215065629024 0.095778949887781906 84.186160483727392 ;
	setAttr ".cbx" -type "double3" 86.569215065629024 1.9599176259232731 99.578113473779112 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "1F0EAEB7-4A2C-3AC7-0939-348C1D1CC20D";
	setAttr ".ics" -type "componentList" 1 "f[68]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 102.63036 1.0278482 84.186157 ;
	setAttr ".rs" 63914;
	setAttr ".lt" -type "double3" 0 1.2178967276197244e-16 66.091388268841655 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 86.569215065629024 0.095778949887781906 84.186160483727392 ;
	setAttr ".cbx" -type "double3" 118.69149064233676 1.9599176259232731 84.186160483727392 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "AFBC2A54-4B4C-9C49-B8FB-E5802E7F7771";
	setAttr ".ics" -type "componentList" 2 "f[52]" "f[74]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 118.69149 1.0278482 58.836441 ;
	setAttr ".rs" 55990;
	setAttr ".lt" -type "double3" -4.2632564145606011e-14 -2.241922761068379e-16 83.421599638737987 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 118.69149064233676 0.095778949887781906 18.094765564908876 ;
	setAttr ".cbx" -type "double3" 118.69149064233676 1.9599176259232731 99.578113473779112 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "66176C78-4ADB-2DD9-3ED1-CF8FD06AFBDB";
	setAttr ".ics" -type "componentList" 1 "f[74]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 202.11308 1.0278482 51.140465 ;
	setAttr ".rs" 46304;
	setAttr ".lt" -type "double3" 0 -18.30743876540755 42.688608615799581 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 202.1130872102801 0.095778949887781906 18.094765564908876 ;
	setAttr ".cbx" -type "double3" 202.1130872102801 1.9599176259232731 84.186160483727392 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "CB581AA1-44CE-31DA-B6C4-A69722AE27B0";
	setAttr ".ics" -type "componentList" 1 "f[74]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 244.80168 19.335287 51.140465 ;
	setAttr ".rs" 65363;
	setAttr ".lt" -type "double3" 6.715517810352958e-15 2.1779119903589419e-15 17.784001002373003 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 244.80168434804719 18.403216056752385 34.31157987665447 ;
	setAttr ".cbx" -type "double3" 244.80168434804719 20.267356510567357 67.969346171981798 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "4115175C-42BD-49BB-EC9A-568332939851";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[80]" -type "float3" 0 0 -0.91895854 ;
	setAttr ".tk[81]" -type "float3" 0 0 -0.91895854 ;
	setAttr ".tk[84]" -type "float3" 0 0 0.91895866 ;
	setAttr ".tk[85]" -type "float3" 0 0 0.91895866 ;
	setAttr ".tk[86]" -type "float3" 0 0 -0.91895854 ;
	setAttr ".tk[87]" -type "float3" 0 0 -0.91895854 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.91895866 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.91895866 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "9F260D48-4F38-72CD-80B8-AEAB7ADE59A9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[90:93]" -type "float3"  2.81916738 0 0 2.81916738
		 0 0 2.81916738 0 0 2.81916738 0 0;
createNode polySplit -n "polySplit5";
	rename -uid "14916868-4454-8FE0-4F5C-8CA4AB2FA2C6";
	setAttr -s 5 ".e[0:4]"  0.71021199 0.71021199 0.71021199 0.71021199
		 0.71021199;
	setAttr -s 5 ".d[0:4]"  -2147483476 -2147483473 -2147483471 -2147483475 -2147483476;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "F15AE08B-42B9-DA18-E7B6-5DB495BAC2FA";
	setAttr -s 5 ".e[0:4]"  0.51241302 0.51241302 0.51241302 0.51241302
		 0.51241302;
	setAttr -s 5 ".d[0:4]"  -2147483476 -2147483473 -2147483471 -2147483475 -2147483476;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "2A3CB94D-4607-325B-3127-468D491D780C";
	setAttr ".dc" -type "componentList" 1 "f[90:93]";
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "158C5D8C-438D-0E2F-F3E5-66939ABD4A43";
	setAttr ".ics" -type "componentList" 1 "e[188:191]";
createNode polyCloseBorder -n "polyCloseBorder4";
	rename -uid "9BAA6247-4DA8-3E23-12BA-A39ABDDA260B";
	setAttr ".ics" -type "componentList" 1 "e[184:187]";
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "E8EDAAAA-42F3-1CC4-7048-DC80E100A4FC";
	setAttr ".ics" -type "componentList" 1 "f[89]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 302.55017 37.305138 51.140457 ;
	setAttr ".rs" 57041;
	setAttr ".lt" -type "double3" -5.6843418860808015e-14 7.1054273576010019e-15 42.463904367466682 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 292.76493077728094 37.30513728910347 34.31157356561463 ;
	setAttr ".cbx" -type "double3" 312.33538117122077 37.30513728910347 67.969341964621904 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "4B72C38D-4DB9-2FF2-06EB-D5B6A7743DE4";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[90:98]" -type "float3"  0 9.1397686 0 0 9.1397686
		 0 0 9.1397686 0 0 9.1397686 0 0 9.1397686 0 0 9.1397686 0 0 9.1397686 0 0 9.1397686
		 0 0 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "6E076D5B-4B69-5C27-3B6D-6A9E667D5B1A";
	setAttr ".ics" -type "componentList" 1 "f[89]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 302.55014 79.769043 51.140453 ;
	setAttr ".rs" 62790;
	setAttr ".lt" -type "double3" 0 0 2.9008909458235905 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 292.76493077728094 79.769039332508001 34.31157356561463 ;
	setAttr ".cbx" -type "double3" 312.33534751234163 79.769039332508001 67.969333549902117 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "646230C2-409D-C169-20F6-FC920C8BFBFA";
	setAttr ".dc" -type "componentList" 1 "f[96:99]";
createNode polyCloseBorder -n "polyCloseBorder5";
	rename -uid "4F481305-44C0-F1C7-C3E5-47B5CD6B0D38";
	setAttr ".ics" -type "componentList" 3 "e[179]" "e[182:183]" "e[186]";
createNode polyCloseBorder -n "polyCloseBorder6";
	rename -uid "E274F1E0-42E5-156A-8288-8EBFFAA1AA97";
	setAttr ".ics" -type "componentList" 1 "e[192:195]";
createNode polyCube -n "polyCube2";
	rename -uid "24BB06D9-4A78-0A12-07A0-A091BE0921D7";
	setAttr ".cuv" 4;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "51D12D3A-4437-D608-A9B1-2A99C20B360F";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[86]" -type "float2" -3.2196468e-15 0.074701622 ;
	setAttr ".uvtk[87]" -type "float2" -1.0158541e-14 2.8263637e-06 ;
	setAttr ".uvtk[88]" -type "float2" -4.3853809e-15 0.0046751001 ;
	setAttr ".uvtk[89]" -type "float2" -6.605827e-15 -0.045962818 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "C4D104B9-47B1-A7FA-0462-E1AD25A466C9";
	setAttr ".ics" -type "componentList" 1 "vtx[80:83]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak5";
	rename -uid "F892BEC9-4122-D7EC-FFB8-499F4BE5B618";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[76]" -type "float3" 0 0 2.297487 ;
	setAttr ".tk[77]" -type "float3" 0 0 2.297487 ;
	setAttr ".tk[78]" -type "float3" 0 0 2.297487 ;
	setAttr ".tk[79]" -type "float3" 0 0 2.297487 ;
	setAttr ".tk[82]" -type "float3" 0 0 -1.7911762 ;
	setAttr ".tk[83]" -type "float3" 0 0 -1.7911762 ;
	setAttr ".tk[102]" -type "float3" -1.5886509 -14.113092 0 ;
	setAttr ".tk[103]" -type "float3" -1.5886509 -14.113092 0 ;
	setAttr ".tk[104]" -type "float3" -1.5886509 -14.113092 0 ;
	setAttr ".tk[105]" -type "float3" -1.5886509 -14.113092 0 ;
	setAttr ".tk[106]" -type "float3" -1.5886509 -14.113092 0 ;
	setAttr ".tk[107]" -type "float3" -1.5886509 -14.113092 0 ;
	setAttr ".tk[108]" -type "float3" -1.5886509 -14.113092 0 ;
	setAttr ".tk[109]" -type "float3" -1.5886509 -14.113092 0 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "94AB0793-4964-B1BF-7EA4-BAA03CCEC56F";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[74]" -type "float2" 3.0475622e-14 -1.7602007e-06 ;
	setAttr ".uvtk[75]" -type "float2" 2.5146552e-14 1.8032762e-06 ;
	setAttr ".uvtk[82]" -type "float2" 0 -2.7776746e-06 ;
	setAttr ".uvtk[83]" -type "float2" 9.7144515e-15 4.8289121e-06 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "BB55D0FE-403B-8CE2-AD30-B8842F1BFACD";
	setAttr ".ics" -type "componentList" 2 "vtx[68:69]" "vtx[76:77]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak6";
	rename -uid "AFD0F89A-433F-9B25-89DB-9785F2CBC3BC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[76]" -type "float3" 0 0 1.4477158 ;
	setAttr ".tk[77]" -type "float3" 0 0 1.4477158 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "102DE0CF-4421-B6FD-FDD4-E1B27510F7E2";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 539\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 975\n            -height 539\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 539\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1958\n            -height 1122\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1958\\n    -height 1122\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1958\\n    -height 1122\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3133982A-4FC2-224D-EE19-33B1FCE931FA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTorus -n "polyTorus1";
	rename -uid "F159F129-4D4A-21F8-7DF6-1CA8D55F1905";
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "E723BD51-4051-1472-8DE6-B09DDA4E2AC5";
	setAttr ".ics" -type "componentList" 12 "f[1]" "f[6]" "f[11]" "f[14]" "f[21]" "f[25]" "f[29]" "f[33]" "f[37]" "f[41]" "f[43]" "f[46]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.52836025 8.0177059 -6.0998955 ;
	setAttr ".rs" 36431;
	setAttr ".lt" -type "double3" 0 0 0.42370018803997667 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.555203563440742 1.9599176259232731 -29.343711590661499 ;
	setAttr ".cbx" -type "double3" 36.611924074104429 14.075493685550031 17.143920636346369 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "97175332-41C6-AD6C-49CC-E194A7CCC5E7";
	setAttr ".uopa" yes;
	setAttr -s 74 ".tk";
	setAttr ".tk[0]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[1]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[2]" -type "float3" 0 3.8146973e-06 0 ;
	setAttr ".tk[3]" -type "float3" 0 3.8146973e-06 0 ;
	setAttr ".tk[4]" -type "float3" 0 3.8146973e-06 0 ;
	setAttr ".tk[5]" -type "float3" 0 3.8146973e-06 0 ;
	setAttr ".tk[6]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[7]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[8]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[9]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[10]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[11]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[12]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[13]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[14]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[15]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[16]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[17]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[18]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[19]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[20]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[21]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[22]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[23]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[24]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[25]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[26]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[27]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[28]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[29]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[30]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[31]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[32]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[33]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[34]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[35]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[36]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[37]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[38]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[39]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[45]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[47]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[50]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[51]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[76]" -type "float3" 0 0 1.0765746 ;
	setAttr ".tk[77]" -type "float3" 0 0 1.0765746 ;
	setAttr ".tk[78]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[79]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[80]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[81]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[82]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[83]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[84]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[85]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[86]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[87]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[88]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[89]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[90]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[91]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[92]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[93]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[94]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[95]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[96]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[97]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[98]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[99]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[100]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[101]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[102]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[103]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[104]" -type "float3" 0 9.6372271 0 ;
	setAttr ".tk[105]" -type "float3" 0 9.6372271 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "3713B3D1-4B2E-8510-8809-6AB530570734";
	setAttr ".ics" -type "componentList" 12 "f[1]" "f[6]" "f[11]" "f[14]" "f[21]" "f[25]" "f[29]" "f[33]" "f[37]" "f[41]" "f[43]" "f[46]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.52836025 8.438138 -6.0998955 ;
	setAttr ".rs" 52862;
	setAttr ".lt" -type "double3" 0 3.5527136788005009e-15 8.7450550833356413 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.555203563440742 2.3770824703029501 -29.343711590661499 ;
	setAttr ".cbx" -type "double3" 36.611924074104429 14.499193647306024 17.143920636346369 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "D74AD03A-4B06-157B-BB69-A3A4F8AA3F5C";
	setAttr ".ics" -type "componentList" 1 "f[147]";
	setAttr ".ix" -type "matrix" 17.646946427610839 0 0 0 0 1.8641368982560083 0 0 0 0 17.646946427610839 0
		 0 13.143418125304098 8.3204521558208295 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 25.09643 6.756146 -4.5030212 ;
	setAttr ".rs" 50302;
	setAttr ".off" 0.80000001192092896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 13.580934894135432 2.3836184765690067 -4.5041319614343465 ;
	setAttr ".cbx" -type "double3" 36.611924074104429 11.128673082660317 -4.5019104754109733 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "3B0F3BEB-4391-50EC-6FB4-D38DF7E54A72";
	setAttr ".dc" -type "componentList" 1 "f[147]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "CED0FADB-41CA-F022-C3B1-B6A9F487EF4B";
	setAttr ".dc" -type "componentList" 1 "f[151]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "5EC228E4-44AD-01E1-33A6-76908610AE6E";
	setAttr ".dc" -type "componentList" 1 "f[121]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "8148318E-4AA4-16DF-DC4E-9587B8F38674";
	setAttr ".dc" -type "componentList" 2 "f[100]" "f[125]";
createNode polyNormal -n "polyNormal1";
	rename -uid "B392C756-4A71-F56D-049C-AC8AA28D1141";
	setAttr ".ics" -type "componentList" 12 "f[3]" "f[8]" "f[13]" "f[16]" "f[19]" "f[23]" "f[27]" "f[31]" "f[35]" "f[39]" "f[48]" "f[147]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal2";
	rename -uid "04057EF0-46A5-5133-DED4-E097CD840944";
	setAttr ".ics" -type "componentList" 1 "f[45]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal3";
	rename -uid "311B21B1-4C36-BDC4-8E77-B09B17312319";
	setAttr ".ics" -type "componentList" 24 "f[0]" "f[2]" "f[4:5]" "f[7]" "f[9:10]" "f[12]" "f[15]" "f[17:18]" "f[20]" "f[22]" "f[24]" "f[26]" "f[28]" "f[30]" "f[32]" "f[34]" "f[36]" "f[38]" "f[40]" "f[42]" "f[47]" "f[49]" "f[100:148]" "f[150]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal4";
	rename -uid "2E5BEB85-4D77-634C-4DE8-7E902063D981";
	setAttr ".ics" -type "componentList" 2 "f[148]" "f[150]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal5";
	rename -uid "6CBE9CEC-404D-93B0-17FE-0AAE2EE10F7D";
	setAttr ".ics" -type "componentList" 2 "f[148]" "f[150]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal6";
	rename -uid "F5F91CF6-4428-1E4D-2CCF-1195315FDD23";
	setAttr ".ics" -type "componentList" 21 "f[1]" "f[6]" "f[10:14]" "f[19]" "f[21]" "f[23]" "f[25:29]" "f[33]" "f[35]" "f[37:41]" "f[43]" "f[45:46]" "f[48]" "f[105]" "f[110]" "f[113]" "f[118:120]" "f[129]" "f[134]" "f[137]" "f[142:144]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal7";
	rename -uid "83D26651-4148-99D4-B69E-0EBECA7273B4";
	setAttr ".ics" -type "componentList" 6 "f[10]" "f[13]" "f[19]" "f[23]" "f[105]" "f[129]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal8";
	rename -uid "69B0DF20-4A14-74B0-F59D-C49109DE14B4";
	setAttr ".ics" -type "componentList" 4 "f[26]" "f[38:39]" "f[118:119]" "f[142:143]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal9";
	rename -uid "19CA2790-44B4-3178-3BE7-00A79FF1655E";
	setAttr ".ics" -type "componentList" 4 "f[27]" "f[35]" "f[45]" "f[48]";
	setAttr ".unm" no;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 16 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
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
connectAttr "polyNormal9.out" "pCubeShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "polyCube2.out" "pCubeShape2.i";
connectAttr "polyTorus1.out" "pTorusShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace17.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "polyCloseBorder4.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyCloseBorder4.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace18.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyCloseBorder5.ip";
connectAttr "polyCloseBorder5.out" "polyCloseBorder6.ip";
connectAttr "polyCloseBorder6.out" "polyTweakUV1.ip";
connectAttr "polyTweak5.out" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak5.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak6.out" "polyMergeVert2.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace20.mp";
connectAttr "polyMergeVert2.out" "polyTweak7.ip";
connectAttr "polyExtrudeFace20.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace21.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace22.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyNormal2.ip";
connectAttr "polyNormal2.out" "polyNormal3.ip";
connectAttr "polyNormal3.out" "polyNormal4.ip";
connectAttr "polyNormal4.out" "polyNormal5.ip";
connectAttr "polyNormal5.out" "polyNormal6.ip";
connectAttr "polyNormal6.out" "polyNormal7.ip";
connectAttr "polyNormal7.out" "polyNormal8.ip";
connectAttr "polyNormal8.out" "polyNormal9.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
// End of Map.ma
