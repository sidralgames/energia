{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Sala_BossWorm",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_F20CF9A","path":"rooms/Sala_BossWorm/Sala_BossWorm.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"PauseNoHue","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"PauseHUE","depth":100,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"PauseHUE_Sub","depth":200,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
            {"name":"g_HueShift","type":0,"value":"0.5",},
            {"name":"g_HueSaturation","type":0,"value":"1",},
          ],"userdefinedDepth":false,"visible":true,},
      ],"properties":[
        {"name":"g_HueShift","type":0,"value":"0.5",},
        {"name":"g_HueSaturation","type":0,"value":"1",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Pause","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Main","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_F20CF9A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_levelBossWorm","path":"objects/o_levelBossWorm/o_levelBossWorm.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":320.0,"y":672.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"LightEnemy","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Light","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"EffectColorBulletTime","depth":700,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FF00FF00",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"CLOAK","depth":800,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FFF5E82C",},
      ],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"EffectColor","depth":900,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"0",},
        {"name":"g_TintCol","type":1,"value":"#FF4400FF",},
      ],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"EffectBreach","depth":1000,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
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
      ],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Text","depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Laser","depth":1200,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
        {"name":"g_HueShift","type":0,"value":"0.5",},
        {"name":"g_HueSaturation","type":0,"value":"1",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"ShieldEnemy","depth":1300,"effectEnabled":true,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Shield","depth":1400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","depth":1500,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FFF5E82C",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemies","depth":1600,"effectEnabled":true,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Bullets","depth":1700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Cable","depth":1800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Part","depth":1900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"EnemiesHUE","depth":2000,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"EnemiesNoHUE","depth":2100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"EnemiesHUESub","depth":2200,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
            {"name":"g_HueShift","type":0,"value":"0.5",},
            {"name":"g_HueSaturation","type":0,"value":"1",},
          ],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"EnemiesHUESub2","depth":2300,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
            {"name":"g_HueShift","type":0,"value":"0.5",},
            {"name":"g_HueSaturation","type":0,"value":"1",},
          ],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"EnemiesHUESub3","depth":2400,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
            {"name":"g_HueShift","type":0,"value":"0.5",},
            {"name":"g_HueSaturation","type":0,"value":"1",},
          ],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"EnemiesHUESub4","depth":2500,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
            {"name":"g_HueShift","type":0,"value":"0.5",},
            {"name":"g_HueSaturation","type":0,"value":"1",},
          ],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"EnemiesHUESub5","depth":2600,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
            {"name":"g_HueShift","type":0,"value":"0.5",},
            {"name":"g_HueSaturation","type":0,"value":"1",},
          ],"userdefinedDepth":false,"visible":true,},
      ],"properties":[
        {"name":"g_HueShift","type":0,"value":"0.5",},
        {"name":"g_HueSaturation","type":0,"value":"1",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Banners","depth":2700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enchufes","depth":2800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Walls","depth":2900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Breach","depth":3000,"effectEnabled":true,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"ObjectsTiles","depth":3100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"HUE","depth":3200,"effectEnabled":true,"effectType":"_filter_hue","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_HueShift","type":0,"value":"0.5",},
        {"name":"g_HueSaturation","type":0,"value":"1",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles","depth":3300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":180,"SerialiseWidth":250,"TileCompressedData":[
-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-227,-2147483648,-23,0,-41977,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tileset2","path":"tilesets/tileset2/tileset2.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"LightPlayer","depth":3400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Meteors","depth":3500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_1","depth":3600,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
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
      ],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":3700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"s_bg","path":"sprites/s_bg/s_bg.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Salas",
    "path": "folders/Salas.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 5760,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 8000,
  },
  "sequenceId": null,
  "views": [
    {"hborder":300,"hport":720,"hspeed":-1,"hview":360,"inherit":false,"objectId":{"name":"o_camera","path":"objects/o_camera/o_camera.yy",},"vborder":300,"visible":true,"vspeed":-1,"wport":1280,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}