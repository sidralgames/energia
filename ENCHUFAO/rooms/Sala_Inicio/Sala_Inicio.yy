{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Sala_Inicio",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":true,"xview":0,"yview":0,"wview":640,"hview":360,"xport":0,"yport":0,"wport":1280,"hport":720,"hborder":200,"vborder":200,"hspeed":-1,"vspeed":-1,"objectId":{"name":"o_playerShip","path":"objects/o_playerShip/o_playerShip.yy",},},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"EffectColorBulletTime","visible":false,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_colourise","properties":[
        {"type":0,"name":"g_Intensity","value":"1",},
        {"type":1,"name":"g_TintCol","value":"#FF00FF00",},
      ],},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"EffectBreach","visible":false,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_heathaze","properties":[
        {"type":0,"name":"g_Distort1Speed","value":"0.01",},
        {"type":0,"name":"g_Distort2Speed","value":"0.025",},
        {"type":0,"name":"g_Distort1Scale","value":"13.3",},
        {"type":0,"name":"g_Distort1Scale","value":"1.3",},
        {"type":0,"name":"g_Distort2Scale","value":"33.3",},
        {"type":0,"name":"g_Distort2Scale","value":"3.3",},
        {"type":0,"name":"g_Distort1Amount","value":"2",},
        {"type":0,"name":"g_Distort2Amount","value":"4",},
        {"type":0,"name":"g_ChromaSpreadAmount","value":"0.5",},
        {"type":0,"name":"g_CamOffsetScale","value":"1",},
        {"type":2,"name":"g_DistortTexture","value":"_filter_heathaze_noise_sprite",},
      ],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Light","instances":[],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Banners","instances":[],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Pause","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_65039395","properties":[],"isDnd":false,"objectId":{"name":"o_pause","path":"objects/o_pause/o_pause.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":416.0,"y":160.0,},
      ],"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Main","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3DA4B377","properties":[],"isDnd":false,"objectId":{"name":"o_main","path":"objects/o_main/o_main.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":160.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_23DBEBD7","properties":[],"isDnd":false,"objectId":{"name":"o_nextRoom","path":"objects/o_nextRoom/o_nextRoom.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":320.0,"y":80.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_194D792D","properties":[],"isDnd":false,"objectId":{"name":"o_shipSelector","path":"objects/o_shipSelector/o_shipSelector.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":320.0,"y":296.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4C46C414","properties":[],"isDnd":false,"objectId":{"name":"o_shipStats","path":"objects/o_shipStats/o_shipStats.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":272.0,"y":272.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_738C10C4","properties":[],"isDnd":false,"objectId":{"name":"o_statEnergy","path":"objects/o_statEnergy/o_statEnergy.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":336.0,"y":222.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_10E2AB8A","properties":[],"isDnd":false,"objectId":{"name":"o_statAmmo","path":"objects/o_statAmmo/o_statAmmo.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":336.0,"y":282.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_33593DBC","properties":[],"isDnd":false,"objectId":{"name":"o_statHP","path":"objects/o_statHP/o_statHP.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":336.0,"y":262.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_33263F22","properties":[],"isDnd":false,"objectId":{"name":"o_statShield","path":"objects/o_statShield/o_statShield.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":336.0,"y":302.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7AC50AB4","properties":[],"isDnd":false,"objectId":{"name":"o_statSpeed","path":"objects/o_statSpeed/o_statSpeed.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":336.0,"y":242.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5FB8385F","properties":[],"isDnd":false,"objectId":{"name":"o_statCable","path":"objects/o_statCable/o_statCable.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":336.0,"y":322.0,},
      ],"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":1,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Text","instances":[],"visible":true,"depth":600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Laser","instances":[],"visible":true,"depth":700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Shield","instances":[],"visible":true,"depth":800,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","instances":[],"visible":true,"depth":900,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Bullets","instances":[],"visible":true,"depth":1000,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemies","instances":[],"visible":true,"depth":1100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Cable","instances":[],"visible":true,"depth":1200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Part","instances":[],"visible":true,"depth":1300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enchufes","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_32F82441","properties":[],"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":12.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":656.0,"y":176.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_48376FBD","properties":[],"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":21.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":304.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_783C68E2","properties":[],"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":11.5,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":-16.0,"y":184.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5C647035","properties":[],"isDnd":false,"objectId":{"name":"o_wall","path":"objects/o_wall/o_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":21.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":304.0,"y":-16.0,},
      ],"visible":true,"depth":1400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":1,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Walls","instances":[],"visible":true,"depth":1500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles","tilesetId":{"name":"A_MANO","path":"tilesets/A_MANO/A_MANO.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":20,"SerialiseHeight":12,"TileCompressedData":[
-21,-2147483648,-2,0,-18,-2147483648,-2,0,-15,-2147483648,5,0,-2147483648,-2147483648,0,0,-18,-2147483648,-2,0,
-78,-2147483648,1,0,-78,-2147483648,],},"visible":true,"depth":1600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_1","visible":true,"depth":1700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_heathaze","properties":[
        {"type":0,"name":"g_Distort1Speed","value":"0.01",},
        {"type":0,"name":"g_Distort2Speed","value":"0.025",},
        {"type":0,"name":"g_Distort1Scale","value":"13.3",},
        {"type":0,"name":"g_Distort1Scale","value":"1.3",},
        {"type":0,"name":"g_Distort2Scale","value":"33.3",},
        {"type":0,"name":"g_Distort2Scale","value":"3.3",},
        {"type":0,"name":"g_Distort1Amount","value":"2",},
        {"type":0,"name":"g_Distort2Amount","value":"4",},
        {"type":0,"name":"g_ChromaSpreadAmount","value":"0.25",},
        {"type":0,"name":"g_CamOffsetScale","value":"1",},
        {"type":2,"name":"g_DistortTexture","value":"_filter_heathaze_noise_sprite",},
      ],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":{"name":"s_bg","path":"sprites/s_bg/s_bg.yy",},"colour":4294967295,"x":0,"y":0,"htiled":true,"vtiled":true,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":30.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":1800,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_23DBEBD7","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_3DA4B377","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_194D792D","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_4C46C414","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_738C10C4","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_10E2AB8A","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_33593DBC","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_33263F22","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_7AC50AB4","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_5FB8385F","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_32F82441","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_48376FBD","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_783C68E2","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_5C647035","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
    {"name":"inst_65039395","path":"rooms/Sala_Inicio/Sala_Inicio.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 640,
    "Height": 360,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Salas",
    "path": "folders/Salas.yy",
  },
}