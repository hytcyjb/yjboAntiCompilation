.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gn;
.super Ljava/lang/Object;
.source "OfflineMapManagerHelper.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field public c:Lcom/tencent/tencentmap/mapsdk/maps/a/gk;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "tencentmapsdk"

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .locals 7
    .parameter "data"
    .parameter "dir"

    .prologue
    .line 681
    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    iput-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d:Ljava/lang/String;

    .line 685
    iput-object p2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->y:Ljava/lang/String;

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->z:Ljava/lang/String;

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->A:Ljava/lang/String;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v0, assUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_1
    iput-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->B:Ljava/util/List;

    .line 706
    return-object p1

    .line 681
    .end local v0           #assUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    array-length v4, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-char v5, v2, v1

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .locals 5
    .parameter "pinyin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, mEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 530
    .local v1, data:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    iget-object v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    .end local v1           #data:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :goto_0
    return-object v1

    .line 533
    .restart local v1       #data:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v4

    .line 535
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 536
    .local v0, child:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 537
    goto :goto_0

    .line 543
    .end local v0           #child:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v1           #data:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .locals 24
    .parameter "cityJsonObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    const-string v22, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, id:I
    const-string v22, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, name:Ljava/lang/String;
    const-string v22, "pinyin"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, pinyin:Ljava/lang/String;
    const-string v22, "shortPinyin"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, shotPinyin:Ljava/lang/String;
    const-string v22, "area"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, area:Ljava/lang/String;
    const-string v22, "roadid"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v10

    .line 135
    .local v10, roadId:I
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    invoke-direct/range {v4 .. v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    .local v4, city:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    iget-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->g:Ljava/lang/String;

    .line 137
    iget-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->h:Ljava/lang/String;

    .line 140
    const-string v22, "centerX"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v20

    .line 141
    .local v20, x:I
    const-string v22, "centerY"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v21

    .line 142
    .local v21, y:I
    const-string v22, "scale"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    .line 146
    .local v18, scale:I
    new-instance v22, Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;-><init>(III)V

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;

    .line 149
    const-string v22, "hasBusline"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    iput-boolean v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->j:Z

    .line 152
    const-string v22, "bus"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 153
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->v:Ljava/util/List;

    .line 154
    const-string v22, "bus"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 155
    .local v11, busArray:Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_1

    .line 156
    iget-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->v:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 149
    .end local v11           #busArray:Lorg/json/JSONArray;
    .end local v15           #i:I
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    goto :goto_0

    .line 161
    :cond_1
    const-string v22, "route"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 162
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->w:Ljava/util/List;

    .line 163
    const-string v22, "route"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 164
    .local v17, routeArray:Lorg/json/JSONArray;
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_2

    .line 165
    iget-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->w:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 169
    .end local v15           #i:I
    .end local v17           #routeArray:Lorg/json/JSONArray;
    :cond_2
    const-string v22, "cityList"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    .line 170
    if-eqz v22, :cond_3

    .line 171
    const-string v22, "cityList"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 172
    .local v14, cityListJsonArr:Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    .line 173
    .local v19, size:I
    const/16 v16, 0x0

    .local v16, index:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 174
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 175
    .local v13, childJsonObj:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v12

    .line 176
    .local v12, child:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    iget-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->g:Ljava/lang/String;

    .line 177
    iget-object v0, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->h:Ljava/lang/String;

    .line 178
    invoke-virtual {v4, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)V

    .line 173
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 182
    .end local v12           #child:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v13           #childJsonObj:Lorg/json/JSONObject;
    .end local v14           #cityListJsonArr:Lorg/json/JSONArray;
    .end local v16           #index:I
    .end local v19           #size:I
    :cond_3
    return-object v4
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;)Lcom/tencent/tencentmap/mapsdk/maps/a/gx;
    .locals 4
    .parameter "x1"

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;->a(Ljava/lang/StringBuilder;I)V

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;-><init>()V

    iput-short v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->a:S

    const/16 v1, 0x8

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->b:I

    const-string v1, "CMD_ConfCheck"

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->c:Ljava/lang/String;

    iput v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->d:I

    iput-byte v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->e:B

    const-string v1, "0"

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->f:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->g:Ljava/lang/String;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a:J

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a()[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->h:[B

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->i:[B

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 109
    .local v2, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const v4, 0xc800

    new-array v1, v4, [B

    .line 111
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 115
    .local v3, result:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 117
    return-object v3
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "jsonObj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, ""

    .line 199
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, cityData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    :try_start_0
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->c(Landroid/content/Context;)[B

    move-result-object v0

    .line 302
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 304
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gl;->a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0           #data:[B
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 315
    return-object v1

    .line 307
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "cityVer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p2, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    iget-object v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->a:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->d:Ljava/lang/String;

    .line 585
    iget-object v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->e:Ljava/lang/String;

    .line 589
    iget-object v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->f:Ljava/lang/String;

    .line 592
    iget-object v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;

    .line 594
    .local v2, verInfo:Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;
    iget-object v4, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    iget-object v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v0, v3

    .line 596
    .local v0, city:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :goto_1
    if-eqz v0, :cond_0

    .line 598
    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->n:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    .line 599
    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->c:J

    iput-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->n:J

    .line 601
    :cond_2
    iget v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->b:I

    iput v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->l:I

    .line 602
    iget-object v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->r:Ljava/lang/String;

    .line 603
    iget-object v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->e:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->x:Ljava/lang/String;

    .line 604
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->C:Z

    goto :goto_0

    .line 594
    .end local v0           #city:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :cond_3
    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    iget-object v7, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v0, v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 609
    .end local v2           #verInfo:Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/gn;Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move v3, v2

    :goto_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_3

    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x2000

    new-array v5, v5, [B

    :goto_1
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;-><init>()V

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;

    invoke-direct {v1, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;-><init>([B)V

    const-string v5, "utf-8"

    invoke-virtual {v1, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->h:[B

    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;

    invoke-direct {v5, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;-><init>([B)V

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;-><init>()V

    invoke-virtual {v1, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V

    iget-object v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    iget v5, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gv;->a:I

    if-eqz v5, :cond_2

    new-instance v0, Ljava/lang/Exception;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gv;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gv;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;-><init>()V

    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->b()[B

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;-><init>([B)V

    const-string v0, "utf-8"

    invoke-virtual {v5, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V

    iget-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;

    iget v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v1, v10, :cond_3

    :try_start_3
    invoke-static {p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    array-length v6, v5

    move v1, v2

    :goto_4
    if-ge v1, v6, :cond_6

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_2
    move-exception v1

    :cond_6
    :try_start_4
    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->f:[B

    iget v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->e:I

    if-ne v5, v10, :cond_7

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a([B)[B

    move-result-object v1

    :cond_7
    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->d:I

    const-string v1, "com.tencent.tencentmap.mapsdk.maps.offlinemap"

    const/4 v6, 0x0

    invoke-virtual {p3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "intVersion"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    if-nez v0, :cond_8

    :try_start_7
    invoke-static {p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    invoke-static {p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_8
    :goto_6
    :try_start_8
    invoke-direct {p0, p3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gk;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gk;

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gk;->a(Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
.end method

.method private static a([B)[B
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 893
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 895
    .local v1, is:Ljava/util/zip/InflaterInputStream;
    new-array v3, v7, [B

    .line 896
    .local v3, rdata:[B
    const/4 v5, 0x0

    .line 897
    .local v5, total:I
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 901
    .local v0, data_atime:[B
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 906
    .local v2, len:I
    if-lez v2, :cond_1

    .line 907
    add-int/2addr v5, v2

    .line 908
    new-array v4, v5, [B

    .line 909
    .local v4, temp:[B
    array-length v6, v3

    invoke-static {v3, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    array-length v6, v3

    invoke-static {v0, v7, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    move-object v3, v4

    .line 914
    .end local v4           #temp:[B
    :cond_1
    if-gtz v2, :cond_0

    .line 916
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v6, v3

    .line 921
    .end local v2           #len:I
    :goto_1
    return-object v6

    .line 902
    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 904
    const/4 v6, 0x0

    goto :goto_1

    .line 917
    .restart local v2       #len:I
    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .parameter "jsonObj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v2, firstLevelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    const-string v7, "city.json"

    invoke-static {p1, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, cityData:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 89
    .local v5, provinceJsonArray:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 90
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 91
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 92
    .local v1, cityJsonObj:Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lorg/json/JSONObject;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v4

    .line 93
    .local v4, province:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v1           #cityJsonObj:Lorg/json/JSONObject;
    .end local v4           #province:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :cond_0
    return-object v2
.end method

.method private b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter "mcontex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, mEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    const/4 v3, 0x0

    .line 336
    .local v3, dir:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 337
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 344
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 348
    .local v2, data:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v6, 0x1

    iput v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->t:I

    .line 350
    invoke-direct {p0, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 351
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 358
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 359
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 363
    .local v0, child:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    iput-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->u:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 364
    const/4 v6, 0x2

    iput v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->t:I

    .line 365
    invoke-direct {p0, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    goto :goto_1

    .line 338
    .end local v0           #child:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    .end local v2           #data:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 378
    :cond_1
    return-object p2
.end method

.method private static c(Landroid/content/Context;Ljava/util/List;)V
    .locals 12
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, mEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    :try_start_0
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->d(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 410
    .local v1, dataDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 412
    .local v2, fileList:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 422
    .end local v1           #dataDir:Ljava/io/File;
    .end local v2           #fileList:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 417
    .restart local v1       #dataDir:Ljava/io/File;
    .restart local v2       #fileList:[Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v5

    :goto_2
    if-lez v6, :cond_2

    aget-object v7, v2, v6

    add-int/lit8 v8, v6, -0x1

    aget-object v8, v2, v8

    aput-object v8, v2, v6

    add-int/lit8 v8, v6, -0x1

    aput-object v7, v2, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 419
    :cond_3
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v8, v0, v3

    .line 420
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    const-wide/16 v9, 0x3

    :try_start_2
    invoke-virtual {v6, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v7

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v9

    invoke-static {v5, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Ljava/lang/String;Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v5

    const/16 v10, 0x4d

    if-eq v7, v10, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 419
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 420
    :cond_5
    if-eqz v5, :cond_7

    :try_start_4
    iput v9, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->m:I

    iget v7, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->m:I

    iget v8, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->l:I

    if-ge v7, v8, :cond_6

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->s:Z

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    :try_start_6
    invoke-virtual {v5, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(I)V

    iget-wide v7, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->n:J

    iput-wide v7, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->o:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_1
    move-exception v5

    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v6, :cond_4

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_4

    :cond_7
    :try_start_9
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catch_3
    move-exception v5

    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v6, :cond_4

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    goto :goto_4

    :catchall_0
    move-exception v5

    move-object v6, v7

    :goto_8
    if-eqz v6, :cond_8

    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_8
    :goto_9
    throw v5

    :cond_9
    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v5, ".zip"

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    iget-object v9, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->l:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    :goto_a
    if-eqz v5, :cond_f

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->o:J

    iget v6, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->s:Z

    :cond_b
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(I)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    iget-object v10, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    if-eqz v10, :cond_d

    iget-object v10, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->l:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".zip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_a

    :cond_e
    const/4 v5, 0x0

    goto :goto_a

    :cond_f
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 407
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #dataDir:Ljava/io/File;
    .end local v2           #fileList:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_5
    move-exception v5

    goto/16 :goto_0

    .line 420
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v1       #dataDir:Ljava/io/File;
    .restart local v2       #fileList:[Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :catch_6
    move-exception v5

    goto/16 :goto_4

    :catch_7
    move-exception v6

    goto/16 :goto_9

    :catchall_1
    move-exception v5

    goto/16 :goto_8

    :catch_8
    move-exception v5

    move-object v6, v7

    goto/16 :goto_7

    :catch_9
    move-exception v5

    move-object v6, v7

    goto/16 :goto_6
.end method

.method private static c(Landroid/content/Context;)[B
    .locals 9
    .parameter "mcontex"

    .prologue
    .line 245
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 246
    .local v2, f:Ljava/io/File;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 248
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 250
    .local v6, result:[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 251
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v1, v7, [B

    .line 252
    .local v1, buffer:[B
    const/4 v5, 0x0

    .line 253
    .local v5, readLen:I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 254
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 259
    .end local v1           #buffer:[B
    .end local v5           #readLen:I
    :catch_0
    move-exception v7

    move-object v3, v4

    .line 263
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 264
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 266
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 272
    :goto_2
    return-object v6

    .line 257
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buffer:[B
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #readLen:I
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 258
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    .line 263
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 269
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 267
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 270
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 267
    .end local v1           #buffer:[B
    .end local v5           #readLen:I
    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 262
    :catchall_0
    move-exception v7

    .line 263
    :goto_3
    if-eqz v3, :cond_2

    .line 264
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 266
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 269
    :goto_4
    throw v7

    .line 267
    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 262
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 259
    :catch_4
    move-exception v7

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a()Ljava/io/File;

    move-result-object v0

    .line 393
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 397
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 282
    .local v0, cityData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    :goto_0
    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 293
    .end local v0           #cityData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    :goto_1
    return-object v0

    .line 289
    .restart local v0       #cityData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gn;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/List;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, mEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-static {p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 328
    return-object v0
.end method
