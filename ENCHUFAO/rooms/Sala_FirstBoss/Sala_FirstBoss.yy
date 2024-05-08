{
  "$GMRoom":"",
  "%Name":"Sala_FirstBoss",
  "creationCodeFile":"",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_4F99965A","path":"rooms/Sala_FirstBoss/Sala_FirstBoss.yy",},
    {"name":"inst_509F82C5","path":"rooms/Sala_FirstBoss/Sala_FirstBoss.yy",},
    {"name":"inst_6B4DF6F6","path":"rooms/Sala_FirstBoss/Sala_FirstBoss.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"Pause","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Pause","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Main","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_4F99965A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_4F99965A","objectId":{"name":"o_breachSpawner","path":"objects/o_breachSpawner/o_breachSpawner.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":288.0,"y":128.0,},
      ],"layers":[],"name":"Main","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"LightEnemy","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"LightEnemy","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Light","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_509F82C5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_509F82C5","objectId":{"name":"oLight","path":"objects/oLight/oLight.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
      ],"layers":[],"name":"Light","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Light_2","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_6B4DF6F6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6B4DF6F6","objectId":{"name":"lightManager","path":"objects/lightManager/lightManager.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":32.0,},
      ],"layers":[],"name":"Light_2","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMREffectLayer":"","%Name":"EffectColorBulletTime","depth":500,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"EffectColorBulletTime","properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FF00FF00",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMREffectLayer":"","%Name":"CLOAK","depth":600,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"CLOAK","properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FFF5E82C",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"EffectColor","depth":700,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"EffectColor","properties":[
        {"name":"g_Intensity","type":0,"value":"0",},
        {"name":"g_TintCol","type":1,"value":"#FF4400FF",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"EffectBreach","depth":800,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"EffectBreach","properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.02",},
        {"name":"g_Distort2Speed","type":0,"value":"0.02",},
        {"name":"g_Distort1Scale","type":0,"value":"100",},
        {"name":"g_Distort1Scale","type":0,"value":"100",},
        {"name":"g_Distort2Scale","type":0,"value":"100",},
        {"name":"g_Distort2Scale","type":0,"value":"100",},
        {"name":"g_Distort1Amount","type":0,"value":"3",},
        {"name":"g_Distort2Amount","type":0,"value":"3",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"2.5",},
        {"name":"g_CamOffsetScale","type":0,"value":"0",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMRInstanceLayer":"","%Name":"Text","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Text","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Laser","depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Laser","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"ShieldEnemy","depth":1100,"effectEnabled":true,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"ShieldEnemy","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Shield","depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Shield","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Player","depth":1300,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Player","properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FFF5E82C",},
      ],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Enemies","depth":1400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Enemies","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Bullets","depth":1500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Bullets","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Cable","depth":1600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Cable","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Part","depth":1700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Part","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Banners","depth":1800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Banners","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Enchufes","depth":1900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Enchufes","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Walls","depth":2000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Walls","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Breach","depth":2100,"effectEnabled":true,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Breach","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"Tiles","depth":2200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":180,"SerialiseWidth":250,"TileCompressedData":[
          -23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-73,-2147483648,-3,0,-122,-2147483648,1,0,-28,-2147483648,
          -25,0,-6,-2147483648,1,0,-120,-2147483648,1,0,-74,-2147483648,1,0,-22,-2147483648,-23,0,-46,-2147483648,
          1,0,-21,-2147483648,1,0,-158,-2147483648,-23,0,-53,-2147483648,-2,0,-34,-2147483648,1,0,-35,-2147483648,
          1,0,-3,-2147483648,1,0,-63,-2147483648,1,0,-33,-2147483648,-23,0,-3,-2147483648,1,0,-26,-2147483648,
          1,0,-57,-2147483648,1,0,-32,-2147483648,1,0,-105,-2147483648,-23,0,-2,-2147483648,1,0,-48,-2147483648,
          1,0,-34,-2147483648,1,0,-140,-2147483648,-23,0,-6,-2147483648,1,0,-11,-2147483648,1,0,-208,-2147483648,
          -23,0,-8,-2147483648,-2,0,2,-2147483648,0,-35,-2147483648,3,0,-2147483648,0,-137,-2147483648,1,0,-39,
          -2147483648,-23,0,-227,-2147483648,-23,0,-61,-2147483648,1,0,-123,-2147483648,1,0,-41,-2147483648,-23,
          0,-229,-2147483648,1,0,-7,-2147483648,1,0,-55,-2147483648,4,0,-2147483648,-2147483648,0,-135,-2147483648,
          1,0,-119,-2147483648,1,0,-247,-2147483648,1,0,-198,-2147483648,1,0,-26,-2147483648,-2,0,-50,-2147483648,
          1,0,-99,-2147483648,1,0,-81,-2147483648,1,0,-7,-2147483648,1,0,-6,-2147483648,-2,0,-246,-2147483648,
          -3,0,-233,-2147483648,1,0,-4,-2147483648,8,0,-2147483648,-2147483648,0,-2147483648,-2147483648,0,-2147483648,
          -4,0,-248,-2147483648,-2,0,-5,-2147483648,1,0,-240,-2147483648,3,0,-2147483648,0,-248,-2147483648,-3,
          0,-27,-2147483648,1,0,-217,-2147483648,1,0,-41,-2147483648,1,0,-22,-2147483648,1,0,-79,-2147483648,1,
          0,-356,-2147483648,1,0,-248,-2147483648,1,0,-247,-2147483648,1,0,-94,-2147483648,1,0,-799,-2147483648,
          1,0,-101,-2147483648,1,0,-981,-2147483648,1,0,-255,-2147483648,1,0,-737,-2147483648,1,0,-17,-2147483648,
          1,0,-243,-2147483648,1,0,-609,-2147483648,1,0,-1340,-2147483648,-2,0,-289,-2147483648,1,0,-204,-2147483648,
          1,0,-108,-2147483648,1,0,-140,-2147483648,1,0,-245,-2147483648,1,0,-309,-2147483648,1,0,-185,-2147483648,
          1,0,-992,-2147483648,1,0,-131,-2147483648,1,0,-609,-2147483648,1,0,-741,-2147483648,1,0,-674,-2147483648,
          1,0,-312,-2147483648,1,0,-1728,-2147483648,1,0,-61,-2147483648,-2,0,-210,-2147483648,1,0,-38,-2147483648,
          1,0,-246,-2147483648,1,0,-243,-2147483648,1,0,-740,-2147483648,1,0,-53,-2147483648,1,0,-201,-2147483648,
          1,0,-180,-2147483648,1,0,-552,-2147483648,1,0,-1055,-2147483648,1,0,-126,-2147483648,1,0,-54,-2147483648,
          1,0,-990,-2147483648,1,0,-496,-2147483648,1,0,-132,-2147483648,1,0,-547,-2147483648,1,0,-1725,-2147483648,
          1,0,-542,-2147483648,1,0,-8,-2147483648,1,0,-11,-2147483648,1,0,-885,-2147483648,1,0,-828,-2147483648,
          1,0,-512,-2147483648,1,0,-895,-2147483648,1,0,-70,-2147483648,1,0,-738,-2147483648,1,0,-183,-2147483648,
          1,0,-68,-2147483648,1,0,-244,-2147483648,3,0,-2147483648,0,-185,-2147483648,1,0,-61,-2147483648,1,0,
          -248,-2147483648,1,0,-677,-2147483648,1,0,-805,-2147483648,1,0,-261,-2147483648,1,0,-4194,-2147483648,
          1,0,-745,-2147483648,1,0,-6488,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"tileset2","path":"tilesets/tileset2/tileset2.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRInstanceLayer":"","%Name":"LightPlayer","depth":2300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"LightPlayer","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Meteors","depth":2400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Meteors","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMREffectLayer":"","%Name":"Effect_1","depth":2500,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Effect_1","properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"13.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"33.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"2",},
        {"name":"g_Distort2Amount","type":0,"value":"4",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":2600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"s_bg","path":"sprites/s_bg/s_bg.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "name":"Sala_FirstBoss",
  "parent":{
    "name":"Salas",
    "path":"folders/Salas.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":5760,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":8000,
  },
  "sequenceId":null,
  "views":[
    {"hborder":300,"hport":720,"hspeed":-1,"hview":360,"inherit":false,"objectId":{"name":"o_camera","path":"objects/o_camera/o_camera.yy",},"vborder":300,"visible":true,"vspeed":-1,"wport":1280,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":true,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}