//Maya ASCII 2018 scene
//Name: Assignment_01_Snowman.ma
//Last modified: Tue, Aug 20, 2019 10:07:05 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "25450076-46F5-BCED-447F-5C90B9413FF5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.406037187897311 4.3047483650190408 -3.2222958505228783 ;
	setAttr ".r" -type "double3" 5.6616472710843011 -263.00000000008004 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E68A7490-436B-D74D-5649-57AC42A389F9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 26.071512772329331;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "E16E61CE-4D21-AD13-67AC-DBAD7DB66153";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9EC9A8EA-4891-58B1-B2CB-02BB1BAB4014";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "28FA6358-4BC6-7572-15DA-F5BE647A6E5E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0B0ADC70-44D2-1286-DD5F-E9835F3F368C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "7FB63938-4D17-2313-8B83-73A47281364A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "49140121-471E-BE72-A9B1-A2957967405E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Snowman";
	rename -uid "38322E9F-41A6-CCE3-3BF0-F895C100D86C";
	setAttr ".t" -type "double3" 1.63 0 3.01 ;
	setAttr ".r" -type "double3" 0 222 0 ;
	setAttr ".s" -type "double3" 1.1 1.1 1.1 ;
createNode transform -n "Snowman_Bottom" -p "Snowman";
	rename -uid "7CEB798C-48BA-09A5-1FE3-229B1AE11B39";
	setAttr ".t" -type "double3" 0 0.85 0 ;
	setAttr ".s" -type "double3" 1 0.87 1 ;
createNode mesh -n "Snowman_BottomShape" -p "Snowman_Bottom";
	rename -uid "C7926DAF-49AA-59AA-8A40-E0A3E0A8BFB1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Snowman_Middle" -p "Snowman";
	rename -uid "074167DF-4986-90D1-A132-B9835F865973";
	setAttr ".t" -type "double3" 0 1.98 0 ;
	setAttr ".s" -type "double3" 0.72 0.62 0.72 ;
createNode mesh -n "Snowman_MiddleShape" -p "Snowman_Middle";
	rename -uid "6DA0AF0C-4952-8AC9-FA52-1EB5E4F48FCF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Snowman_Top" -p "Snowman";
	rename -uid "34E6B518-4D74-68E7-4442-B281A81E8CC4";
	setAttr ".t" -type "double3" 0 2.9 0 ;
	setAttr ".s" -type "double3" 0.57 0.5 0.57 ;
createNode mesh -n "Snowman_TopShape" -p "Snowman_Top";
	rename -uid "8A735866-4782-2CA3-CE31-009DD792EDCE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Hat" -p "Snowman";
	rename -uid "656B8F42-4507-A430-A1F1-E2A1D610141F";
	setAttr ".t" -type "double3" 0 3.202 -0.087 ;
	setAttr ".r" -type "double3" -21.397 0 0 ;
	setAttr ".s" -type "double3" 0.708 0.037 0.708 ;
createNode mesh -n "HatShape" -p "Hat";
	rename -uid "9C4990A9-498F-F43D-505B-90B5E59E8486";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Carrot" -p "Snowman";
	rename -uid "DF1F3F05-4E88-A332-B4D0-BF9A930E478A";
	setAttr ".t" -type "double3" -0.7 2.85 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.092 0.165 0.092 ;
createNode mesh -n "CarrotShape" -p "Carrot";
	rename -uid "FDD0FA46-4F9D-6628-C80F-B1B879F2A2FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Eye_01" -p "Snowman";
	rename -uid "4484D80B-4592-1A3C-6055-BABE0E373F0D";
	setAttr ".t" -type "double3" -0.474 3 0.26 ;
	setAttr ".r" -type "double3" 27.9 0 90 ;
	setAttr ".s" -type "double3" 0.09 0.05 0.09 ;
createNode mesh -n "Eye_01Shape" -p "Eye_01";
	rename -uid "8B3D33AD-4887-3B3A-A803-BC9D1FC0E281";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Eye_02" -p "Snowman";
	rename -uid "707410C5-43BF-8140-1B45-2C93002BEDEB";
	setAttr ".t" -type "double3" -0.5 3 -0.25 ;
	setAttr ".r" -type "double3" -15.5 0 90 ;
	setAttr ".s" -type "double3" 0.09 0.05 0.09 ;
createNode mesh -n "Eye_02Shape" -p "Eye_02";
	rename -uid "353D8FA0-498A-12A6-4760-EAB36313D3BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Mouth_01" -p "Snowman";
	rename -uid "7BFC74D2-4F5A-B386-9A0D-38A7C1D333CE";
	setAttr ".t" -type "double3" -0.45 2.7 0.25 ;
	setAttr ".r" -type "double3" 18.400000000000002 0.43 117 ;
	setAttr ".s" -type "double3" 0.05 0.03 0.05 ;
createNode mesh -n "Mouth_01Shape" -p "Mouth_01";
	rename -uid "33CC4AF5-4139-51EB-CE95-D18758FDD7C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Mouth_02" -p "Snowman";
	rename -uid "940010B5-4582-EA22-1B81-6693CC5363AC";
	setAttr ".t" -type "double3" -0.48 2.64 0.08 ;
	setAttr ".r" -type "double3" 5.75 2.05 130 ;
	setAttr ".s" -type "double3" 0.05 0.03 0.05 ;
createNode mesh -n "Mouth_02Shape" -p "Mouth_02";
	rename -uid "B0A6A889-43C4-44C0-51C2-EA95115AECE3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Mouth_03" -p "Snowman";
	rename -uid "ED965BB3-46FE-AE35-5F18-6A893EAF4FCF";
	setAttr ".t" -type "double3" -0.46 2.64 -0.092 ;
	setAttr ".r" -type "double3" -12.45 9.23 126 ;
	setAttr ".s" -type "double3" 0.05 0.03 0.05 ;
createNode mesh -n "Mouth_03Shape" -p "Mouth_03";
	rename -uid "ED7F8A2E-496F-A7F7-4137-2D923751E8AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Mouth_04" -p "Snowman";
	rename -uid "9FF25A6F-4216-F4E6-0427-F6952F98C42A";
	setAttr ".t" -type "double3" -0.44 2.68 -0.25 ;
	setAttr ".r" -type "double3" -14.999999999999998 4.22 105.5 ;
	setAttr ".s" -type "double3" 0.05 0.03 0.05 ;
createNode mesh -n "Mouth_04Shape" -p "Mouth_04";
	rename -uid "EC8C0728-45E5-8D07-E98A-8996DFE39E75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Button_01" -p "Snowman";
	rename -uid "9250BB2D-43CF-B0A3-3B5A-7693A25618C2";
	setAttr ".t" -type "double3" -0.81 1.33 0.12 ;
	setAttr ".r" -type "double3" 0 0 48.000000000000007 ;
	setAttr ".s" -type "double3" 0.1 0.055 0.1 ;
createNode mesh -n "Button_01Shape" -p "Button_01";
	rename -uid "EB02933D-4D4E-F6DA-4AF9-37933D4FFE6B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Button_02" -p "Snowman";
	rename -uid "A5E1A038-492B-394B-2792-D893DFF26C53";
	setAttr ".t" -type "double3" -0.701 1.84 0.12 ;
	setAttr ".r" -type "double3" 0 0 92 ;
	setAttr ".s" -type "double3" 0.08 0.044 0.08 ;
createNode mesh -n "Button_02Shape" -p "Button_02";
	rename -uid "686961EA-48B6-F4AA-F070-5C92D7EE0BE2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Button_03" -p "Snowman";
	rename -uid "79BDE0A0-44AA-3B60-6F8B-44941D77D076";
	setAttr ".t" -type "double3" -0.62 2.3 0.1 ;
	setAttr ".r" -type "double3" 0 0 58.3 ;
	setAttr ".s" -type "double3" 0.06 0.04 0.06 ;
createNode mesh -n "Button_03Shape" -p "Button_03";
	rename -uid "E68D366F-42EF-B354-DB10-70B128B390E3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "House";
	rename -uid "CA0C8D8B-48CB-F7D8-BF4C-FABE810F8846";
	setAttr ".t" -type "double3" -5.56 0 0 ;
createNode transform -n "House_Body" -p "House";
	rename -uid "E933145B-43B0-280C-56DC-309AE5D408AE";
	setAttr ".t" -type "double3" 0 3.06 0 ;
	setAttr ".s" -type "double3" 6.19 5.9 8.8 ;
createNode mesh -n "House_BodyShape" -p "House_Body";
	rename -uid "468C3ECE-47C4-6096-4E5A-21B3B46885F3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[222:251]" -type "float3"  0.20615365 0.20338982 -0.091660649 
		0.10307682 0.20338982 -0.091660649 0.10307682 0.20338982 -0.054996394 0.20615365 
		0.20338982 -0.054996394 0 0.20338982 -0.091660649 0 0.20338982 -0.054996394 -0.10307682 
		0.20338982 -0.091660649 -0.10307682 0.20338982 -0.054996394 -0.20615365 0.20338982 
		-0.091660649 -0.20615365 0.20338982 -0.054996394 0.10307682 0.20338982 -0.018332141 
		0.20615365 0.20338982 -0.018332141 0 0.20338982 -0.018332141 -0.10307682 0.20338982 
		-0.018332141 -0.20615365 0.20338982 -0.018332141 0.10307682 0.20338982 0.014582377 
		0.20615365 0.20338982 0.014582377 0 0.20338982 0.014582377 -0.10307682 0.20338982 
		0.014582377 -0.20615365 0.20338982 0.014582377 0.10307682 0.20338982 0.072495282 
		0.20615365 0.20338982 0.072495282 0 0.20338982 0.072495282 -0.10307682 0.20338982 
		0.072495282 -0.20615365 0.20338982 0.072495282 0.10307682 0.20338982 0.091660649 
		0.20615365 0.20338982 0.091660649 0 0.20338982 0.091660649 -0.10307682 0.20338982 
		0.091660649 -0.20615365 0.20338982 0.091660649;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Chimney" -p "House";
	rename -uid "701F4A09-4F18-6B75-6685-A8B1D306927D";
	setAttr ".t" -type "double3" -1.3 8.8 3.1 ;
	setAttr ".s" -type "double3" 1.87 3.482 1.87 ;
createNode mesh -n "ChimneyShape" -p "Chimney";
	rename -uid "B3F68580-45DD-582D-38F1-2689ED1FD1E7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  -0.047165778 0.11487651 0.047165748 
		0.072834224 0.11487651 0.047165748 0.072834224 0.11487651 -0.072834261 -0.047165778 
		0.11487651 -0.072834261;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Step_01";
	rename -uid "F10330A0-42AA-11B1-C441-5FBA84E7299D";
	setAttr ".t" -type "double3" 0 0 -2.2 ;
	setAttr ".s" -type "double3" 1.3 0.12 1.6 ;
createNode mesh -n "Step_01Shape" -p "Step_01";
	rename -uid "20892994-4E23-5EEE-9B7E-19BE987E3DC8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Step_02";
	rename -uid "06E8B9E3-4DF5-A614-7798-0293E4AD0030";
	setAttr ".t" -type "double3" 2.2 0 -1.3000000000000003 ;
	setAttr ".s" -type "double3" 1.3 0.12 1.6 ;
createNode mesh -n "Step_02Shape" -p "Step_02";
	rename -uid "B3837644-453F-A612-8E9C-BBB6D9F7C6C8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0.25 0 0.375 0.875
		 0.5 0 0.5 1 0.25 0.25 0.375 0.375 0.5 0.25 0.625 0.875 0.75 0 0.5625 0 0.5625 1 0.625
		 0.375 0.75 0.25 0.5625 0.25 0.1875 0.25 0.375 0.4375 0.5 0.5 0.1875 0 0.375 0.8125
		 0.5 0.75 0.5625 0.5 0.625 0.4375 0.8125 0.25 0.625 0.8125 0.8125 0 0.5625 0.75 0.375
		 0.95777273 0.3327727 0 0.4172273 0 0.4172273 1 0.375 1 0.375 0 0.3327727 0.25 0.375
		 0.2922273 0.375 0.25 0.41966653 0.24515234 0.66722727 0 0.625 0.95777273 0.625 1
		 0.625 0 0.58277273 1 0.58277273 0 0.625 0.2922273 0.66722727 0.25 0.58033347 0.24515234
		 0.625 0.25 0.375 0.5 0.125 0.25 0.375 0.4577727 0.16722728 0.25 0.4197652 0.50457633
		 0.16722728 0 0.375 0.79222727 0.375 0.75 0.125 0 0.4197652 0.74542367 0.625 0.5 0.875
		 0.25 0.58023477 0.50457633 0.83277273 0.25 0.625 0.4577727 0.625 0.79222727 0.83277273
		 0 0.58023477 0.74542367 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.30002001 -0.30002001 -0.5 0.5
		 -0.44142723 -0.5 0.44142723 -0.5 0.5 0.30002001 -0.44142723 0.5 0.44142723 -0.30002001 0.5 0.5
		 0.5 -0.5 0.30002001 0.44142723 -0.5 0.44142723 0.30002001 -0.5 0.5 0.5 0.5 0.30002001
		 0.30002001 0.5 0.5 0.44142723 0.5 0.44142723 -0.44142723 0.5 -0.44142723 -0.5 0.5 -0.30002001
		 -0.30002001 0.5 -0.5 -0.5 -0.5 -0.30002001 -0.44142723 -0.5 -0.44142723 -0.30002001 -0.5 -0.5
		 0.44142723 0.5 -0.44142723 0.30002001 0.5 -0.5 0.5 0.5 -0.30002001 0.5 -0.5 -0.30002001
		 0.30002001 -0.5 -0.5 0.44142723 -0.5 -0.44142723;
	setAttr -s 44 ".ed[0:43]"  1 8 0 1 0 1 3 13 0 5 10 0 5 3 1 6 8 1 9 20 0
		 10 9 1 14 19 0 14 13 1 15 0 0 17 22 0 17 15 1 20 19 1 21 6 0 22 21 1 0 3 0 5 1 0
		 8 10 0 9 6 0 13 15 0 17 14 0 19 22 0 21 20 0 0 2 0 2 4 0 4 3 0 2 1 0 5 4 0 8 7 0
		 7 11 0 11 10 0 7 6 0 9 11 0 13 12 0 12 16 0 16 15 0 12 14 0 17 16 0 19 18 0 18 23 0
		 23 22 0 18 20 0 21 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 17 0 18 -4
		mu 0 4 35 28 41 44
		f 4 21 8 22 -12
		mu 0 4 55 50 58 63
		f 4 19 -15 23 -7
		mu 0 4 43 36 62 59
		f 4 20 10 16 2
		mu 0 4 49 51 27 32
		f 8 -5 3 7 6 13 -9 9 -3
		mu 0 8 33 35 44 42 60 58 50 48
		f 8 -13 11 15 14 5 -1 1 -11
		mu 0 8 52 55 63 61 37 40 29 26
		f 4 24 25 26 -17
		mu 0 4 27 31 34 32
		f 4 27 -18 28 -26
		mu 0 4 31 28 35 34
		f 4 29 30 31 -19
		mu 0 4 41 39 45 44
		f 4 32 -20 33 -31
		mu 0 4 39 36 43 45
		f 4 34 35 36 -21
		mu 0 4 49 47 54 51
		f 4 37 -22 38 -36
		mu 0 4 46 50 55 53
		f 4 39 40 41 -23
		mu 0 4 58 56 65 63
		f 4 42 -24 43 -41
		mu 0 4 57 59 62 64
		f 3 -2 -28 -25
		mu 0 3 26 29 30
		f 3 -27 -29 4
		mu 0 3 33 34 35
		f 3 -33 -30 -6
		mu 0 3 37 38 40
		f 3 -8 -32 -34
		mu 0 3 42 44 45
		f 3 -35 -10 -38
		mu 0 3 46 48 50
		f 3 -37 -39 12
		mu 0 3 52 53 55
		f 3 -40 -14 -43
		mu 0 3 56 58 60
		f 3 -16 -42 -44
		mu 0 3 61 63 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Step_03";
	rename -uid "1D211EB3-47C3-C21F-39FC-8B987C1E633C";
	setAttr ".t" -type "double3" 4.1400000000000006 0 -2.7500000000000004 ;
	setAttr ".s" -type "double3" 1.3 0.12 1.6 ;
createNode mesh -n "Step_03Shape" -p "Step_03";
	rename -uid "DB46D0F8-4905-E90B-4B48-788A7940C0DE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0.25 0 0.375 0.875
		 0.5 0 0.5 1 0.25 0.25 0.375 0.375 0.5 0.25 0.625 0.875 0.75 0 0.5625 0 0.5625 1 0.625
		 0.375 0.75 0.25 0.5625 0.25 0.1875 0.25 0.375 0.4375 0.5 0.5 0.1875 0 0.375 0.8125
		 0.5 0.75 0.5625 0.5 0.625 0.4375 0.8125 0.25 0.625 0.8125 0.8125 0 0.5625 0.75 0.375
		 0.95777273 0.3327727 0 0.4172273 0 0.4172273 1 0.375 1 0.375 0 0.3327727 0.25 0.375
		 0.2922273 0.375 0.25 0.41966653 0.24515234 0.66722727 0 0.625 0.95777273 0.625 1
		 0.625 0 0.58277273 1 0.58277273 0 0.625 0.2922273 0.66722727 0.25 0.58033347 0.24515234
		 0.625 0.25 0.375 0.5 0.125 0.25 0.375 0.4577727 0.16722728 0.25 0.4197652 0.50457633
		 0.16722728 0 0.375 0.79222727 0.375 0.75 0.125 0 0.4197652 0.74542367 0.625 0.5 0.875
		 0.25 0.58023477 0.50457633 0.83277273 0.25 0.625 0.4577727 0.625 0.79222727 0.83277273
		 0 0.58023477 0.74542367 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.30002001 -0.30002001 -0.5 0.5
		 -0.44142723 -0.5 0.44142723 -0.5 0.5 0.30002001 -0.44142723 0.5 0.44142723 -0.30002001 0.5 0.5
		 0.5 -0.5 0.30002001 0.44142723 -0.5 0.44142723 0.30002001 -0.5 0.5 0.5 0.5 0.30002001
		 0.30002001 0.5 0.5 0.44142723 0.5 0.44142723 -0.44142723 0.5 -0.44142723 -0.5 0.5 -0.30002001
		 -0.30002001 0.5 -0.5 -0.5 -0.5 -0.30002001 -0.44142723 -0.5 -0.44142723 -0.30002001 -0.5 -0.5
		 0.44142723 0.5 -0.44142723 0.30002001 0.5 -0.5 0.5 0.5 -0.30002001 0.5 -0.5 -0.30002001
		 0.30002001 -0.5 -0.5 0.44142723 -0.5 -0.44142723;
	setAttr -s 44 ".ed[0:43]"  1 8 0 1 0 1 3 13 0 5 10 0 5 3 1 6 8 1 9 20 0
		 10 9 1 14 19 0 14 13 1 15 0 0 17 22 0 17 15 1 20 19 1 21 6 0 22 21 1 0 3 0 5 1 0
		 8 10 0 9 6 0 13 15 0 17 14 0 19 22 0 21 20 0 0 2 0 2 4 0 4 3 0 2 1 0 5 4 0 8 7 0
		 7 11 0 11 10 0 7 6 0 9 11 0 13 12 0 12 16 0 16 15 0 12 14 0 17 16 0 19 18 0 18 23 0
		 23 22 0 18 20 0 21 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 17 0 18 -4
		mu 0 4 35 28 41 44
		f 4 21 8 22 -12
		mu 0 4 55 50 58 63
		f 4 19 -15 23 -7
		mu 0 4 43 36 62 59
		f 4 20 10 16 2
		mu 0 4 49 51 27 32
		f 8 -5 3 7 6 13 -9 9 -3
		mu 0 8 33 35 44 42 60 58 50 48
		f 8 -13 11 15 14 5 -1 1 -11
		mu 0 8 52 55 63 61 37 40 29 26
		f 4 24 25 26 -17
		mu 0 4 27 31 34 32
		f 4 27 -18 28 -26
		mu 0 4 31 28 35 34
		f 4 29 30 31 -19
		mu 0 4 41 39 45 44
		f 4 32 -20 33 -31
		mu 0 4 39 36 43 45
		f 4 34 35 36 -21
		mu 0 4 49 47 54 51
		f 4 37 -22 38 -36
		mu 0 4 46 50 55 53
		f 4 39 40 41 -23
		mu 0 4 58 56 65 63
		f 4 42 -24 43 -41
		mu 0 4 57 59 62 64
		f 3 -2 -28 -25
		mu 0 3 26 29 30
		f 3 -27 -29 4
		mu 0 3 33 34 35
		f 3 -33 -30 -6
		mu 0 3 37 38 40
		f 3 -8 -32 -34
		mu 0 3 42 44 45
		f 3 -35 -10 -38
		mu 0 3 46 48 50
		f 3 -37 -39 12
		mu 0 3 52 53 55
		f 3 -40 -14 -43
		mu 0 3 56 58 60
		f 3 -16 -42 -44
		mu 0 3 61 63 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A732807D-4686-DC25-4EC1-BE8DBB591039";
	setAttr -s 15 ".lnk";
	setAttr -s 15 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5CB46FFB-4E78-824D-8E21-85BFDE33E26C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "52EB9136-49CE-F1E9-EA08-1A83BFAF3A2C";
createNode displayLayerManager -n "layerManager";
	rename -uid "3D0D0320-4A3B-66B3-FDA6-B384A030A273";
createNode displayLayer -n "defaultLayer";
	rename -uid "233515CB-46F7-77E3-01F6-C9B76364954B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "78CE4228-4400-4818-6609-40B694C8C32E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5B853671-44FC-1949-D016-1B9E41FE14D9";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5DB19A10-4969-99DF-6B02-C3AA38F41112";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 291\n            -height 788\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 291\\n    -height 788\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 291\\n    -height 788\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D8411749-403F-C636-7B83-538FC5822417";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "lambert2SG";
	rename -uid "8535027F-48D4-F6B3-D6E8-B1A29FF73B8F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C9FF5F29-4997-93C2-3F88-B6BB3F0AD901";
createNode shadingEngine -n "lambert3SG";
	rename -uid "552503B3-4F21-6CD7-38EC-BFB2162B3199";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "5E20CCF6-4BA2-217D-C20F-A28BD27C309D";
createNode shadingEngine -n "lambert4SG";
	rename -uid "FAFE232B-405F-EC85-F97D-17A1B9994332";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "5A7D06B3-46E0-C1C4-FF4D-A391480F7FDB";
createNode shadingEngine -n "BlackSG";
	rename -uid "7E49445D-4325-61E1-4692-7CBE3415E1A9";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "3DD4C6BF-4B72-EF79-0CE6-449608C7557C";
createNode shadingEngine -n "WhiteSG";
	rename -uid "34FB0AA4-4C7E-64A3-3B91-5CBDEE8FE84F";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "B4031523-4E32-495D-5E09-5BB5B3C2A78B";
createNode shadingEngine -n "OrangeSG";
	rename -uid "1AFC87FF-4A2C-08F3-EE30-A1AD19A23D5D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "B2B81025-401E-AD58-92D3-F693AB645899";
createNode shadingEngine -n "GreySG";
	rename -uid "8EA94115-4B73-2F52-938A-8D95F4DBA5AB";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo7";
	rename -uid "EE8CFAC1-4FBD-5A7C-FED3-128641B51B91";
createNode shadingEngine -n "BrownSG";
	rename -uid "3E77DE25-4EA4-BFC0-791F-068399CC06C7";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo8";
	rename -uid "82547E72-4FEA-C6BF-5013-DCA8AD212759";
createNode polySphere -n "polySphere1";
	rename -uid "415F3BE6-4B70-2ADD-21A6-86B38FE5A6A3";
	setAttr ".sa" 15;
	setAttr ".sh" 15;
createNode polySphere -n "polySphere2";
	rename -uid "14B5A700-48DD-4E99-E189-FF8BBB53B163";
	setAttr ".sa" 15;
	setAttr ".sh" 15;
createNode polySphere -n "polySphere3";
	rename -uid "EFF5B221-48F5-E51D-8FDB-2DA5712D73C0";
	setAttr ".sa" 15;
	setAttr ".sh" 15;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "D6CA6B96-4345-3A32-AA99-61B70868CC4A";
	setAttr ".sa" 15;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "1BFE983C-49B1-A142-1B33-46B7D39FE8AC";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 0.70799999999999996 0 0 0 0 0.036999999999999998 0 0
		 0 0 0.70799999999999996 0 0 3.202 -0.086999999999999994 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0077357828 3.2390001 -0.086999983 ;
	setAttr ".rs" 50410;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.69252843475341797 3.239 -0.79112138986587521 ;
	setAttr ".cbx" -type "double3" 0.708 3.239 0.6171214320659637 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "86944ED2-4AC8-77DD-E1EA-D9B399C8C1C1";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 0.70799999999999996 0 0 0 0 0.036999999999999998 0 0
		 0 0 0.70799999999999996 0 0 3.202 -0.086999999999999994 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0051829726 3.2389996 -0.12429 ;
	setAttr ".rs" 40819;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.46399402427673336 3.2389997177124021 -0.59605135416984556 ;
	setAttr ".cbx" -type "double3" 0.47435996961593624 3.2389997177124021 0.34747134876251218 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "386B4824-4D3F-8085-F95C-68817E2DCB50";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk[30:44]" -type "float3"  -0.30146995 0 0.081553489
		 -0.22081311 0 0.19256818 -0.10197565 0 0.26117909 0.034494333 0 0.27552271 0.16499992
		 0 0.23311886 0.26697552 0 0.14129964 0.32278863 0 0.01594138 0.32278866 0 -0.12128031
		 0.26697558 0 -0.24663858 0.16500001 0 -0.33845782 0.034494411 0 -0.38086167 -0.10197558
		 0 -0.36651814 -0.22081308 0 -0.29790726 -0.30146998 0 -0.18689257 -0.33000001 0 -0.052669495;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "09B308AB-431F-B1C8-6600-C1B916B7B7EE";
	setAttr ".ics" -type "componentList" 2 "f[0:14]" "f[32:46]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "EB4C52B4-4FDF-7D82-66C0-F583A6083EE1";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk[45:59]" -type "float3"  0 16.21621704 0 0 16.21621704
		 0 0 16.21621704 0 0 16.21621704 0 0 16.21621704 0 0 16.21621704 0 0 16.21621704 0
		 0 16.21621704 0 0 16.21621704 0 0 16.21621704 0 0 16.21621704 0 0 16.21621704 0 0
		 16.21621704 0 0 16.21621704 0 0 16.21621704 0;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "450B2793-437C-4F7E-7F7B-72951B10799A";
	setAttr ".sa" 10;
	setAttr ".sh" 3;
	setAttr ".cuv" 3;
createNode polySmoothFace -n "polySmoothFace2";
	rename -uid "77C1D7DB-4162-9532-BD76-079B675DF720";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "8E2024ED-4907-26AA-5529-79B1EE337FA5";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[10:39]" -type "float3"  -0.20225427 0 0.14694636 -0.077254236
		 0 0.23776418 0.077254288 0 0.23776415 0.2022543 0 0.14694631 0.25000003 0 -1.4901161e-08
		 0.20225427 0 -0.14694634 0.077254243 0 -0.23776415 -0.077254258 0 -0.23776414 -0.20225425
		 0 -0.14694631 -0.25 0 0 -0.42080006 0 0.23070577 -0.22455002 0 0.37328976 0.01802836
		 0 0.3732897 0.21427837 0 0.23070571 0.28923917 0 -2.3394822e-08 0.21427833 0 -0.23070575
		 0.018028293 0 -0.3732897 -0.22455004 0 -0.3732897 -0.42080003 0 -0.23070571 -0.49576086
		 0 0 -0.71894765 -0.018181818 0.44495356 -0.34044757 -0.018181818 0.71994996 0.12740426
		 -0.018181818 0.71994984 0.50590432 -0.018181818 0.44495344 0.65047836 -0.018181818
		 -4.5120714e-08 0.50590414 -0.018181818 -0.44495353 0.12740411 -0.018181818 -0.71994984
		 -0.34044763 -0.018181818 -0.71994984 -0.71894765 -0.018181818 -0.44495344 -0.8635217
		 -0.018181818 0;
createNode polySphere -n "polySphere4";
	rename -uid "4504D3E5-4DC7-D5AA-16F1-BDB8124ECD84";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace3";
	rename -uid "6941D300-4EA4-80DE-BC38-28A6D1983AAD";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere5";
	rename -uid "9A55615C-45B0-EED7-D5AF-60833E20E487";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace4";
	rename -uid "A1A1BCAC-4676-C9C5-A340-E9949A2725D0";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere6";
	rename -uid "FD523CD6-407A-9565-BD29-47A053CE71BF";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace5";
	rename -uid "119AFF95-4D0D-93E2-2BCC-C6A2C9A02142";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere7";
	rename -uid "8BF6DEE1-419C-A586-8F4F-8B99A8A919AE";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace6";
	rename -uid "0E2F6B17-484A-5C93-D18E-0DAF5345AA6D";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere8";
	rename -uid "BB02220D-4505-11E9-5C2F-CF9D68CE45CE";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace7";
	rename -uid "2FFFCBF5-48CC-EC55-E8AF-4C92C1A576A1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere9";
	rename -uid "7E8A0E3F-4474-FB57-8341-21A603504968";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace8";
	rename -uid "977E3AED-4943-7A0E-7876-FDAC50B3B2E8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere10";
	rename -uid "959E9A60-42AF-45EA-58C6-1A8F73FC04CD";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace9";
	rename -uid "4E781C01-4727-C70E-078C-A5A5ECB258D6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere11";
	rename -uid "8D0DB170-4ECC-9690-92B5-1EA5DF5EE7A3";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace10";
	rename -uid "EA9E293B-4ADD-910F-E438-DF9E585851AF";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere12";
	rename -uid "29E5759C-46D0-93DC-A5A0-5ABEDA049000";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySmoothFace -n "polySmoothFace11";
	rename -uid "9E46B558-4B1F-8139-E740-A8BEB60C2317";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyCube -n "polyCube1";
	rename -uid "45D61A26-4AD4-FEE4-FAB5-E08532940293";
	setAttr ".sw" 4;
	setAttr ".sh" 4;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "4C816FCC-42AA-4CEE-A859-A1B91A8131A7";
	setAttr ".ics" -type "componentList" 2 "f[73]" "f[78]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.095 2.2850001 -2.0900002 ;
	setAttr ".rs" 48176;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.095 0.10999999999999988 -3.4800000905990602 ;
	setAttr ".cbx" -type "double3" 3.095 4.4599999806284902 -0.70000011920928962 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "2DD9D229-4950-3C67-1529-9DB3651472B4";
	setAttr ".uopa" yes;
	setAttr -s 74 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[50]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[70]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[71]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[72]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[73]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[74]" -type "float3" 0 0 -0.095454544 ;
	setAttr ".tk[75]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[76]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[77]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[78]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[79]" -type "float3" 0 0 0.020454545 ;
	setAttr ".tk[90]" -type "float3" 0 0.18135594 -0.095454544 ;
	setAttr ".tk[91]" -type "float3" 0 0.18135594 0.020454545 ;
	setAttr ".tk[92]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[94]" -type "float3" 0 0.23728813 -0.095454544 ;
	setAttr ".tk[95]" -type "float3" 0 0.23728813 0.020454545 ;
	setAttr ".tk[96]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.13728814 -0.095454544 ;
	setAttr ".tk[99]" -type "float3" 0 0.13728814 0.020454545 ;
	setAttr ".tk[100]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.18135594 -0.095454544 ;
	setAttr ".tk[103]" -type "float3" 0 0.18135594 0.020454545 ;
	setAttr ".tk[104]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.18135594 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.23728813 -0.095454544 ;
	setAttr ".tk[107]" -type "float3" 0 0.23728813 0.020454545 ;
	setAttr ".tk[108]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.23728813 0 ;
	setAttr ".tk[110]" -type "float3" 0 0.13728814 -0.095454544 ;
	setAttr ".tk[111]" -type "float3" 0 0.13728814 0.020454545 ;
	setAttr ".tk[112]" -type "float3" 0 0.13728814 0 ;
	setAttr ".tk[113]" -type "float3" 0 0.13728814 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "50B65ADA-478E-D4EF-9B7C-D4B29D7F505D";
	setAttr ".ics" -type "componentList" 2 "f[73]" "f[78]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.8412054 2.2845333 -2.0900002 ;
	setAttr ".rs" 53732;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.5159658652544024 0.13398793697357148 -3.4800003528594972 ;
	setAttr ".cbx" -type "double3" 4.1664446926116945 4.4350784546136861 -0.70000011920928962 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "748409F7-48E1-DBF8-79CB-109784D2355F";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[114:119]" -type "float3"  0.068007424 0.0040658079 5.5511151e-17
		 0.068007424 0.0040658079 5.5511151e-17 0.12948844 -0.00078419421 5.5511151e-17 0.12948844
		 -0.00078419421 5.5511151e-17 0.17309286 -0.0042239791 5.5511151e-17 0.17309286 -0.0042239791
		 5.5511151e-17;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "65FB4FF7-478D-61BD-2DA9-898E6E014444";
	setAttr ".ics" -type "componentList" 2 "f[73]" "f[78]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.841049 2.1065438 -2.0913002 ;
	setAttr ".rs" 61710;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.5580906766653064 0.23556935250759103 -3.3006005764007571 ;
	setAttr ".cbx" -type "double3" 4.1240073782205586 3.9775183683633806 -0.88200007677078252 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "6F2C3491-4F5B-0CB4-0377-F493C8A9B170";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[120:125]" -type "float3"  0.0068052327 0.017217217 0.020386374
		 0.0068052327 0.017217217 -0.020681817 -0.0011873051 -0.03822856 0.020386374 -0.0011873051
		 -0.03822856 -0.020681817 -0.0068558739 -0.077552579 0.020386374 -0.0068558739 -0.077552579
		 -0.020681817;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "973AF9E0-4F80-F335-508B-D9BDC984B4BA";
	setAttr ".ics" -type "componentList" 1 "f[80]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.095 3.5574999 1.7240002 ;
	setAttr ".rs" 40708;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.095 2.654999948143959 0.052000278234481813 ;
	setAttr ".cbx" -type "double3" 3.095 4.4599998927116395 3.396000170707703 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "83EDD5D1-4741-C1C3-B085-F1B4B4FD75B6";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[92]" -type "float3" 0 0 -0.094090894 ;
	setAttr ".tk[93]" -type "float3" 0 0 0.085909098 ;
	setAttr ".tk[96]" -type "float3" 0 0 -0.094090894 ;
	setAttr ".tk[97]" -type "float3" 0 0 0.085909098 ;
	setAttr ".tk[126]" -type "float3" -0.040251978 -0.0030362026 5.5511151e-17 ;
	setAttr ".tk[127]" -type "float3" -0.040251978 -0.0030362026 5.5511151e-17 ;
	setAttr ".tk[128]" -type "float3" -0.06505347 -2.5521425e-05 5.5511151e-17 ;
	setAttr ".tk[129]" -type "float3" -0.06505347 -2.5521425e-05 5.5511151e-17 ;
	setAttr ".tk[130]" -type "float3" -0.082643531 0.0021097558 5.5511151e-17 ;
	setAttr ".tk[131]" -type "float3" -0.082643531 0.0021097558 5.5511151e-17 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "CC997F67-491A-FEF5-5ACA-46AEBF9F7BC8";
	setAttr ".ics" -type "componentList" 1 "f[80]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.3149998 3.5574999 1.7240002 ;
	setAttr ".rs" 60444;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.3149998843669892 2.654999948143959 0.052000282332301147 ;
	setAttr ".cbx" -type "double3" 3.3149998843669892 4.4599998927116395 3.396000170707703 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "5DE23709-4401-EBD3-E4EC-E59C379F64FA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[132:135]" -type "float3"  0.035541195 0 0 0.035541195
		 0 0 0.035541195 0 0 0.035541195 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "A53FDBB0-4F01-98AB-CB7E-798E6FACB8F2";
	setAttr ".ics" -type "componentList" 1 "f[80]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.31025 3.5602 1.7283202 ;
	setAttr ".rs" 47256;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.31024998664856 2.7659999398887156 0.25696025192737582 ;
	setAttr ".cbx" -type "double3" 3.31024998664856 4.3543998858332635 3.1996801376342776 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "4F3582F8-45E6-A78C-AE8A-0EAEE334C929";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[136:139]" -type "float3"  -0.00076734897 0.01881356
		 0.023290906 -0.00076734897 0.01881356 -0.022309093 -0.00076734897 -0.017898303 0.023290906
		 -0.00076734897 -0.017898303 -0.022309093;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "5A1D9A52-4C1C-5192-0536-1C80A1ADA035";
	setAttr ".ics" -type "componentList" 1 "f[16:35]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.0100002 0 ;
	setAttr ".rs" 45197;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.095 6.01 -4.4 ;
	setAttr ".cbx" -type "double3" 3.095 6.01 4.4 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "44786A04-47DA-7BF6-C119-C59ED1A3A3F3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[140:143]" -type "float3"  -0.032310177 0 0 -0.032310177
		 0 0 -0.032310177 0 0 -0.032310177 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "3716DCC2-4BB4-96DD-A0A2-BC89A32D5CD3";
	setAttr ".ics" -type "componentList" 1 "f[16:35]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.0910001 0 ;
	setAttr ".rs" 43070;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4045000737905506 6.0909999048709871 -4.840000104904175 ;
	setAttr ".cbx" -type "double3" 3.4045000737905506 6.0909999048709871 4.840000104904175 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "277E98CC-433B-44FE-D05A-94BA87B2551B";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[132:161]" -type "float3"  -0.050000001 0.013728813 0.050000001
		 -0.025 0.013728813 0.050000001 -0.025 0.013728813 0.030000001 -0.050000001 0.013728813
		 0.030000001 0 0.013728813 0.050000001 0 0.013728813 0.030000001 0.025 0.013728813
		 0.050000001 0.025 0.013728813 0.030000001 0.050000001 0.013728813 0.050000001 0.050000001
		 0.013728813 0.030000001 -0.025 0.013728813 0.010000004 -0.050000001 0.013728813 0.010000004
		 0 0.013728813 0.010000004 0.025 0.013728813 0.010000004 0.050000001 0.013728813 0.010000004
		 -0.025 0.013728813 -0.0079545453 -0.050000001 0.013728813 -0.0079545453 0 0.013728813
		 -0.0079545453 0.025 0.013728813 -0.0079545453 0.050000001 0.013728813 -0.0079545453
		 -0.025 0.013728813 -0.039545473 -0.050000001 0.013728813 -0.039545473 0 0.013728813
		 -0.039545473 0.025 0.013728813 -0.039545473 0.050000001 0.013728813 -0.039545473
		 -0.025 0.013728813 -0.050000001 -0.050000001 0.013728813 -0.050000001 0 0.013728813
		 -0.050000001 0.025 0.013728813 -0.050000001 0.050000001 0.013728813 -0.050000001;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "0917D936-4C31-7E4B-05AA-6F9F078102A1";
	setAttr ".ics" -type "componentList" 1 "f[16:35]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.4109998 0 ;
	setAttr ".rs" 47251;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4045000737905506 6.4109996592998506 -4.840000104904175 ;
	setAttr ".cbx" -type "double3" 3.4045000737905506 6.4109996592998506 4.840000104904175 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "4DA068CF-44A2-2FD9-E18F-A79124E65B84";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[150:179]" -type "float3"  0 0.054237287 0 0 0.054237287
		 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0
		 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0
		 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287
		 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0
		 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0 0.054237287 0 0
		 0.054237287 0 0 0.054237287 0;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "B78BFFE1-49C9-26DA-1CC0-C8BFDB36038F";
	setAttr ".ics" -type "componentList" 1 "f[16:35]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.4004402 0 ;
	setAttr ".rs" 40833;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0640500295162201 6.4004401421546939 -4.3560000419616705 ;
	setAttr ".cbx" -type "double3" 3.0640500295162201 6.4004401421546939 4.3560000419616705 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "1682D77A-404F-8636-5715-2681DD69FA1F";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[168:197]" -type "float3"  0.055 -0.0017898323 -0.055
		 0.0275 -0.0017898323 -0.055 0.0275 -0.0017898323 -0.033000007 0.055 -0.0017898323
		 -0.033000007 0 -0.0017898323 -0.055 0 -0.0017898323 -0.033000007 -0.0275 -0.0017898323
		 -0.055 -0.0275 -0.0017898323 -0.033000007 -0.055 -0.0017898323 -0.055 -0.055 -0.0017898323
		 -0.033000007 0.0275 -0.0017898323 -0.011000006 0.055 -0.0017898323 -0.011000006 0
		 -0.0017898323 -0.011000006 -0.0275 -0.0017898323 -0.011000006 -0.055 -0.0017898323
		 -0.011000006 0.0275 -0.0017898323 0.00875 0.055 -0.0017898323 0.00875 0 -0.0017898323
		 0.00875 -0.0275 -0.0017898323 0.00875 -0.055 -0.0017898323 0.00875 0.0275 -0.0017898323
		 0.043500029 0.055 -0.0017898323 0.043500029 0 -0.0017898323 0.043500029 -0.0275 -0.0017898323
		 0.043500029 -0.055 -0.0017898323 0.043500029 0.0275 -0.0017898323 0.055 0.055 -0.0017898323
		 0.055 0 -0.0017898323 0.055 -0.0275 -0.0017898323 0.055 -0.055 -0.0017898323 0.055;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "FDDB7EF2-4E2D-FE6B-7589-589D96491348";
	setAttr ".ics" -type "componentList" 1 "f[16:35]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 7.2404399 0 ;
	setAttr ".rs" 56075;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5738020321726802 7.240439937114715 -4.22532012462616 ;
	setAttr ".cbx" -type "double3" 2.5738020321726802 7.240439937114715 4.22532012462616 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "481B2667-4809-7BE8-5D56-CFAEEAC45615";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[186:215]" -type "float3"  0.0792 0.14237288 -0.01485
		 0.0396 0.14237288 -0.01485 0.0396 0.14237288 -0.0089100013 0.0792 0.14237288 -0.0089100013
		 0 0.14237288 -0.01485 0 0.14237288 -0.0089100013 -0.0396 0.14237288 -0.01485 -0.0396
		 0.14237288 -0.0089100013 -0.0792 0.14237288 -0.01485 -0.0792 0.14237288 -0.0089100013
		 0.0396 0.14237288 -0.0029700019 0.0792 0.14237288 -0.0029700019 0 0.14237288 -0.0029700019
		 -0.0396 0.14237288 -0.0029700019 -0.0792 0.14237288 -0.0029700019 0.0396 0.14237288
		 0.0023625002 0.0792 0.14237288 0.0023625002 0 0.14237288 0.0023625002 -0.0396 0.14237288
		 0.0023625002 -0.0792 0.14237288 0.0023625002 0.0396 0.14237288 0.011745008 0.0792
		 0.14237288 0.011745008 0 0.14237288 0.011745008 -0.0396 0.14237288 0.011745008 -0.0792
		 0.14237288 0.011745008 0.0396 0.14237288 0.01485 0.0792 0.14237288 0.01485 0 0.14237288
		 0.01485 -0.0396 0.14237288 0.01485 -0.0792 0.14237288 0.01485;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "32173B95-4523-918E-6661-ABBEBF66FBF5";
	setAttr ".ics" -type "componentList" 1 "f[16:35]";
	setAttr ".ix" -type "matrix" 6.1900000000000004 0 0 0 0 5.9000000000000004 0 0 0 0 8.8000000000000007 0
		 0 3.0600000000000001 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 8.4704399 0 ;
	setAttr ".rs" 44246;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7244473412632944 8.470439938306809 -3.5070158004760743 ;
	setAttr ".cbx" -type "double3" 1.7244473412632944 8.470439938306809 3.5070158004760743 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "208D212A-4F5B-7CCF-05BA-EA93AED27888";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[204:233]" -type "float3"  0.137214 0.20847458 -0.081625506
		 0.068607002 0.20847458 -0.081625506 0.068607002 0.20847458 -0.048975307 0.137214
		 0.20847458 -0.048975307 0 0.20847458 -0.081625506 0 0.20847458 -0.048975307 -0.068607002
		 0.20847458 -0.081625506 -0.068607002 0.20847458 -0.048975307 -0.137214 0.20847458
		 -0.081625506 -0.137214 0.20847458 -0.048975307 0.068607002 0.20847458 -0.016325112
		 0.137214 0.20847458 -0.016325112 0 0.20847458 -0.016325112 -0.068607002 0.20847458
		 -0.016325112 -0.137214 0.20847458 -0.016325112 0.068607002 0.20847458 0.012985877
		 0.137214 0.20847458 0.012985877 0 0.20847458 0.012985877 -0.068607002 0.20847458
		 0.012985877 -0.137214 0.20847458 0.012985877 0.068607002 0.20847458 0.064558402 0.137214
		 0.20847458 0.064558402 0 0.20847458 0.064558402 -0.068607002 0.20847458 0.064558402
		 -0.137214 0.20847458 0.064558402 0.068607002 0.20847458 0.081625506 0.137214 0.20847458
		 0.081625506 0 0.20847458 0.081625506 -0.068607002 0.20847458 0.081625506 -0.137214
		 0.20847458 0.081625506;
createNode polyCube -n "polyCube2";
	rename -uid "3BA0B97D-4991-D801-30E4-C0B8B5382738";
	setAttr ".cuv" 1;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "B354EE65-4109-7388-E79E-8AAB87127E67";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1.8700000000000001 0 0 0 0 3.4820000000000002 0 0 0 0 1.8700000000000001 0
		 -1.3 8.8000000000000007 3.1000000000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3 10.541 3.0999999 ;
	setAttr ".rs" 35987;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2350000000000003 10.541 2.165 ;
	setAttr ".cbx" -type "double3" -0.365 10.541 4.035 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "687BEB14-4E26-BB89-F08B-79ABBB991876";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1.8700000000000001 0 0 0 0 3.4820000000000002 0 0 0 0 1.8700000000000001 0
		 -1.3 8.8000000000000007 3.1000000000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.26 10.541 3.0599997 ;
	setAttr ".rs" 57622;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3819999253749851 10.541 1.9379997247457506 ;
	setAttr ".cbx" -type "double3" -0.13800005912780766 10.541 4.1819997024536137 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "B47DC062-4277-E70A-67EB-5A90C464A071";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -0.078609616 0 0.078609601
		 0.12139037 0 0.078609601 0.12139037 0 -0.12139039 -0.078609616 0 -0.12139039;
createNode polyCube -n "polyCube3";
	rename -uid "7E1FB999-463B-E717-8F94-F9B96A83B875";
	setAttr ".cuv" 4;
createNode polyBevel2 -n "polyBevel1";
	rename -uid "25ABA699-494E-2555-83DC-7D987D5E5B0A";
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1.3 0 0 0 0 0.12 0 0 0 0 1.6000000000000001 0 0 0 -2.2000000000000002 1;
	setAttr ".f" 1;
	setAttr ".sg" 2;
createNode lambert -n "Black";
	rename -uid "341B6520-42AB-5DF7-78E5-2092B172CE36";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "BlackSG1";
	rename -uid "4E849E1B-4F56-1DA5-465C-70BCB65F9CF6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "D2BC80FB-4EF1-18FB-4F44-16AA15EE77F4";
createNode lambert -n "White";
	rename -uid "57A0D6D7-48F3-27CC-A694-669D4CE7322D";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "WhiteSG1";
	rename -uid "74D33BD2-4320-276D-4E08-019F6B1FD15D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "57543C0D-4580-B4E6-53AF-B693A0B35E10";
createNode lambert -n "Orange";
	rename -uid "AB96488F-4B5E-0507-5078-E88AD1097D9B";
	setAttr ".c" -type "float3" 0.52999997 0.18000001 0 ;
createNode shadingEngine -n "OrangeSG1";
	rename -uid "8460E817-446B-36E1-D794-169633C1DDCF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "D0821555-4D72-0ACE-01F8-B5B595F0F5B5";
createNode lambert -n "Grey";
	rename -uid "AD03FCDC-4CBF-9206-794F-2CAF04CEEC73";
	setAttr ".c" -type "float3" 0.43200001 0.43200001 0.43200001 ;
createNode shadingEngine -n "GreySG1";
	rename -uid "784A38FE-4DA6-05EB-9FAE-64943BD6449E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "DF159C6A-425F-7621-6B62-40AF28834881";
createNode lambert -n "Brown";
	rename -uid "21E2340E-46FA-A566-D8A6-E6A32FDEEEB1";
	setAttr ".c" -type "float3" 0.36199999 0.204125 0.120546 ;
createNode shadingEngine -n "BrownSG1";
	rename -uid "60D388EA-46BD-352C-5BE1-23A96777021D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "49B743AA-4439-817C-1AB9-F5BFE90EA2ED";
createNode groupId -n "groupId1";
	rename -uid "BE4B5B0D-4610-BC0E-D50F-79AF9F3F45D4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "28F3C3C0-4F8B-EBAB-2514-9F83D5974734";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId2";
	rename -uid "DA3D5181-4A0B-444C-60B2-1282A688054F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "B0E46ABE-40A3-9544-94F8-9898D8E1EF46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "52C02BD2-4433-7810-2D43-4FA6AD7CFF6B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0:15]" "f[36:72]" "f[74:77]" "f[79]" "f[81:111]";
	setAttr ".irc" -type "componentList" 5 "f[16:35]" "f[73]" "f[78]" "f[80]" "f[112:249]";
createNode groupId -n "groupId4";
	rename -uid "B1D4681C-4D3C-0B16-8B1F-7BAB84FB985C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "E8BE6B48-4A87-A640-2A51-6BB65FDDB7FB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "26A15019-413E-21C3-F966-DB85ED802D5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[16:35]" "f[73]" "f[78]" "f[80]" "f[112:249]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "6369FF32-465C-5F6B-7459-B4B571CD2E63";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -280.95236978833685 -372.61903281249749 ;
	setAttr ".tgi[0].vh" -type "double2" 354.76189066493379 390.47617496006137 ;
	setAttr -s 10 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -55.714286804199219;
	setAttr ".tgi[0].ni[0].y" 1367.142822265625;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -55.714286804199219;
	setAttr ".tgi[0].ni[1].y" -580;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -55.714286804199219;
	setAttr ".tgi[0].ni[2].y" 670;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -55.714286804199219;
	setAttr ".tgi[0].ni[3].y" -1210;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -55.714286804199219;
	setAttr ".tgi[0].ni[4].y" 321.42855834960938;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -55.714286804199219;
	setAttr ".tgi[0].ni[5].y" -792.85711669921875;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -55.714286804199219;
	setAttr ".tgi[0].ni[6].y" 1018.5714111328125;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -55.714286804199219;
	setAttr ".tgi[0].ni[7].y" -367.14285278320313;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -55.714286804199219;
	setAttr ".tgi[0].ni[8].y" -27.142856597900391;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" -55.714286804199219;
	setAttr ".tgi[0].ni[9].y" -1005.7142944335938;
	setAttr ".tgi[0].ni[9].nvs" 1923;
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
	setAttr -s 15 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.43200001 0.43200001 0.43200001 ;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polySphere1.out" "Snowman_BottomShape.i";
connectAttr "polySphere2.out" "Snowman_MiddleShape.i";
connectAttr "polySphere3.out" "Snowman_TopShape.i";
connectAttr "polySmoothFace1.out" "HatShape.i";
connectAttr "polySmoothFace2.out" "CarrotShape.i";
connectAttr "polySmoothFace3.out" "Eye_01Shape.i";
connectAttr "polySmoothFace4.out" "Eye_02Shape.i";
connectAttr "polySmoothFace5.out" "Mouth_01Shape.i";
connectAttr "polySmoothFace6.out" "Mouth_02Shape.i";
connectAttr "polySmoothFace7.out" "Mouth_03Shape.i";
connectAttr "polySmoothFace8.out" "Mouth_04Shape.i";
connectAttr "polySmoothFace9.out" "Button_01Shape.i";
connectAttr "polySmoothFace10.out" "Button_02Shape.i";
connectAttr "polySmoothFace11.out" "Button_03Shape.i";
connectAttr "groupId3.id" "House_BodyShape.iog.og[0].gid";
connectAttr "GreySG.mwc" "House_BodyShape.iog.og[0].gco";
connectAttr "groupId5.id" "House_BodyShape.iog.og[1].gid";
connectAttr "BrownSG.mwc" "House_BodyShape.iog.og[1].gco";
connectAttr "groupParts3.og" "House_BodyShape.i";
connectAttr "groupId4.id" "House_BodyShape.ciog.cog[0].cgid";
connectAttr "groupId1.id" "ChimneyShape.iog.og[0].gid";
connectAttr "BrownSG.mwc" "ChimneyShape.iog.og[0].gco";
connectAttr "groupParts1.og" "ChimneyShape.i";
connectAttr "groupId2.id" "ChimneyShape.ciog.cog[0].cgid";
connectAttr "polyBevel1.out" "Step_01Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BlackSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WhiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "OrangeSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GreySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BrownSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BlackSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WhiteSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "OrangeSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GreySG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BrownSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BlackSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WhiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "OrangeSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GreySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BrownSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BlackSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WhiteSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "OrangeSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GreySG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BrownSG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "Black.oc" "BlackSG.ss";
connectAttr "HatShape.iog" "BlackSG.dsm" -na;
connectAttr "Eye_01Shape.iog" "BlackSG.dsm" -na;
connectAttr "Mouth_01Shape.iog" "BlackSG.dsm" -na;
connectAttr "Mouth_02Shape.iog" "BlackSG.dsm" -na;
connectAttr "Mouth_03Shape.iog" "BlackSG.dsm" -na;
connectAttr "Eye_02Shape.iog" "BlackSG.dsm" -na;
connectAttr "Mouth_04Shape.iog" "BlackSG.dsm" -na;
connectAttr "Button_03Shape.iog" "BlackSG.dsm" -na;
connectAttr "Button_02Shape.iog" "BlackSG.dsm" -na;
connectAttr "Button_01Shape.iog" "BlackSG.dsm" -na;
connectAttr "BlackSG.msg" "materialInfo4.sg";
connectAttr "Black.msg" "materialInfo4.m";
connectAttr "White.oc" "WhiteSG.ss";
connectAttr "Snowman_BottomShape.iog" "WhiteSG.dsm" -na;
connectAttr "Snowman_MiddleShape.iog" "WhiteSG.dsm" -na;
connectAttr "Snowman_TopShape.iog" "WhiteSG.dsm" -na;
connectAttr "WhiteSG.msg" "materialInfo5.sg";
connectAttr "White.msg" "materialInfo5.m";
connectAttr "Orange.oc" "OrangeSG.ss";
connectAttr "CarrotShape.iog" "OrangeSG.dsm" -na;
connectAttr "OrangeSG.msg" "materialInfo6.sg";
connectAttr "Orange.msg" "materialInfo6.m";
connectAttr "Grey.oc" "GreySG.ss";
connectAttr "ChimneyShape.ciog.cog[0]" "GreySG.dsm" -na;
connectAttr "House_BodyShape.iog.og[0]" "GreySG.dsm" -na;
connectAttr "House_BodyShape.ciog.cog[0]" "GreySG.dsm" -na;
connectAttr "groupId2.msg" "GreySG.gn" -na;
connectAttr "groupId3.msg" "GreySG.gn" -na;
connectAttr "groupId4.msg" "GreySG.gn" -na;
connectAttr "GreySG.msg" "materialInfo7.sg";
connectAttr "Grey.msg" "materialInfo7.m";
connectAttr "Brown.oc" "BrownSG.ss";
connectAttr "ChimneyShape.iog.og[0]" "BrownSG.dsm" -na;
connectAttr "Step_03Shape.iog" "BrownSG.dsm" -na;
connectAttr "Step_02Shape.iog" "BrownSG.dsm" -na;
connectAttr "Step_01Shape.iog" "BrownSG.dsm" -na;
connectAttr "House_BodyShape.iog.og[1]" "BrownSG.dsm" -na;
connectAttr "groupId1.msg" "BrownSG.gn" -na;
connectAttr "groupId5.msg" "BrownSG.gn" -na;
connectAttr "BrownSG.msg" "materialInfo8.sg";
connectAttr "Brown.msg" "materialInfo8.m";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "HatShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "HatShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySmoothFace1.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySmoothFace2.ip";
connectAttr "polyCylinder2.out" "polyTweak3.ip";
connectAttr "polySphere4.out" "polySmoothFace3.ip";
connectAttr "polySphere5.out" "polySmoothFace4.ip";
connectAttr "polySphere6.out" "polySmoothFace5.ip";
connectAttr "polySphere7.out" "polySmoothFace6.ip";
connectAttr "polySphere8.out" "polySmoothFace7.ip";
connectAttr "polySphere9.out" "polySmoothFace8.ip";
connectAttr "polySphere10.out" "polySmoothFace9.ip";
connectAttr "polySphere11.out" "polySmoothFace10.ip";
connectAttr "polySphere12.out" "polySmoothFace11.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyCube1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace4.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace6.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace7.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace8.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace9.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace10.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace11.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace12.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace13.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace14.ip";
connectAttr "House_BodyShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak15.ip";
connectAttr "polyCube2.out" "polyExtrudeFace15.ip";
connectAttr "ChimneyShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak16.out" "polyExtrudeFace16.ip";
connectAttr "ChimneyShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak16.ip";
connectAttr "polyCube3.out" "polyBevel1.ip";
connectAttr "Step_01Shape.wm" "polyBevel1.mp";
connectAttr "BlackSG1.msg" "materialInfo9.sg";
connectAttr "WhiteSG1.msg" "materialInfo10.sg";
connectAttr "OrangeSG1.msg" "materialInfo11.sg";
connectAttr "GreySG1.msg" "materialInfo12.sg";
connectAttr "BrownSG1.msg" "materialInfo13.sg";
connectAttr "polyExtrudeFace16.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyExtrudeFace14.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "Black.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "BlackSG1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "White.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "WhiteSG1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Orange.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "OrangeSG1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Grey.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "GreySG1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Brown.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "BrownSG1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "BlackSG.pa" ":renderPartition.st" -na;
connectAttr "WhiteSG.pa" ":renderPartition.st" -na;
connectAttr "OrangeSG.pa" ":renderPartition.st" -na;
connectAttr "GreySG.pa" ":renderPartition.st" -na;
connectAttr "BrownSG.pa" ":renderPartition.st" -na;
connectAttr "BlackSG1.pa" ":renderPartition.st" -na;
connectAttr "WhiteSG1.pa" ":renderPartition.st" -na;
connectAttr "OrangeSG1.pa" ":renderPartition.st" -na;
connectAttr "GreySG1.pa" ":renderPartition.st" -na;
connectAttr "BrownSG1.pa" ":renderPartition.st" -na;
connectAttr "Black.msg" ":defaultShaderList1.s" -na;
connectAttr "White.msg" ":defaultShaderList1.s" -na;
connectAttr "Orange.msg" ":defaultShaderList1.s" -na;
connectAttr "Grey.msg" ":defaultShaderList1.s" -na;
connectAttr "Brown.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Assignment_01_Snowman.ma
