{
  "$GMRoom":"",
  "%Name":"Sala_Splash",
  "creationCodeFile":"",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_7D3FBCFD_2","path":"rooms/Sala_Splash/Sala_Splash.yy",},
    {"name":"inst_3DA4B377_1","path":"rooms/Sala_Splash/Sala_Splash.yy",},
    {"name":"inst_3643DFC7","path":"rooms/Sala_Splash/Sala_Splash.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"LightRender","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"LightRender","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"PauseNoHue","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"PauseNoHue","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"PauseHUE","depth":200,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[
        {"$GMRInstanceLayer":"","%Name":"PauseHUE_Sub","depth":300,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"PauseHUE_Sub","properties":[
            {"name":"g_HueShift","type":0,"value":"0.5",},
            {"name":"g_HueSaturation","type":0,"value":"1",},
          ],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
      ],"name":"PauseHUE","properties":[
        {"name":"g_HueShift","type":0,"value":"0.5",},
        {"name":"g_HueSaturation","type":0,"value":"1",},
      ],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Pause","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Pause","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMREffectLayer":"","%Name":"EffectRippleBulletTime","depth":500,"effectEnabled":true,"effectType":"_filter_ripples","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"EffectRippleBulletTime","properties":[
        {"name":"g_RipplesPosition","type":0,"value":"640",},
        {"name":"g_RipplesPosition","type":0,"value":"180",},
        {"name":"g_RipplesSpeed","type":0,"value":"3",},
        {"name":"g_RipplesWidth","type":0,"value":"386",},
        {"name":"g_RipplesAmplitude","type":0,"value":"0.5",},
        {"name":"g_RipplesRadius","type":0,"value":"0",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"EffectColorBulletTime","depth":600,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"EffectColorBulletTime","properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FF00FF00",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"CLOAK","depth":700,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"CLOAK","properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FFF5E82C",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"EffectColor","depth":800,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"EffectColor","properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FF337FFF",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"EffectBreach","depth":900,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"EffectBreach","properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"13.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"33.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"2",},
        {"name":"g_Distort2Amount","type":0,"value":"4",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.5",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMRInstanceLayer":"","%Name":"Light","depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Light","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Banners","depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Banners","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Main","depth":1200,"effectEnabled":true,"effectType":null,"gridX":2,"gridY":1,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_3DA4B377_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_3DA4B377_1","objectId":{"name":"o_main","path":"objects/o_main/o_main.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":160.0,"y":160.0,},
        {"$GMRInstance":"","%Name":"inst_7D3FBCFD_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7D3FBCFD_2","objectId":{"name":"o_system","path":"objects/o_system/o_system.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":448.0,"y":232.0,},
        {"$GMRInstance":"","%Name":"inst_3643DFC7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_3643DFC7","objectId":{"name":"mem","path":"objects/mem/mem.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":298.0,"y":178.0,},
      ],"layers":[],"name":"Main","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Text","depth":1300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Text","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Laser","depth":1400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Laser","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"ShieldEnemy","depth":1500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"ShieldEnemy","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Shield","depth":1600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Shield","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Player","depth":1700,"effectEnabled":true,"effectType":"_filter_colourise","gridX":16,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Player","properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FFF5E82C",},
      ],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Bullets","depth":1800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Bullets","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Enemies","depth":1900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Enemies","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Part","depth":2000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Part","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"EnemiesHUE","depth":2100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"EnemiesHUE","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Cable","depth":2200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Cable","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Enchufes","depth":2300,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":1,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Enchufes","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Walls","depth":2400,"effectEnabled":true,"effectType":null,"gridX":1,"gridY":1,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Walls","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"Tiles","depth":2500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":13,"SerialiseWidth":21,"TileCompressedData":[
          1,0,-18,-2147483648,2,0,16,-3,0,-16,-2147483648,2,0,16,-3,0,-15,-2147483648,-2,0,1,16,-3,0,-16,-2147483648,
          2,0,16,-3,0,-16,-2147483648,3,0,16,0,-18,-2147483648,3,0,16,0,-18,-2147483648,3,0,16,0,-18,-2147483648,
          4,0,16,0,0,-17,-2147483648,3,0,16,0,-11,-2147483648,-5,0,-2,-2147483648,2,0,16,-18,0,3,-2147483648,0,
          16,-20,33,1,29,-21,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"A_MANO","path":"tilesets/A_MANO/A_MANO.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRInstanceLayer":"","%Name":"Meteors","depth":2600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Meteors","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMREffectLayer":"","%Name":"Effect_1","depth":2700,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Effect_1","properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"13.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"33.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"2",},
        {"name":"g_Distort2Amount","type":0,"value":"4",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.25",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":2800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"s_bg","path":"sprites/s_bg/s_bg.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "name":"Sala_Splash",
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
    "Height":392,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":672,
  },
  "sequenceId":null,
  "views":[
    {"hborder":200,"hport":720,"hspeed":-1,"hview":360,"inherit":false,"objectId":{"name":"o_camera","path":"objects/o_camera/o_camera.yy",},"vborder":200,"visible":true,"vspeed":-1,"wport":1280,"wview":640,"xport":0,"xview":0,"yport":0,"yview":-8,},
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