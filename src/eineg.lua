--[[
    Copyright (C) 2020, Yvan Burrie.
--]]

local json = require("Json.json")

--- @class Eineg
Eineg = {

}

--- @class Eineg.Picture
Eineg.Picture = {

    --- @type boolean
    ownMemory = false;

    --- @type number
    width = 0,
    height = 0;

    --- @type number
    orientation = -1;
}

--- @class Eineg.Shape
Eineg.Shape = {

}

--- @class Eineg.Genie
Eineg.Genie = {

}

--- @class Eineg.Genie.ColorTable
Eineg.Genie.ColorTable = {

    --- @type number
    id = 0;

    --- @type string
    name = "";

    --- @type number
    referenceId;

    --- @type number
    translateTable;

    --- @type number
    colorTransformBase;

    --- @type number
    unitOutlineColor;

    selectionColors = { 0, 0 };

    miniMapColors = { 0, 0, 0 };

    textColors = { 0, 0 };

    --- @type number[]
    textColorRGB = { 0, 0, 0 };

    --- @type number
    reserved = 0;
}

--- @class Eineg.Genie.Sound
Eineg.Genie.Sound = {

    --- @type number
    playAtUpdateCount = 0;

    --- @type Eineg.Genie.Sound.Info[]
    infoList = {};

    --- @type number
    cacheTime = 0;

    --- @type number
    id = 0;
}

--- @class Eineg.Genie.Sound.Info
Eineg.Genie.Sound.Info = {

    --- @type string
    name = "";

    --- @type number
    resourceId = -1;

    --- @type number
    percent = 0;

    --- @type number
    playerId = -1; -- todo

    --- @type number
    culture = 0;

    --- @type boolean
    loaded = false;

    --- @type number
    time = 0;
};

--- @class Eineg.Genie.Sprite
Eineg.Genie.Sprite = {

    --- @type string
    pictureName = "";

    --- @type number
    resourceId = -1;

    --- @type boolean
    loaded = false;

    --- @type Eineg.Genie.ColorTable[]
    colorTables = nil;

    --- @type Eineg.Shape
    shape = nil;

    --- @type number
    lastTime = 0;

    --- @type number
    deltaTime = 0;

    --- @type number
    colorFlag = 0;

    --- @type number
    drawLevel = 0;

    --- @type number
    colorTableId = -1;

    --- @type number
    transparentPickingFlag = 0;

    --- @type number[4]
    box = { 0, 0, 0, 0 };

    --- @type Eineg.Genie.PictureList
    drawList = {};

    --- @type Eineg.Genie.Sound
    mainSound = nil;

    --- @type number
    microManSound = 0;

    --- @type Eineg.Genie.SoundList
    soundList = nil;

    --- @type string
    name = "";

    --- @type number
    frameNum = 0;

    --- @type number
    facetNum = 0;

    --- @type number
    baseSpeed = 0.0;

    --- @type number
    duration = 0.0;

    --- @type number
    pauseBetweenLoops = 0.0;

    --- @type number
    flag = 0;

    --- @type number
    id = 0;

    --- @type number
    mirrorFlag = 0;

    --- @type number
    editorFlag = 0;
};

--- @class Eineg.Genie.Game
Eineg.Genie.Game = {

    playerGameInfo;

    scenarioInfo;

    programInfo;

    programPalette;

    randomGameSeed;

    randomMapSeed;

    saveRandomGameSeed;

    saveRandomMapSeed;

    screenSaverEnabled;

    in_game_screen_size_in_use_flag;
    error_code;
    is_timer;

    --- @type Eineg.Shape[]
    shapes = {};

    --- @type Eineg.Digital[]
    sounds = {};

    soundFrequency;

    save_music_type;
    save_music_track_from;
    save_music_track_to;
    save_music_cur_track;
    m_save_music_file = "";
    save_music_loop;
    save_music_pos;

    --unsigned int frame_count;
    --unsigned int world_update_count;
    --unsigned int view_update_count;
    --unsigned int last_frame_count;
    --unsigned int last_world_update_count;
    --unsigned int last_view_update_count;
    --unsigned int fps;
    --unsigned int world_update_fps;
    --unsigned int view_update_fps;
    --RGE_Timing_Info timings[30];
    --int do_show_timings;
    --int do_show_comm;
    --int do_show_ai;
    --unsigned int last_view_time;
    --RGE_Base_Game::RGE_Game_Options rge_game_options;
    --int campaignGameValue;
    --int savedGameValue;
    --int quick_build;
    --int playerIDValue[9];
    --int display_selected_ids;
    --int display_selected_group_ids;
    --int countdown_timer[9];
    --char network_log_path[260];
    --int auto_paused;
    --int save_paused;
    --int non_user_pause;
    --int rollover;
    --int singlePlayerAutoSaveFlag;
    --const char *m_RenderAllCaller;
    --char SoundNames[5][260];
    --unsigned int SoundIndexes[5];
    --commlog_tag commlog;
    --float game_speed;
    --int single_player_difficulty;
    --char pathFindingValue;
    --char resigned[9];
    --TDrawArea *map_save_area;
    --String m_ZoneExec;
    --int m_minWindowWidth;
    --int m_minWindowHeight;
    --TArray<IHookKeyAndCommands *,132628> m_KeyCommandHandlers;
}

--- @class Eineg.Genie.CommunicationsHandler
Eineg.Genie.CommunicationsHandler = {

    --- @type Eineg.Genie.World
    world = nil;
}

function Eineg.Genie.CommunicationsHandler.new(self, world)
    self.world = world
end

--- @class Eineg.Genie.World
Eineg.Genie.World = {

    --- @type number
    expertSystemChecksum = 0;

    communicationsHandler = Eineg.Genie.CommunicationsHandler:new(self);

    --- @type number
    worldTime = 0;

    --- @type number
    oldWorldTime = 0;

    --- @type number
    worldTimeDelta = 0;

    --- @type number
    timer = 0.0;

    --- @type number
    oldTime = 0;

    --- @type number
    gameSpeed = 0;

    --- @type number
    tempPause = 0;

    --- @type number
    gameState = 0;

    --- @type number
    gameEndCondition = 0;

    --- @type number
    soundUpdateIndex = 0;

    --- @type number
    spriteUpdateIndex = 0;

    --- @type Eineg.Genie.Map
    map = nil;

    sounds = {};

    sprites = {};

    players = {};

    masterPlayers = {};

    --- @type Eineg.Genie.Effects
    effects = nil;

    --- @type number
    passabilitiesUsed = 0;

    passabilities;

    terrains;

    --- @type Eineg.Genie.Commands
    commands = nil;

    --- @type Eineg.Genie.Scenario
    scenario = nil;

    --- @type Eineg.Genie.ParticleSystem
    particleSystem = nil;

    --- @type Eineg.Genie.ParticleSystem
    mapAnalysisSystem = nil;

    colorTables = {};

    --- @type number
    nextObjectId = 0;

    --- @type number
    nextReusableObjectId = -1;

    --- @type number
    scenarioObjectId = 0;

    --- @type number
    scenarioObjectFlag = 0;

    --- @type number
    randomSeed = 0;

    --- @type number
    currentPlayer = 0;

    --- @type number
    mapViewX = 0,
    mapViewY = 0;

    --- @type number
    soundFalloffRatio = 0;

    --- @type number
    worldTimeDeltaSeconds = 0;

    objects = {};
    --- @type number
    maxNumberObjects = 0;

    negativeObjects = {};
    --- @type number
    maxNumberNegativeObjects = 0;

    --- @type Eineg.Genie.ArtificialPlayBook
    playBook = nil;

    --- @type number
    campaignId = -1;

    --- @type number
    campaignPlayerId = -1;

    --- @type number
    campaignScenarioId = -1;

    playerTurn;

    --- @type number[]
    playerTimeDelta = {};

    --- @type Eineg.Genie.ObjectList
    reusableStaticObjects = nil,
    reusableAnimatedObjects = nil,
    reusableMovingObjects = nil,
    reusableActionObjects = nil,
    reusableCombatObjects = nil,
    reusableMissileObjects = nil;
    reusableDoppleObjects = nil;

    --- @type number
    maximumComputerPlayerUpdateTime = 0;

    availableComputerPlayerUpdateTime;

    --- @type number
    currentUpdateComputerPlayer = -1;

    --- @type string
    autoSaveName = "";

    --- @type number
    autoSaveCount = 0;

    --- @type number
    autoSaveTimer = 0;

    tasks = {};

    --- @type number
    difficultyLevel = -1;

    allianceLocked;

    --- @type Eineg.Genie.Path
    path = nil;

    numberPaths;

    pathIdCounter;

    --- @type Eineg.Genie.UnitGroup
    unitGroup = nil;

    numberUnitGroups;

    unitGroupCounter;

    --- @type Genie.ContextAnalyzer
    contextAnalyzer = nil;

    replayTimeStart;

    replayRecordedInterval;

    replayPauseTime;
}

--- @param buffer JsonObject
function Eineg.Genie.World.Serialize(buffer)
    buffer.addNumber();
end

--- @class Eineg.Genie.Effects
Eineg.Genie.Effects = {

    --- @type Eineg.Genie.Effect[]
    list = {};
};

--- @class Eineg.Genie.Effect
Eineg.Genie.Effect = {

    --- @type number
    id = 0;

    --- @type string
    name = "";

    --- @type number
    stringTableId = -1;

    --- @type Eineg.Genie.Effect.Command[]
    commands = {};
};

--- @class Eineg.Genie.Effect.Command
Eineg.Genie.Effect.Command = {

    --- @type number
    type = 0;

    --- @type number
    changeNum1 = 0;

    --- @type number
    changeNum2 = 0;

    --- @type number
    changeNum3 = 0;

    --- @type number
    changeAmount = 0;
}

Eineg.Genie.Map = {

    --- @type Eineg.Genie.Map.Tile[]
    tiles;

    mapWidth = 0, mapHeight = 0;

    worldWidth = 0, worldHeight = 0;

    --struct RGE_Tile_Size tilesizes[RGE_MAP_CONTOURS_COUNT];
    --
    --struct RGE_Tile_Set terrain_types[RGE_MAP_TERRAINS_COUNT];
    --
    --#if RGE_MAP_OVERLAY_TYPES_EXIST
    --
    --struct RGE_Overlay_Set overlay_types[RGE_MAP_OVERLAYS_COUNT];
    --
    --#endif
    --
    --struct RGE_Border_Set border_types[RGE_MAP_BORDERS_COUNT];
    --
    --struct RGE_Tile **map_row_offset;
    --
    --short num_terrain;
    --
    --short num_borders;
    --
    --short max_terrain;
    --
    --#if RGE_MAP_OVERLAY_TYPES_EXIST
    --
    --short max_overlay;
    --
    --#endif
    --
    --short
    --tile_width          = 64,
    --tile_height         = 32,
    --tile_half_height    = 16,
    --tile_half_width     = 32,
    --elev_height         = 16;
    --
    --short
    --cur_row = 0,
    --cur_col = 0;
    --
    --short
    --block_beg_row = 0,
    --block_end_row = 0,
    --block_beg_col = 0,
    --block_end_col = 0;
    --
    --#if RGE_SEARCH_MAP_EXISTS
    --
    --char *search_map;
    --
    --char **search_map_rows;
    --
    --#endif
    --
    --char any_frame_change = 0;
    --
    --char map_visible_flag = 0;
    --
    --char fog_flag;
    --
    --class RGE_RMM_Database_Controller *random_map;
    --
    --RGE_Game_World *game_world;
    --
    --class RGE_Zone_Map_List *map_zones;
    --
    --class RGE_Unified_Visible_Map *unified_vis_map;
    --
    --class Visible_Unit_Manager *unit_manager;
}

--- @class Eineg.Genie.Map.Tile
Eineg.Genie.Map.Tile = {

    --- @type number
    screenPositionX = 0,
    screenPositionY = 0;

    --- @type number
    tileType = 0;

    --- @type number
    terrainType = 0;

    --- @type number
    height = 0;

    --- @type number
    borderType = 0;

    --- @type number
    borderShape = 0;

    --- @type number
    lastDrawnAs = 0;

    --- @type number
    lastDrawnShape = 0;

    --- @type number
    drawAs = 0;

    --- @type number
    drawAttribute = 0;

    --- @type number
    lastDrawnShape2 = 0;

    --- @type Eineg.Genie.ObjectList
    objects = nil;
}

Eineg.Genie.Map.TileSize = {

    --- @type number
    width = 0,
    height = 0,
    delta = 0;
}

Eineg.Genie.Map.TerrainPicture = {

    --- @type number
    count = 0;

    --- @type number
    animations = 0;

    --- @type number
    shapeIndex = 0;
}

Eineg.Genie.Map.Placement = {

}

Eineg.Genie.Map.TileSet = {

    --- @type boolean
    loaded = false;

    --- @type boolean
    random = false;

    --- @type string
    name = "";

    --- @type string
    pictureName = "";

    --- @type number
    resourceId = -1;

    --- @type Eineg.Shape
    shape = nil;

    --- @type Eineg.Genie.Sound
    sound = nil;

    highColor = 0;
    medColor = 0;
    lowColor = 0;
    leftCliffColor = 0;
    rightCliffColor = 0;

    passableTerrain = 0;
    impassableTerrain = 0;
    animated = 0;
    animationFrames = 0;
    pauseFrames = 0;
    interval = 0;
    pauseBetweenLoops = 0;
    frame = 0;
    drawFrame = 0;
    animateLast = 0;
    frameChanged = 0;
    drawn = 0;

    --RGE_TOB_Picts tiles[RGE_MAP_CONTOURS_COUNT];

    terrain_to_draw;
    rows, cols;

    borders = {};

    --- @type Eineg.Genie.Map.Placement[]
    placements = {};
    placementsCount;
}

--- @param worldIn Eineg.Genie.World
function Eineg.Genie.Map.new(worldIn)
    local instance = {
        world = worldIn,
    };
    setmetatable(instance, Eineg.Genie.Map);
    return instance;
end

--setmetatable(Eineg.Genie.Map, {__index = Genie.map})

Eineg.Genie.Map.OverlaySet = {

}

Eineg.Genie.BorderSet = {

    loaded;
    random;
    name;
    pictureName;
    resourceId;

    --- @type Eineg.Shape
    shape = nil;

    --- @type Eineg.Genie.Sound
    sound = nil;

    -- 3 colors
    -- animations

    --struct RGE_TOB_Picts borders[RGE_MAP_CONTOURS_COUNT][12];
    --char draw_tile;
    --short underlay_terrain;
    --short border_style;
};

--- @class Eineg.Genie.Scenario
Eineg.Genie.Scenario = {

    --- @type Eineg.Genie.Scenario.TimeLine
    timeLine = nil;

    --- @type Eineg.Genie.World
    world = nil;

    --- @type number
    victory_conquest = 0;

    --- @type string[]
    playerNames = {};

    --- @type number[]
    playerStringIds = {};

    --- @type string
    scenario_name = "";

    --- @type string
    description = "";

    --- @type string
    hints = "";

    --- @type string
    winMessage = "";

    --- @type string
    lossMessage = "";

    --- @type string
    historyMessage = "";

    --- @type string
    scoutMessage = "";

    --- @type number
    descriptionStringId = -1;

    --- @type number
    hintsStringId = -1;

    --- @type number
    winMessageStringId = -1;

    --- @type number
    lossMessageStringId = -1;

    --- @type number
    historyMessageId = -1;

    --- @type number
    scoutMessageStringId = -1;

    --- @type string
    tempTexts = {};

    --- @type Eineg.Genie.Scenario.PlayerScript[]
    BuildList = {};

    --- @type Eineg.Genie.Scenario.PlayerScript[]
    CityPlan = {};

    --- @type Eineg.Genie.Scenario.PlayerScript[]
    AiRules = {};

    --- @type string
    cinematicPreGame = "";

    --- @type string
    cinematicVictory = "";

    --- @type string
    cinematicLoss = "";

    --- @type string
    missionBitmap = "";

    --- @type number
    version = 0.00;

    --- @type number[]
    playerPosture = {};

    --- @type number[]
    playerTypes = {};

    --- @type number[]
    playerCivilizations = {};

    --- @type number[]
    playerActives = {};

    --- @type Eineg.Genie.Picture
    missionPicture = nil;
};

--- @class Eineg.Genie.Scenario.PlayerScript
Eineg.Genie.Scenario.PlayerScript = {

    --- @type number
    enabled = 0;
}

--- @class Eineg.Genie.Scenario.TimeLine
Eineg.Genie.Scenario.TimeLine = {

    --- @type Eineg.Genie.World
    world = nil;

    --- @type Eineg.Genie.Scenario.TimeLine.Entry
    list = {};

    --- @type number
    availableId;

    --- @type number
    oldTime = -1;
}

--- @class Eineg.Genie.Scenario.TimeLine.Entry
Eineg.Genie.Scenario.TimeLine.Entry = {

    --- @type number
    time = 0;

    --- @class Eineg.Genie.Scenario.TimeLine.Entry.Type
    Type = {
        Attack = 0,
        Create = 1,
        Move = 2,
        Delete = 4,
    };

    --- @type Eineg.Genie.Scenario.TimeLine.Entry.Type
    type = 0;

    --- @type number
    objectId = -1;

    --- @type number
    playerId = -1;

    --- @type number
    x, y, z;

    --- @type number
    taskId = -1;

    --- @type Eineg.Genie.StaticObject
    object = nil;

    --- @type number
    objectId = -1;

    --- @type Eineg.Genie.StaticObject
    targetObject = nil;

    --- @type number
    targetObjectId = -1;
}

--- @class Eineg.Genie.MasterPlayer
Eineg.Genie.MasterPlayer = {

    --- @type string
    name = "";

    --- @type Eineg.Genie.MasterStaticObject[]
    masterObjects = {};

    --- @type number[]
    attributes = {};

    --- @type number
    culture = 0;

    --- @type number
    type = 0;

    --- @type number
    tribeEffectId = -1;

    --- @type number
    teamEffectId = -1;
};

--- @class Eineg.Genie.MasterStaticObject
Eineg.Genie.MasterStaticObject = {

    --- @type number
    masterType = 0;

    --- @type string
    name = "";

    --- @type number
    stringId = -1;

    --- @type number
    string2Id = -1;

    --- @type number
    id = 0;

    --- @type number
    copyId = 0;

    --- @type number
    baseId = 0;

    --- @type number
    objectGroup = 0;

    --- @type Eineg.Genie.Sprite
    sprite = nil;

    --- @type Eineg.Genie.Sprite
    sprite2 = nil;

    --- @type Eineg.Genie.Sprite
    deathSprite = nil;

    --- @type Eineg.Genie.Sprite
    undeadSprite = nil;

    --- @type number
    undeadFlag = 0;

    --- @type number
    hitPoints = 0;

    --- @type number
    sight = 0;

    --- @type number
    objectMax = 0;

    --- @type number
    radiusX = 0,
    radiusY = 0,
    radiusZ = 0;

    --- @type Eineg.Genie.Sound
    selectedSound = nil;

    --- @type Eineg.Genie.Sound
    createdSound = nil;

    --- @type Eineg.Genie.Sound
    deathSound = nil;

    --- @type Eineg.Genie.Sound
    damageSound = nil;

    --- @type number
    deathSpawnObjectId = -1;

    --- @type number
    sortNumber = 0;

    canBeBuiltOn;
    button_pict;
    --char hide_in_scenario_editor;
    --__int16 portrait_pict;
    --char available;
    --char disabled;
    --__int16 tile_req1;
    --__int16 tile_req2;
    --__int16 center_tile_req1;
    --__int16 center_tile_req2;

    --- @type number
    constructionRadiusX = 0.0,
    constructionRadiusY = 0.0;

    --char elevation_flag;
    --char fog_flag;
    --__int16 terrain;
    --char movement_type;
    --__int16 attribute_type_held[3];
    --float attribute_amount_held[3];
    --__int16 attribute_max_amount;
    --float attribute_rot;
    --float multiple_attribute_mod;
    --char attribute_flag[3];
    --char area_effect_object_level;
    --char combat_level;
    --char select_level;
    --char map_draw_level;
    --char unit_level;
    --char map_color;
    --char attack_reaction;
    --char convert_terrain_flag;
    --char damage_sprite_num;
    --RGE_Damage_Sprite_Info *damage_sprites;
    --char occlusion_flag;
    --char obstruction_type;
    --char obstruction_class;
    --unsigned int object_flags;
    --int help_string_id;
    --int help_page_id;
    --int hotkey_id;
    --char recyclable;
    --char track_as_resource;
    --char create_doppleganger_on_death;
    --char resource_group;
    --char draw_flag;
    --char draw_color;

    --- @type number
    outlineRadiusX = 0,
    outlineRadiusY = 0,
    outlineRadiusZ = 0;
}

--- @class Eineg.Genie.MasterAnimatedObject
Eineg.Genie.MasterAnimatedObject = {

    --- @type number
    speed = 0;
}

--- @class Devius.Genie.MasterDoppleObject
Eineg.Genie.MasterDoppleObject = {

}

--- @class Eineg.Genie.MasterMovingObject
Eineg.Genie.MasterMovingObject = {

    --- @type Eineg.Genie.Sprite
    moveSprite = nil;

    --- @type Eineg.Genie.Sprite
    runSprite = nil;

    --- @type number
    turnSpeed = 0.0;

    --- @type number
    sizeClass;

    --- @type number
    objectTrailId = -1;

    --- @type number
    objectTrailOptions;

    --- @type number
    objectTrailSpacing;

    --- @type number
    moveAlgorithem;

    --- @type number
    turnRadius;

    --- @type number
    turnRadiusSpeed;

    --- @type number
    maximumYawPerSecondMoving;

    --- @type number
    stationaryYawRevolutionTime;

    --- @type number
    maximumYawPerSecondStationary;
}

--- @class Eineg.Genie.MasterCombatObject
Eineg.Genie.MasterCombatObject = {

    --- @type Eineg.Genie.Sprite
    fightSprite = nil;

    --- @type number
    baseArmor = 0;

    --- @type Eineg.Genie.MasterCombatObject.ArmorWeaponInfo[]
    armors = {};

    --- @type Eineg.Genie.MasterCombatObject.ArmorWeaponInfo[]
    weapons = {};

    --- @type number
    defenseTerrainBonus;

    --- @type number
    weaponRange;

    --- @type number
    areaEffectRange;

    --- @type number
    areaEffectLevel = 0;

    --- @type number
    attackSpeed = 0;

    --- @type number
    missileId = -1;

    --- @type number
    baseHitChance = 0;

    --- @type number
    breakOffCombat = 0;

    --- @type number
    fireMissileAtFrame = 0;

    --- @type number
    weaponOffsetX = 0,
    weaponOffsetY = 0;
    weaponOffsetZ = 0;

    --- @type number
    minimumWeaponRange;

    --- @type number
    originalArmor;

    --- @type number
    originalWeapon;

    --- @type number
    originalWeaponRange;

    --- @type number
    originalAttackSpeed;

    --- @type number
    missedMissileSpread;
}

--- @class Eineg.Genie.MasterCombatObject.ArmorWeaponInfo
Eineg.Genie.MasterCombatObject.ArmorWeaponInfo = {

    type = 0;

    value = 0;
}

--- @class Eineg.Genie.MasterMissileObject
Eineg.Genie.MasterMissileObject = {

    --- @type number
    missileType;

    --- @type number
    targetingType;

    --- @type number
    missileHitInfo;

    --- @type number
    missileDieInfo;

    --- @type number
    areaEffectSpecials;

    --- @type number
    ballisticsRatio;
}

--- @class Eineg.Genie.TaskList
Eineg.Genie.TaskList = {

    --- @type Eineg.Genie.Task[]
    list = {};
}

--- @class Eineg.Genie.Task
Eineg.Genie.Task = {

    taskType = 1;

    id = -1;

    isDefault = 0;

    actionType = 0;

    objectGroup = 0;

    objectId = 0;

    combatLevel = 0;

    combatLevelFlag = 0;

    terrainId = -1;

    ownerType = 0;

    holdingAttribute = 0;

    stateBuilding = 0;

    attributeType = -1;

    attributeType2 = -1;

    attributeType3 = -1;

    attributeType4 = -1;

    workValue1 = 0;

    workRange = 0;

    searchFlag = 0;

    searchWaitTime = 0;

    workFlag = 0;

    workFlag2 = 0;

    --- @type Eineg.Genie.Sprite
    moveSprite = nil;

    --- @type Eineg.Genie.Sprite
    workSprite = nil;

    --- @type Eineg.Genie.Sprite
    workSprite2 = nil;

    --- @type Eineg.Genie.Sprite
    carrySprite = nil;

    --- @type Eineg.Genie.Sound
    workSsound = nil;

    --- @type Eineg.Genie.Sound
    workSound2 = nil;
}

--- @class Eineg.Genie.ParticleSystem
Eineg.Genie.ParticleSystem = {

    --- @type Eineg.Genie.ParticleMemoryBank
    sprite_memory_bank = nil;

    --- @type Eineg.Genie.Particle
    unusedList = {};

    --- @type Eineg.Genie.Particle
    inUseList = {};

    update_array = {}; --- 60 elems

    --- @type number
    current_update_point = 0;

    --- @type Eineg.Genie.World
    world = nil;

    --- @type number
    time = 0;

    --- @type number
    addParticleCounter = 0;
};

Eineg.Genie.ParticleMemoryBank = {

    --- @type Eineg.Genie.Particle
    mem_bank = {}; --- todo: 100 elems

    --- @type Eineg.Genie.ParticleMemoryBank
    next = nil;
};

---@class Eineg.Genie.Particle
Eineg.Genie.Particle = {

    --- @type number
    pixelOffsetX = 0,
    pixelOffsetY = 0;

    --- @type number
    startTime = 0;

    --- @type number
    facet = 0;

    --- @type number
    updatePassesUntilDeletion;

    --- @type number
    frame_duration;

    --- @type number
    update_array_index;

    --- @type number
    x, y, z;

    --- @type Eineg.Genie.Sprite
    sprite = nil;

    --RGE_Tile *tile;
    --RGE_Sprite_Particle *next;
    --RGE_Sprite_Particle *prev;
    --RGE_Sprite_Particle *update_next;
    --RGE_Sprite_Particle *tile_next;
    --RGE_Sprite_Particle *tile_prev;
    --char flags;
}

--- @class Eineg.Genie.Player
Eineg.Genie.Player = {

    --- @type number
    computerPlayer = 0;

    --- @type number
    pathingAttemptCap = 0;

    --- @type number
    pathingDelayCap = 0;

    --- @type number
    currentUpdatePathingAttempts = 0;

    --- @type number
    checksum = 0;

    --- @type number
    positionChecksum = 0;

    --- @type number
    actionChecksum = 0;

    --- @type boolean
    checksumCreatedThisUpdate = false;

    --- @type number
    lineRatio = 0;

    --- @type number
    columnRatio = 0;

    --- @type number
    minColumnDistance = 0;

    --- @type number
    columnToLineDistance = 0;

    --- @type number
    autoFormations = 0;

    formationInfluenceDistance = 0;

    --int mBreakAutoFormationsBySpeed;
    --float pendingDebit[4];
    --float escrow[4];
    --float escrowPercentage[4];
    --int master_object_num;
    --RGE_Master_Static_Object **master_objects;
    --RGE_Player_Object_List *objects;
    --RGE_Player_Object_List *sleeping_objects;
    --RGE_Player_Object_List *doppleganger_objects;
    --RGE_Victory_Conditions *victory_conditions;
    --RGE_Visible_Map *visible;
    --RGE_Game_World *world;
    --RGE_Doppleganger_Creator *doppleganger_creator;
    --RGE_Visible_Object_Updator *visible_object_updator;
    --char *name;
    --int id;
    --char type;
    --char culture;
    --char game_status;
    --char resigned;
    --int attribute_num;
    --float *attributes;
    --RGE_Tile_List tile_list;
    --RGE_Tile_List diam_tile_list;
    --char *relations;
    --int unitDiplomacy[9];
    --int mutualAlly[9];
    --unsigned int mutualExploredMask;
    --unsigned int mutualVisibleMask;
    --unsigned int nonMutualVisibleMask;
    --unsigned int RemoveVisibleBits[9];
    --int allied_LOS_Enable;
    --char allied_victory;
    --char master_player_id;
    --RGE_Color_Table *color_table;
    --RGE_Color_Table *true_color_table;
    --int tribe_effect;
    --int team_effect;
    --Visible_Resource_Manager *VR_List;
    --float view_x;
    --float view_y;
    --__int16 map_x;
    --__int16 map_y;
    --RGE_View_Stack *view_stack;
    --int view_stack_size;
    --int start_x;
    --int start_y;
    --float map_scroll_vector_x;
    --float map_scroll_vector_y;
    --float map_scroll_end_x;
    --float map_scroll_end_y;
    --float map_scroll_start_x;
    --float map_scroll_start_y;
    --float map_scroll_total_distance;
    --float map_scroll_distance;
    --__int16 selected_start_col;
    --__int16 selected_start_row;
    --__int16 selected_end_col;
    --__int16 selected_end_row;
    --__int16 replacement_terrain;
    --__int16 replacement_overlay;
    --__int16 replacement_overlay_shape;
    --RGE_Static_Object *selected_obj;
    --RGE_Static_Object *sel_list[40];
    --unsigned int sel_object_properties;
    --int sel_count;
    --char groups_used[127];
    --__int16 object_category_count[900];
    --__int16 object_group_count[100];
    --__int16 built_object_category_count[900];
    --__int16 built_object_group_count[100];
    --__int16 total_unit_count;
    --__int16 total_building_count;
    --__int16 built_unit_count;
    --__int16 built_building_count;
    --int easiest_reaction_percentage;
    --int easier_reaction_percentage;
    --char task_ungrouped_soldiers;
}

--- @class Eineg.Genie.StaticObject
Eineg.Genie.StaticObject = {

    --- @type number
    id = 0;

    --- @type Eineg.Genie.MasterStaticObject
    masterObject = nil;

    --- @type Eineg.Genie.Player
    owner = nil;

    --- @type Eineg.Genie.Sprite
    sprite = nil;

    --- @type Eineg.Genie.Sprite
    oldSprite = nil;

    --- @type Eineg.Genie.ActiveSpriteList
    spriteList = nil;

    --- @type Eineg.Genie.Tile
    tile = nil;

    --- @type Eineg.Genie.StaticObject
    insideObject = nil;

    --- @type Eineg.Genie.NewObjectList
    objects = nil;

    --- @type number
    screenOffsetX,
    screenOffsetY;

    --- @type number
    shadowOffsetX,
    shadowOffsetY;

    --- @type number
    hitPoints;

    --- @type number
    currentDamagePercent = 0;

    --- @type number
    facet = 0;

    --- @type number
    selected = 0;

    --- @type number
    worldX,
    worldY,
    worldZ;

    --- @type number
    attribute_amount_held = 0;

    --- @type number
    objectState = 0;

    --- @type number
    sleepFlag = 0;

    --- @type number
    doppleFlag = 0;

    --- @type number
    gotoSleepFlag = 0;

    --- @type number
    attributeTypeHeld = 0;

    type;

    workerNumber;

    --- @type Eineg.Genie.ObstructionRecord
    CurrentObstructionData = nil;

    --- @type Eineg.Genie.ObstructionRecord[]
    ObstructionDataList = {};

    --- @type Eineg.Genie.StaticObject[]
    playerObjectNode = {};

    --int *mPathingGroup;
    --int mPathingGroupSize;
    --int mMaximumPathingGroupSize;
    --char damaged_lately_timer;
    --UnitAIModule *unitAIValue;
    --int zoneMapIndex;
    --char inObstructionMapValue;
    --char lastInObstructionMapValue;
    --char underAttackValue;
    --int mGroupID;
    --char mROOAlreadyCalled;
    --LOS_ExploreInfo LOSExploreInfo;
    --int mDisplayTargeted;
    --int mDisplayTargetUnit;
}

--- @class Eineg.Genie.AnimatedObject
Eineg.Genie.AnimatedObject = {

    --- @type number
    speed = 0;
}

--- @class Eineg.Genie.DoppleObject
Eineg.Genie.DoppleObject = {

    --- @type Eineg.Genie.StaticObject
    doppledObject = nil;

    --- @type Eineg.Genie.Player
    drawColorOwner = nil;

    --- @type Eineg.Genie.MasterStaticObject
    doppledMasterObject = nil;

    --- @type number
    doppledPlayerId = -1;

    mapAddress = 0;

    lastMapValue = 0;

    fogFlag = 0;

    mapDrawLevel;

    mapColor;

    multiUnifiedPoints;

    destroyNextTurn;

    doppledObjectID = -1;
}

Eineg.Genie.Moving_Object = {

    trailRemainder;

    velocityX,
    velocityY,
    velocityZ;

    angle;

    turnTowardsTime;

    onGround;
    turnTimer;
    continueCounter;
    currentTerrainException1;
    currentTerrainException2;
    waitingToMoveValue;
    numberWaitDelays;

    --- @type Eineg.Genie.Path.Vector[]
    userDefinedWaypoints = {};

    --- @type number
    maximumNumberUserDefinedWaypointsValue;

    --BVector positionValue;
    --BVector orientationForwardValue;
    --BVector orientationRightValue;
    --BPathData *pathData;
    --BPathData *mFuturePathData;
    --BMovementData *movementData;
    --unsigned int lastMoveTimeValue;
    --int mHasSubstitutePosition;
    --BVector mSubstitutePosition;
    --int mConsecutiveSubstituteCount;
}

--- @class Eineg.Genie.ActionObject
Eineg.Genie.ActionObject = {

    --- @type Eineg.Genie.ActionList
    actions = nil;

    --- @type number
    waiting = 0;

    --- @type number
    commandFlag = 0x00;


    --__int16 Selected_Group_Info;
    --int lastActionValue;
    --int lastActionStateValue;
}

--- @class Eineg.Genie.CombatObject
Eineg.Genie.CombatObject = {

    --VISIBLE_UNIT_REC *VUR_Ptrs[9];
    --unsigned int Unified_Map_Value;
    --char Multi_Unified_Points;
    --char Large_Object_Radius;
    --__declspec(align(4)) int attack_count;
    --float attack_timer;
    --char capture_flag;
    --char formation_id;
    --char formation_row;
    --char formation_col;
}

--- @class Eineg.Genie.MissileObject
Eineg.Genie.MissileObject = {

    ---@type number
    maxRange = 0;

    ---@type number
    ghostMode = 0;

    firingObjectId = -1;

    --- @type number
    ownMaster = 0;
}

--- @class Eineg.Genie.ObjectList
Eineg.Genie.ObjectList = {

    --RGE_Object_Node *list;
    --__int16 number_of_objects;
    --RGE_Object_Node *next_node;
}

Eineg.Genie.ObjectListMeta = { __index = Eineg.Genie.ObjectList }

function Eineg.Genie.ObjectList.new()
    local instance = {}
    setmetatable(instance, Eineg.Genie.ObjectListMeta)
    return instance
end

RGE_Object_Node = {

    ---@type Eineg.Genie.StaticObject
    node = nil;

    ---@type Eineg.Genie.StaticObject
    next = nil;

    ---@type Eineg.Genie.StaticObject
    prev = nil;

    ---@type number
    centered;
}

Eineg.Genie.NewObjectList = {

    --- @type Eineg.Genie.StaticObject[]
    list = {};

    ---@type number
    numberOfObjects = 0;
    --int ListSize;
    --int GrowSize;
    --bool DeletingAll;
}

Eineg.Genie.PlayerObjectList = {

    --- @type Eineg.Genie.StaticObject[]
    list = {};

    --int Number_of_objects;
    --int ListSize;
    --int GrowSize;
    --bool DeletingAll;
}

--- @class Eineg.Genie.ActionList
Eineg.Genie.ActionList = {

    object;

    list = {};
}

--- @class Eineg.Genie.ActionNode
Eineg.Genie.ActionNode = {

    --- @type Eineg.Genie.ActionNode|nil
    next = nil;
}

--- @class Eineg.Genie.Action
Eineg.Genie.Action = {

    --- @type number
    TYPE = 0;

    --- @type number
    actionType = 0;

    --- @type Eineg.Genie.ActionObject
    object = nil;

    State = {
        None = 0,
        Done,
        Wait,
        Search,
        Goto,
        Goto2,
        Work,
        Work2,
        Return,
        Turn,
        Delay,
        Move,
        Attack,
        Failed,
        Invalidated,
        MoveNoSearch,
    };

    state = Genie.Action.State.None;

    --- @type Eineg.Genie.StaticObject
    targetObject;

    --- @type Eineg.Genie.StaticObject
    targetObject2;

    --- @type number
    targetId = -1;

    --- @type number
    target2Id = -1;

    --- @type number
    targetX = -1,
    targetY = -1,
    targetZ = -1;

    --- @type number
    timer = 0;

    --- @type Eineg.Genie.Task
    task = nil;

    --- @type Eineg.Genie.ActionList
    subActions = nil;

    --- @type Eineg.Genie.Sprite
    sprite = nil;

    --- @type number
    subActionValue = 0;

    --- @type boolean
    targetMoved = false;
}

--- @param objectIn Eineg.Genie.ActionObject
function Eineg.Genie.Action:new(objectIn)
    self.object = objectIn;
end
