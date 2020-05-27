class CfgFunctions {
	class 3denEnhanced {
		tag = "ENH";
		class Garrison {
            file = PATHTOF(ENH\functions\GUI\garrison);
			class garrison_onLoad;
			class garrison_garrison;
		};
		class Extraction {
            file = PATHTOF(ENH\functions\GUI\extraction);
			class extraction_onLoad;
			class extraction_onCheckedChanged;
			class extraction_setup;
		};
		class TextureFinder {
            file = PATHTOF(ENH\functions\GUI\TextureFinder);
			class textureFinder_updateProgressbar;
			class textureFinder_findTextures;
			class textureFinder_exportTexturePath;
			class textureFinder_fillTextureLB;
			class textureFinder_search;
			class textureFinder_showTexture;
		};
		class BatchReplace {
            file = PATHTOF(ENH\functions\GUI\batchReplace);
			class batchReplace_createDisplay;
			class batchReplace;
		};
		class FunctionsViewer {
            file = PATHTOF(ENH\functions\GUI\functionsViewer);
			class functionsViewer_onLoad;
			class functionsViewer_onTreeSelChanged;
			class functionsViewer_recompileSelected;
			class functionsViewer_copy;
			class functionsViewer_getFunctionsData;
			class functionsViewer_fillCtrlTV;
		};
		class PlacementTools {
            file = PATHTOF(ENH\functions\GUI\placementTools);
			class placementTools_onLoad;
			class placementTools_onUnload;
			class placementTools_createDisplay;
			class placementTools_centralAngle;
			class placementTools_fillArea;
			class placementTools_grid;
			class placementTools_radius;
			class placementTools_initialAngle;
			class placementTools_spacing;
			class placementTools_onToolBoxSelChanged;
		};
		class NameObjects {
            file = PATHTOF(ENH\functions\GUI\nameObjects);
			class nameObjects_onLoad;
			class nameObjects_name;
		};
		class ModuleInformation {
            file = PATHTOF(ENH\functions\GUI\moduleInformation);
			class moduleInformation_onLoad;
		};
		class 3DENCam {
            file = PATHTOF(ENH\functions\GUI\3DENCam);
			class 3DENCam_updateList;
			class 3DENCam_deleteEntry;
			class 3DENCam_get3DENCameraParameters;
			class 3DENCam_set3DENCameraParameters;
			class 3DENCam_onKillFocus;
			class 3DENCam_onSetFocus;
			class 3DENCam_saveList;
		};
		class Misc {
            file = PATHTOF(ENH\functions\Misc);
			class measureDistance;
			class deleteCrew;
			class deleteEmptyLayers;
			class setOrientation;
			class all3DENSelected;
			class statusbar_entityCounter;
			class exportWithLB;
			class 3denNotificationNoSound;
			class locationList;
			class initAmbientAnimationsInEditor;
			class toggleDrawBuildingPositions;
			class toggleDrawDLCIcons;
			class toggleAttribute;
			class floatToTime;
			class firstPerson;
			class 3DENCollapseAssetBrowser;
		};
		class Log {
            file = PATHTOF(ENH\functions\log);
			class logPositions3D;
			class logPositions2D;
			class logObjectInfo;
			class logFactions;
			class logGridPosition;
			class log3DENIDs;
			class logClassesString;
		};
		class Debug {
            file = PATHTOF(ENH\functions\debug);
			class sessionTimer;
			class checkShortCutsDuplicates;
		};
		class EventHandlers {
            file = PATHTOF(ENH\functions\eventHandlers);
			class EH_onMissionLoad;
			class EH_onMissionNew;
			class EH_onMissionPreviewEnd;
			class EH_onSelectionChange;
			class EH_onTerrainNew;
		};
		class AttributeControls {
            file = PATHTOF(ENH\functions\attributeControls);
			class groupMarker_onAttributeLoad;
			class groupMarker_onAttributeSave;
			class groupMarker_onButtonDown;
			class ambientAnimations_onAttributeLoad;
			class ambientAnimations_onAttributeSave;
			class ambientAnimations_onButtonDown;
			class featureType_onAttributeLoad;
			class featureType_onAttributeSave;
			class holdAction_onAttributeLoad;
			class holdAction_onAttributeSave;
			class holdAction_onButtonDown;
			class timeMultiplier_onAttributeLoad;
			class timeMultiplier_onAttributeSave;
			class taskPatrol_onAttributeLoad;
			class taskPatrol_onAttributeSave;
		};
	};
};
