.class public Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;
.super Ljava/lang/Object;
.source "NavigationRouteSearch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configSearchRouteUrl(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "start"
    .parameter "dest"
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, listPass:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 305
    :cond_0
    const/4 v9, 0x0

    .line 334
    :goto_0
    return-object v9

    .line 307
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, startLat:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, startLng:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, p2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, destLat:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, p2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, destLng:Ljava/lang/String;
    const-string v8, ""

    .line 313
    .local v8, strPass:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 314
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 315
    .local v4, iPassSize:I
    if-lez v4, :cond_2

    .line 316
    const/4 v5, 0x0

    .line 317
    .local v5, passPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v4, :cond_4

    .line 329
    .end local v3           #i:I
    .end local v4           #iPassSize:I
    .end local v5           #passPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://apis.map.qq.com/customapi/didi/driving/?&from="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&to="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 330
    .local v9, url:Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 331
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "&pass="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 333
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "&output=json&key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 334
    goto/16 :goto_0

    .line 318
    .end local v9           #url:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #iPassSize:I
    .restart local v5       #passPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_4
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #passPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    check-cast v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 319
    .restart local v5       #passPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v5, :cond_6

    .line 321
    if-eqz v3, :cond_5

    .line 322
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 324
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 317
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method private parseAllRoutePoints(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .parameter "jsonDetail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<[",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 522
    if-nez p1, :cond_1

    .line 560
    :cond_0
    return-object v6

    .line 525
    :cond_1
    const/4 v3, 0x0

    .line 527
    .local v3, jsonArr:Lorg/json/JSONArray;
    :try_start_0
    const-string v7, "mt"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 532
    :goto_0
    if-eqz v3, :cond_0

    .line 535
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 536
    .local v2, iRouteSize:I
    if-eqz v2, :cond_0

    .line 540
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v6, listPoints:Ljava/util/List;
    const/4 v5, 0x0

    .line 543
    .local v5, latlngCoords:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v4, 0x0

    .line 544
    .local v4, jsonRoute:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 546
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 551
    :goto_2
    if-eqz v4, :cond_2

    .line 553
    invoke-direct {p0, v4}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parseSingleRoute(Lorg/json/JSONObject;)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v5

    .line 554
    if-eqz v5, :cond_2

    .line 556
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    .end local v1           #i:I
    .end local v2           #iRouteSize:I
    .end local v4           #jsonRoute:Lorg/json/JSONObject;
    .end local v5           #latlngCoords:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v6           #listPoints:Ljava/util/List;
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 548
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i:I
    .restart local v2       #iRouteSize:I
    .restart local v4       #jsonRoute:Lorg/json/JSONObject;
    .restart local v5       #latlngCoords:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .restart local v6       #listPoints:Ljava/util/List;
    :catch_1
    move-exception v0

    .line 549
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private parseLatLngFromJsonArray(Lorg/json/JSONArray;)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 17
    .parameter "jsonArrCoords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 358
    if-nez p1, :cond_1

    .line 359
    const/4 v12, 0x0

    .line 385
    :cond_0
    :goto_0
    return-object v12

    .line 361
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 362
    .local v10, iArrLength:I
    const/4 v13, 0x2

    if-ge v10, v13, :cond_2

    .line 363
    const/4 v12, 0x0

    goto :goto_0

    .line 365
    :cond_2
    div-int/lit8 v13, v10, 0x2

    new-array v12, v13, [Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 367
    .local v12, latlngResult:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    .line 368
    .local v7, dlongtitude:D
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    .line 370
    .local v3, dlatitude:D
    new-instance v11, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v11, v3, v4, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 371
    .local v11, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v13, 0x0

    aput-object v11, v12, v13

    .line 373
    const-wide/16 v1, 0x0

    .line 374
    .local v1, dlatSpan:D
    const-wide/16 v5, 0x0

    .line 375
    .local v5, dlngSpan:D
    const/4 v9, 0x2

    .local v9, i:I
    :goto_1
    add-int/lit8 v13, v10, -0x1

    if-ge v9, v13, :cond_0

    .line 376
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L

    div-double v5, v13, v15

    .line 377
    add-int/lit8 v13, v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L

    div-double v1, v13, v15

    .line 379
    add-double/2addr v7, v5

    .line 380
    add-double/2addr v3, v1

    .line 382
    new-instance v11, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .end local v11           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-direct {v11, v3, v4, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 383
    .restart local v11       #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    div-int/lit8 v13, v9, 0x2

    aput-object v11, v12, v13

    .line 375
    add-int/lit8 v9, v9, 0x2

    goto :goto_1
.end method

.method private parseLatlngFromString(Ljava/lang/String;)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 14
    .parameter "strAllCoords"

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 389
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, strsCoord:[Ljava/lang/String;
    if-nez v8, :cond_1

    .line 417
    :cond_0
    return-object v7

    .line 393
    :cond_1
    array-length v5, v8

    .line 394
    .local v5, iSize:I
    const/4 v9, 0x2

    if-le v5, v9, :cond_0

    .line 397
    div-int/lit8 v9, v5, 0x2

    new-array v7, v9, [Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 399
    .local v7, latlngResult:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    aget-object v9, v8, v13

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 400
    .local v3, flongtitude:F
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 402
    .local v1, flatitude:F
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    float-to-double v9, v1

    float-to-double v11, v3

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 403
    .local v6, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    aput-object v6, v7, v13

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, flatSpan:F
    const/4 v2, 0x0

    .line 407
    .local v2, flngSpan:F
    const/4 v4, 0x2

    .local v4, i:I
    :goto_0
    add-int/lit8 v9, v5, -0x1

    if-ge v4, v9, :cond_0

    .line 408
    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 409
    add-int/lit8 v9, v4, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 411
    add-float/2addr v3, v2

    .line 412
    add-float/2addr v1, v0

    .line 414
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .end local v6           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    float-to-double v9, v1

    float-to-double v11, v3

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 415
    .restart local v6       #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    div-int/lit8 v9, v4, 0x2

    aput-object v6, v7, v9

    .line 407
    add-int/lit8 v4, v4, 0x2

    goto :goto_0
.end method

.method private parsePassPointFromJsonArray(Lorg/json/JSONArray;)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 9
    .parameter "jsonArr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 338
    if-nez p1, :cond_1

    .line 354
    :cond_0
    return-object v6

    .line 341
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 342
    .local v5, ilength:I
    if-eqz v5, :cond_0

    .line 345
    div-int/lit8 v7, v5, 0x2

    new-array v6, v7, [Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 346
    .local v6, passPts:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const-wide/16 v0, 0x0

    .line 347
    .local v0, dlat:D
    const-wide/16 v2, 0x0

    .line 348
    .local v2, dlng:D
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 349
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    .line 350
    add-int/lit8 v4, v4, 0x1

    .line 351
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    .line 352
    div-int/lit8 v7, v4, 0x2

    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    aput-object v8, v6, v7

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private parsePassPointIndex(Lorg/json/JSONArray;)[I
    .locals 5
    .parameter "jsonArr"

    .prologue
    const/4 v3, 0x0

    .line 639
    if-nez p1, :cond_1

    .line 655
    :cond_0
    return-object v3

    .line 642
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 643
    .local v2, iLength:I
    if-eqz v2, :cond_0

    .line 646
    new-array v3, v2, [I

    .line 647
    .local v3, indexs:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 649
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private parsePoint(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 9
    .parameter "jsonPoint"

    .prologue
    const-wide v6, 0x40f86a0000000000L

    const/4 v4, 0x0

    .line 564
    if-nez p1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-object v4

    .line 567
    :cond_1
    const-string v3, ""

    .line 569
    .local v3, strValue:Ljava/lang/String;
    :try_start_0
    const-string v5, "pointx"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 574
    :goto_1
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 577
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 579
    .local v1, fpointx:F
    :try_start_1
    const-string v5, "pointy"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 584
    :goto_2
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 587
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 588
    .local v2, fpointy:F
    float-to-double v4, v1

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 589
    float-to-double v4, v2

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 590
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    float-to-double v5, v2

    float-to-double v7, v1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    goto :goto_0

    .line 571
    .end local v1           #fpointx:F
    .end local v2           #fpointy:F
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 581
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #fpointx:F
    :catch_1
    move-exception v0

    .line 582
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private parseRouteResults([B)Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    .locals 23
    .parameter "bytsBuffer"

    .prologue
    .line 421
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 422
    :cond_0
    const/16 v18, 0x0

    .line 518
    :goto_0
    return-object v18

    .line 424
    :cond_1
    const/16 v20, 0x0

    .line 426
    .local v20, strBuffer:Ljava/lang/String;
    :try_start_0
    new-instance v21, Ljava/lang/String;

    const-string v22, "utf-8"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v20           #strBuffer:Ljava/lang/String;
    .local v21, strBuffer:Ljava/lang/String;
    move-object/from16 v20, v21

    .line 431
    .end local v21           #strBuffer:Ljava/lang/String;
    .restart local v20       #strBuffer:Ljava/lang/String;
    :goto_1
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_3

    .line 432
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v4

    .line 429
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 434
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    const/4 v11, 0x0

    .line 436
    .local v11, jsonRoot:Lorg/json/JSONObject;
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11           #jsonRoot:Lorg/json/JSONObject;
    .local v12, jsonRoot:Lorg/json/JSONObject;
    move-object v11, v12

    .line 441
    .end local v12           #jsonRoot:Lorg/json/JSONObject;
    .restart local v11       #jsonRoot:Lorg/json/JSONObject;
    :goto_2
    if-nez v11, :cond_4

    .line 442
    const/16 v18, 0x0

    goto :goto_0

    .line 438
    :catch_1
    move-exception v4

    .line 439
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 444
    .end local v4           #e:Lorg/json/JSONException;
    :cond_4
    const/4 v8, 0x0

    .line 446
    .local v8, jsonDetail:Lorg/json/JSONObject;
    :try_start_2
    const-string v22, "detail"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 451
    :goto_3
    if-nez v8, :cond_5

    .line 452
    const/16 v18, 0x0

    goto :goto_0

    .line 448
    :catch_2
    move-exception v4

    .line 449
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 455
    .end local v4           #e:Lorg/json/JSONException;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parseAllRoutePoints(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v17

    .line 457
    .local v17, routePoints:Ljava/util/List;
    const/4 v9, 0x0

    .line 459
    .local v9, jsonInfo:Lorg/json/JSONObject;
    :try_start_3
    const-string v22, "info"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v9

    .line 464
    :goto_4
    if-nez v9, :cond_6

    .line 465
    const/16 v18, 0x0

    goto :goto_0

    .line 461
    :catch_3
    move-exception v4

    .line 462
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 467
    .end local v4           #e:Lorg/json/JSONException;
    :cond_6
    const/4 v7, 0x0

    .line 469
    .local v7, jsonDestination:Lorg/json/JSONObject;
    :try_start_4
    const-string v22, "dest"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v7

    .line 474
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parsePoint(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    .line 475
    .local v3, destlatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v13, 0x0

    .line 477
    .local v13, jsonStart:Lorg/json/JSONObject;
    :try_start_5
    const-string v22, "start"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v13

    .line 482
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parsePoint(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v19

    .line 483
    .local v19, starttlatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v15, 0x0

    .line 485
    .local v15, passJsonArr:Lorg/json/JSONArray;
    :try_start_6
    const-string v22, "pass"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v15

    .line 491
    :goto_7
    const/4 v14, 0x0

    .line 492
    .local v14, listPass:Ljava/util/List;
    if-eqz v15, :cond_7

    .line 493
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 494
    .local v6, ileng:I
    const/4 v10, 0x0

    .line 495
    .local v10, jsonPass:Lorg/json/JSONObject;
    const/16 v16, 0x0

    .line 496
    .local v16, passPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8
    if-lt v5, v6, :cond_8

    .line 516
    .end local v5           #i:I
    .end local v6           #ileng:I
    .end local v10           #jsonPass:Lorg/json/JSONObject;
    .end local v16           #passPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_7
    new-instance v18, Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    invoke-direct/range {v18 .. v18}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;-><init>()V

    .line 518
    .local v18, routeRes:Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    goto/16 :goto_0

    .line 471
    .end local v3           #destlatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v13           #jsonStart:Lorg/json/JSONObject;
    .end local v14           #listPass:Ljava/util/List;
    .end local v15           #passJsonArr:Lorg/json/JSONArray;
    .end local v18           #routeRes:Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    .end local v19           #starttlatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :catch_4
    move-exception v4

    .line 472
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 479
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v3       #destlatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .restart local v13       #jsonStart:Lorg/json/JSONObject;
    :catch_5
    move-exception v4

    .line 480
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 487
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v15       #passJsonArr:Lorg/json/JSONArray;
    .restart local v19       #starttlatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :catch_6
    move-exception v4

    .line 488
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 498
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v5       #i:I
    .restart local v6       #ileng:I
    .restart local v10       #jsonPass:Lorg/json/JSONObject;
    .restart local v14       #listPass:Ljava/util/List;
    .restart local v16       #passPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_8
    :try_start_7
    invoke-virtual {v15, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v10

    .line 503
    :goto_9
    if-eqz v10, :cond_a

    .line 505
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parsePoint(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v16

    .line 506
    if-eqz v16, :cond_a

    .line 508
    if-nez v14, :cond_9

    .line 509
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #listPass:Ljava/util/List;
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .restart local v14       #listPass:Ljava/util/List;
    :cond_9
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 500
    :catch_7
    move-exception v4

    .line 501
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9
.end method

.method private parseRouteResults2([B)[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    .locals 19
    .parameter "bytsBuffer"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 146
    :cond_0
    const/4 v14, 0x0

    .line 222
    :cond_1
    :goto_0
    return-object v14

    .line 148
    :cond_2
    const/16 v16, 0x0

    .line 150
    .local v16, strBuffer:Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/lang/String;

    const-string v18, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16           #strBuffer:Ljava/lang/String;
    .local v17, strBuffer:Ljava/lang/String;
    move-object/from16 v16, v17

    .line 155
    .end local v17           #strBuffer:Ljava/lang/String;
    .restart local v16       #strBuffer:Ljava/lang/String;
    :goto_1
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_4

    .line 156
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    const/4 v11, 0x0

    .line 160
    .local v11, jsonRoot:Lorg/json/JSONObject;
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11           #jsonRoot:Lorg/json/JSONObject;
    .local v12, jsonRoot:Lorg/json/JSONObject;
    move-object v11, v12

    .line 165
    .end local v12           #jsonRoot:Lorg/json/JSONObject;
    .restart local v11       #jsonRoot:Lorg/json/JSONObject;
    :goto_2
    if-nez v11, :cond_5

    .line 166
    const/4 v14, 0x0

    goto :goto_0

    .line 162
    :catch_1
    move-exception v3

    .line 163
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 169
    .end local v3           #e:Lorg/json/JSONException;
    :cond_5
    const/4 v8, -0x1

    .line 171
    .local v8, istatus:I
    :try_start_2
    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    .line 176
    :goto_3
    if-eqz v8, :cond_6

    .line 177
    const/4 v14, 0x0

    goto :goto_0

    .line 173
    :catch_2
    move-exception v5

    .line 174
    .local v5, e2:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 180
    .end local v5           #e2:Lorg/json/JSONException;
    :cond_6
    const/4 v10, 0x0

    .line 182
    .local v10, jsonResults:Lorg/json/JSONObject;
    :try_start_3
    const-string v18, "result"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 187
    :goto_4
    if-nez v10, :cond_7

    .line 188
    const/4 v14, 0x0

    goto :goto_0

    .line 184
    :catch_3
    move-exception v3

    .line 185
    .restart local v3       #e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 190
    .end local v3           #e:Lorg/json/JSONException;
    :cond_7
    const/4 v9, 0x0

    .line 192
    .local v9, jsonArrRoutes:Lorg/json/JSONArray;
    :try_start_4
    const-string v18, "routes"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v9

    .line 197
    :goto_5
    if-nez v9, :cond_8

    .line 198
    const/4 v14, 0x0

    goto :goto_0

    .line 194
    :catch_4
    move-exception v4

    .line 195
    .local v4, e1:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 200
    .end local v4           #e1:Lorg/json/JSONException;
    :cond_8
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 201
    .local v7, iRouteCount:I
    if-gtz v7, :cond_9

    .line 202
    const/4 v14, 0x0

    goto :goto_0

    .line 205
    :cond_9
    new-array v14, v7, [Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    .line 207
    .local v14, results:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    const/4 v13, 0x0

    .line 208
    .local v13, jsonRoute:Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 209
    .local v15, routeSingle:Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_6
    if-ge v6, v7, :cond_1

    .line 211
    :try_start_5
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v13

    .line 216
    :goto_7
    if-eqz v13, :cond_a

    .line 218
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parseSingleRoute2(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    move-result-object v15

    .line 219
    aput-object v15, v14, v6

    .line 209
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 213
    :catch_5
    move-exception v3

    .line 214
    .restart local v3       #e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method private parseSingleRoute(Lorg/json/JSONObject;)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 18
    .parameter "jsonRoute"

    .prologue
    .line 594
    if-nez p1, :cond_1

    .line 595
    const/4 v9, 0x0

    .line 635
    :cond_0
    :goto_0
    return-object v9

    .line 597
    :cond_1
    const/4 v10, 0x0

    .line 599
    .local v10, strAllCoords:Ljava/lang/String;
    :try_start_0
    const-string v12, "coors"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 604
    :goto_1
    if-nez v10, :cond_2

    .line 605
    const/4 v9, 0x0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 607
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 608
    .local v11, strsCoord:[Ljava/lang/String;
    if-nez v11, :cond_3

    .line 609
    const/4 v9, 0x0

    goto :goto_0

    .line 611
    :cond_3
    array-length v7, v11

    .line 612
    .local v7, iSize:I
    const/4 v12, 0x2

    if-gt v7, v12, :cond_4

    .line 613
    const/4 v9, 0x0

    goto :goto_0

    .line 615
    :cond_4
    div-int/lit8 v12, v7, 0x2

    new-array v9, v12, [Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 617
    .local v9, latlngResult:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 618
    .local v5, flongtitude:F
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 620
    .local v3, flatitude:F
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    float-to-double v12, v3

    const-wide v14, 0x40f86a0000000000L

    div-double/2addr v12, v14

    float-to-double v14, v5

    const-wide v16, 0x40f86a0000000000L

    div-double v14, v14, v16

    invoke-direct {v8, v12, v13, v14, v15}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 621
    .local v8, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v12, 0x0

    aput-object v8, v9, v12

    .line 623
    const/4 v2, 0x0

    .line 624
    .local v2, flatSpan:F
    const/4 v4, 0x0

    .line 625
    .local v4, flngSpan:F
    const/4 v6, 0x2

    .local v6, i:I
    :goto_2
    if-ge v6, v7, :cond_0

    .line 626
    aget-object v12, v11, v6

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 627
    add-int/lit8 v12, v6, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 629
    add-float/2addr v5, v4

    .line 630
    add-float/2addr v3, v2

    .line 632
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .end local v8           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    float-to-double v12, v3

    const-wide v14, 0x40f86a0000000000L

    div-double/2addr v12, v14

    float-to-double v14, v5

    const-wide v16, 0x40f86a0000000000L

    div-double v14, v14, v16

    invoke-direct {v8, v12, v13, v14, v15}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 633
    .restart local v8       #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    div-int/lit8 v12, v6, 0x2

    aput-object v8, v9, v12

    .line 625
    add-int/lit8 v6, v6, 0x2

    goto :goto_2
.end method

.method private parseSingleRoute2(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    .locals 14
    .parameter "jsonRoute"

    .prologue
    const/4 v11, 0x0

    .line 226
    if-nez p1, :cond_1

    move-object v10, v11

    .line 300
    :cond_0
    :goto_0
    return-object v10

    .line 229
    :cond_1
    new-instance v10, Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    invoke-direct {v10}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;-><init>()V

    .line 230
    .local v10, routeRes:Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    const/4 v8, 0x0

    .line 232
    .local v8, naviDistance:I
    :try_start_0
    const-string v12, "distance"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 237
    :goto_1
    int-to-long v12, v8

    invoke-virtual {v10, v12, v13}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->setDistance(J)V

    .line 238
    const/4 v9, 0x0

    .line 240
    .local v9, naviTime:I
    :try_start_1
    const-string v12, "time"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 245
    :goto_2
    int-to-long v12, v9

    invoke-virtual {v10, v12, v13}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->setTime(J)V

    .line 246
    const/4 v5, 0x0

    .line 248
    .local v5, jsonArrPolyline:Lorg/json/JSONArray;
    :try_start_2
    const-string v12, "polyline"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 253
    :goto_3
    if-nez v5, :cond_2

    move-object v10, v11

    .line 254
    goto :goto_0

    .line 234
    .end local v5           #jsonArrPolyline:Lorg/json/JSONArray;
    .end local v9           #naviTime:I
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v9       #naviTime:I
    :catch_1
    move-exception v0

    .line 243
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 250
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v5       #jsonArrPolyline:Lorg/json/JSONArray;
    :catch_2
    move-exception v0

    .line 251
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 256
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const/4 v7, 0x0

    .line 258
    .local v7, latlngRoutes:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :try_start_3
    invoke-direct {p0, v5}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parseLatLngFromJsonArray(Lorg/json/JSONArray;)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 263
    :goto_4
    if-nez v7, :cond_3

    move-object v10, v11

    .line 264
    goto :goto_0

    .line 260
    :catch_3
    move-exception v1

    .line 261
    .local v1, e1:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 266
    .end local v1           #e1:Lorg/json/JSONException;
    :cond_3
    invoke-virtual {v10, v7}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->setRoutePoints([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 267
    const/4 v3, 0x0

    .line 269
    .local v3, jsonArrPass:Lorg/json/JSONArray;
    :try_start_4
    const-string v11, "polyline_pass"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v3

    .line 274
    :goto_5
    const/4 v6, 0x0

    .line 275
    .local v6, latlngPass:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v3, :cond_4

    .line 277
    :try_start_5
    invoke-direct {p0, v3}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parsePassPointFromJsonArray(Lorg/json/JSONArray;)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v6

    .line 283
    :cond_4
    :goto_6
    invoke-virtual {v10, v6}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->setPassPoints([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, indexs:[I
    const/4 v4, 0x0

    .line 288
    .local v4, jsonArrPassIndexs:Lorg/json/JSONArray;
    :try_start_6
    const-string v11, "polyline_pass_index"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v4

    .line 293
    :goto_7
    if-eqz v4, :cond_5

    .line 294
    invoke-direct {p0, v4}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parsePassPointIndex(Lorg/json/JSONArray;)[I

    move-result-object v2

    .line 296
    :cond_5
    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v10, v2}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->setPassPointsIndex([I)V

    goto :goto_0

    .line 271
    .end local v2           #indexs:[I
    .end local v4           #jsonArrPassIndexs:Lorg/json/JSONArray;
    .end local v6           #latlngPass:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :catch_4
    move-exception v0

    .line 272
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 279
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v6       #latlngPass:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :catch_5
    move-exception v0

    .line 280
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 289
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #indexs:[I
    .restart local v4       #jsonArrPassIndexs:Lorg/json/JSONArray;
    :catch_6
    move-exception v0

    .line 291
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .parameter "mContex"

    .prologue
    .line 32
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->initNet(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public searchNavigationRoute(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FZZZZLjava/util/List;)Ljava/util/ArrayList;
    .locals 28
    .parameter "mContext"
    .parameter "latlngFrom"
    .parameter "latlngTo"
    .parameter "fAngle"
    .parameter "isAvoidHighway"
    .parameter "isAvoidTolls"
    .parameter "boShortestTimeOrShortestDistance"
    .parameter "boMultiRoutes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "FZZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/navisdk/navigation/NaviRoute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    .local p9, listwaypoint:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    invoke-static/range {p2 .. p2}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/MapUtil;->getGeoPointFromLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/navisdk/navigation/internal2/GeoPoint;

    move-result-object v14

    .line 41
    .local v14, geoFrom:Lcom/tencent/tencentmap/navisdk/navigation/internal2/GeoPoint;
    invoke-static/range {p3 .. p3}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/MapUtil;->getGeoPointFromLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/navisdk/navigation/internal2/GeoPoint;

    move-result-object v15

    .line 43
    .local v15, getTo:Lcom/tencent/tencentmap/navisdk/navigation/internal2/GeoPoint;
    new-instance v3, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;

    invoke-direct {v3}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;-><init>()V

    .line 44
    .local v3, from:Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;
    iput-object v14, v3, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;->point:Lcom/tencent/tencentmap/navisdk/navigation/internal2/GeoPoint;

    .line 45
    new-instance v4, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;

    invoke-direct {v4}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;-><init>()V

    .line 46
    .local v4, to:Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;
    iput-object v15, v4, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;->point:Lcom/tencent/tencentmap/navisdk/navigation/internal2/GeoPoint;

    .line 47
    if-nez p7, :cond_2

    const/4 v5, 0x2

    .line 49
    .local v5, iFeature:I
    :goto_0
    const/4 v13, 0x0

    .line 50
    .local v13, listPass:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;>;"
    if-eqz p9, :cond_0

    .line 51
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v18

    .line 52
    .local v18, iwaysize:I
    if-lez v18, :cond_0

    .line 53
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #listPass:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .restart local v13       #listPass:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;>;"
    const/16 v27, 0x0

    .line 55
    .local v27, waypt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 70
    .end local v16           #i:I
    .end local v18           #iwaysize:I
    .end local v27           #waypt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    new-instance v2, Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRoutePlanSearchParam;

    .line 71
    const/4 v8, 0x0

    const-string v9, ""

    const-string v11, ""

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p4

    move/from16 v12, p8

    .line 70
    invoke-direct/range {v2 .. v13}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRoutePlanSearchParam;-><init>(Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;IZZILjava/lang/String;FLjava/lang/String;ZLjava/util/List;)V

    .line 73
    .local v2, param:Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRoutePlanSearchParam;
    const/16 v24, 0x0

    .line 75
    .local v24, result:Lcom/tencent/tencentmap/navisdk/navigation/internal2/SearchResult;
    new-instance v26, Lcom/tencent/tencentmap/navisdk/navigation/internal2/NavInfoMapService;

    invoke-direct/range {v26 .. v26}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/NavInfoMapService;-><init>()V

    .line 77
    .local v26, service:Lcom/tencent/tencentmap/navisdk/navigation/internal2/NavInfoMapService;
    const/4 v6, 0x4

    .line 76
    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v2}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/NavInfoMapService;->search(ILcom/tencent/tencentmap/navisdk/navigation/internal2/SearchParam;)Lcom/tencent/tencentmap/navisdk/navigation/internal2/SearchResult;

    move-result-object v24

    .line 78
    move-object/from16 v0, v24

    iget v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/SearchResult;->resultCode:I

    if-eqz v6, :cond_5

    .line 79
    const/16 v19, 0x0

    .line 117
    :cond_1
    :goto_2
    return-object v19

    .line 47
    .end local v2           #param:Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRoutePlanSearchParam;
    .end local v5           #iFeature:I
    .end local v13           #listPass:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;>;"
    .end local v24           #result:Lcom/tencent/tencentmap/navisdk/navigation/internal2/SearchResult;
    .end local v26           #service:Lcom/tencent/tencentmap/navisdk/navigation/internal2/NavInfoMapService;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 56
    .restart local v5       #iFeature:I
    .restart local v13       #listPass:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;>;"
    .restart local v16       #i:I
    .restart local v18       #iwaysize:I
    .restart local v27       #waypt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_3
    move-object/from16 v0, p9

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #waypt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    check-cast v27, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 57
    .restart local v27       #waypt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v27, :cond_4

    .line 55
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 60
    :cond_4
    new-instance v22, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;

    invoke-direct/range {v22 .. v22}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;-><init>()V

    .line 61
    .local v22, poiPass:Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;
    invoke-static/range {v27 .. v27}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/MapUtil;->getGeoPointFromLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/navisdk/navigation/internal2/GeoPoint;

    move-result-object v6

    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;->point:Lcom/tencent/tencentmap/navisdk/navigation/internal2/GeoPoint;

    .line 62
    new-instance v21, Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;

    invoke-direct/range {v21 .. v22}, Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;-><init>(Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;)V

    .line 63
    .local v21, passPara:Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 85
    .end local v16           #i:I
    .end local v18           #iwaysize:I
    .end local v21           #passPara:Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRouteSearchPassParam;
    .end local v22           #poiPass:Lcom/tencent/tencentmap/navisdk/navigation/internal2/Poi;
    .end local v27           #waypt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .restart local v2       #param:Lcom/tencent/tencentmap/navisdk/navigation/internal2/CarRoutePlanSearchParam;
    .restart local v24       #result:Lcom/tencent/tencentmap/navisdk/navigation/internal2/SearchResult;
    .restart local v26       #service:Lcom/tencent/tencentmap/navisdk/navigation/internal2/NavInfoMapService;
    :cond_5
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/NavInfoMapService;->strErrorMessage:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 86
    new-instance v6, Ljava/lang/Exception;

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/NavInfoMapService;->strErrorMessage:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 88
    :cond_6
    const/16 v23, 0x0

    .line 90
    .local v23, res:Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/SearchResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23           #res:Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;
    check-cast v23, Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;

    .line 93
    .restart local v23       #res:Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;
    move-object/from16 v0, v23

    iget v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;->type:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_7

    .line 94
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;->roadBounds:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;->roadBounds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 95
    new-instance v19, Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    .line 98
    :cond_7
    move-object/from16 v0, v23

    iget v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    .line 99
    const/16 v19, 0x0

    goto :goto_2

    .line 101
    :cond_8
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;->routes:Ljava/util/ArrayList;

    if-nez v6, :cond_9

    .line 102
    const/16 v19, 0x0

    goto :goto_2

    .line 104
    :cond_9
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;->routes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 105
    .local v17, isize:I
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v19, listRoute:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/navisdk/navigation/NaviRoute;>;"
    const/16 v20, 0x0

    .line 107
    .local v20, naviroute:Lcom/tencent/tencentmap/navisdk/navigation/NaviRoute;
    const/16 v25, 0x0

    .line 108
    .local v25, route:Lcom/tencent/tencentmap/navisdk/navigation/internal2/Route;
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 109
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/tencent/tencentmap/navisdk/navigation/internal2/RouteSearchResult;->routes:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #route:Lcom/tencent/tencentmap/navisdk/navigation/internal2/Route;
    check-cast v25, Lcom/tencent/tencentmap/navisdk/navigation/internal2/Route;

    .line 110
    .restart local v25       #route:Lcom/tencent/tencentmap/navisdk/navigation/internal2/Route;
    if-nez v25, :cond_a

    .line 108
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 113
    :cond_a
    new-instance v20, Lcom/tencent/tencentmap/navisdk/navigation/NaviRoute;

    .end local v20           #naviroute:Lcom/tencent/tencentmap/navisdk/navigation/NaviRoute;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/navisdk/navigation/NaviRoute;-><init>(Lcom/tencent/tencentmap/navisdk/navigation/internal2/Route;)V

    .line 114
    .restart local v20       #naviroute:Lcom/tencent/tencentmap/navisdk/navigation/NaviRoute;
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public searchRoute(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Ljava/util/List;Ljava/lang/String;)[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    .locals 5
    .parameter "startPt"
    .parameter "destPt"
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/tencent/tencentmap/navisdk/search/RouteResults;"
        }
    .end annotation

    .prologue
    .local p3, listPass:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->configSearchRouteUrl(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, strUrl:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v2

    .line 126
    :cond_1
    const/4 v1, 0x0

    .line 128
    .local v1, netres:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    :try_start_0
    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->doGet2(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_1
    if-eqz v1, :cond_0

    .line 136
    iget-object v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->bytResponse:[B

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->bytResponse:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 140
    iget-object v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->bytResponse:[B

    invoke-direct {p0, v4}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->parseRouteResults2([B)[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    move-result-object v2

    .line 141
    .local v2, routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    goto :goto_0

    .line 130
    .end local v2           #routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
