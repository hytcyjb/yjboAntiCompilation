.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ab;
.super Ljava/lang/Object;
.source "JceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bs"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method

.method private a(DIZ)D
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 325
    invoke-direct {p0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 327
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 328
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    sparse-switch v1, :sswitch_data_0

    .line 339
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :sswitch_0
    const-wide/16 p1, 0x0

    .line 344
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_0
    :goto_0
    return-wide p1

    .line 333
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    float-to-double p1, v1

    .line 334
    goto :goto_0

    .line 336
    :sswitch_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    .line 337
    goto :goto_0

    .line 341
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_1
    if-eqz p4, :cond_0

    .line 342
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private a(FIZ)F
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 305
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 307
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 308
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    sparse-switch v1, :sswitch_data_0

    .line 316
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :sswitch_0
    const/4 p1, 0x0

    .line 321
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_0
    :goto_0
    return p1

    .line 313
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    .line 314
    goto :goto_0

    .line 318
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_1
    if-eqz p3, :cond_0

    .line 319
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;Ljava/nio/ByteBuffer;)I
    .locals 3
    .parameter "hd"
    .parameter "bb"

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 78
    .local v0, b:B
    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    .line 79
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->b:I

    .line 80
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->b:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->b:I

    .line 82
    const/4 v1, 0x2

    .line 84
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/List;IZ)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;IZ)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 812
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 820
    :cond_1
    :goto_0
    return-object v1

    .line 815
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v2

    .line 816
    .local v2, tt:[Ljava/lang/Object;,"[TT;"
    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 817
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v1, ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 819
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .locals 11
    .parameter
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p1, mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p2, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 500
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 502
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 533
    :cond_1
    return-object p1

    .line 507
    .restart local p1       #mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 508
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 509
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 510
    .local v4, mk:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 512
    .local v5, mv:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 513
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 514
    .local v1, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 515
    iget-byte v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v8, :pswitch_data_0

    .line 528
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v9, "type mismatch."

    invoke-direct {v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v8

    .line 517
    :pswitch_0
    invoke-virtual {p0, v10, v10, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v6

    .line 518
    .local v6, size:I
    if-gez v6, :cond_3

    .line 519
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "size invalid: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v8

    .line 520
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 521
    invoke-virtual {p0, v4, v10, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 522
    .local v3, k:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, v5, v9, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v7

    .line 523
    .local v7, v:Ljava/lang/Object;,"TV;"
    invoke-interface {p1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v1           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v2           #i:I
    .end local v3           #k:Ljava/lang/Object;,"TK;"
    .end local v6           #size:I
    .end local v7           #v:Ljava/lang/Object;,"TV;"
    :cond_4
    if-eqz p4, :cond_1

    .line 531
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v9, "require field not exist."

    invoke-direct {v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v8

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private a()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 125
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 126
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(B)V

    .line 127
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 128
    return-void
.end method

.method private a(B)V
    .locals 8
    .parameter "type"

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 197
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "invalid type."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    .line 195
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 143
    :pswitch_2
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    goto :goto_0

    .line 146
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    goto :goto_0

    .line 149
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    goto :goto_0

    .line 152
    :pswitch_5
    invoke-direct {p0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    goto :goto_0

    .line 155
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    goto :goto_0

    .line 158
    :pswitch_7
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 159
    .local v2, len:I
    if-gez v2, :cond_1

    .line 160
    add-int/lit16 v2, v2, 0x100

    .line 161
    :cond_1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    goto :goto_0

    .line 165
    .end local v2           #len:I
    :pswitch_8
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    goto :goto_0

    .line 169
    :pswitch_9
    invoke-virtual {p0, v5, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 170
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    mul-int/lit8 v4, v3, 0x2

    if-ge v1, v4, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b()V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    .end local v1           #i:I
    .end local v3           #size:I
    :pswitch_a
    invoke-virtual {p0, v5, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 176
    .restart local v3       #size:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b()V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v1           #i:I
    .end local v3           #size:I
    :pswitch_b
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 182
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 183
    iget-byte v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    if-eqz v4, :cond_2

    .line 184
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "skipField with invalid type, type value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_2
    invoke-virtual {p0, v5, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 187
    .restart local v3       #size:I
    invoke-direct {p0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    goto :goto_0

    .line 191
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v3           #size:I
    :pswitch_c
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a()V

    goto/16 :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method private a(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    return-void
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V
    .locals 1
    .parameter "hd"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;Ljava/nio/ByteBuffer;)I

    .line 89
    return-void
.end method

.method private a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, l:[Ljava/lang/Object;,"[TT;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 805
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v1, "unable to get type of key and value."

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 133
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 134
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(B)V

    .line 135
    return-void
.end method

.method private b(I)Z
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 104
    :try_start_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 106
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :goto_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 107
    .local v1, len:I
    iget-byte v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 118
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #len:I
    :cond_0
    :goto_1
    return v2

    .line 110
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .restart local v1       #len:I
    :cond_1
    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->b:I

    if-gt p1, v3, :cond_2

    .line 111
    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->b:I

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .line 112
    :cond_2
    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(I)V

    .line 113
    iget-byte v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    invoke-direct {p0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(B)V
    :try_end_0
    .catch Lcom/tencent/tencentmap/mapsdk/maps/a/y; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 117
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #len:I
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private b(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .local p1, mt:Ljava/lang/Object;,"TT;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 825
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 826
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 827
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 828
    iget-byte v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v5, :pswitch_data_0

    .line 841
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v5

    .line 830
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 831
    .local v3, size:I
    if-gez v3, :cond_0

    .line 832
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "size invalid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v5

    .line 833
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 834
    .local v2, lr:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 835
    invoke-virtual {p0, p1, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 836
    .local v4, t:Ljava/lang/Object;,"TT;"
    aput-object v4, v2, v1

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #i:I
    .end local v2           #lr:[Ljava/lang/Object;,"[TT;"
    .end local v3           #size:I
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :cond_1
    if-eqz p3, :cond_2

    .line 844
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v5

    .line 846
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2

    .line 828
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private c(IZ)Z
    .locals 2
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(BIZ)B

    move-result v1

    .line 203
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private d(IZ)[Z
    .locals 7
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 622
    const/4 v2, 0x0

    .line 623
    .local v2, lr:[Z
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 624
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 625
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 626
    iget-byte v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v4, :pswitch_data_0

    .line 637
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 628
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 629
    .local v3, size:I
    if-gez v3, :cond_0

    .line 630
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "size invalid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 631
    :cond_0
    new-array v2, v3, [Z

    .line 632
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 633
    invoke-direct {p0, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->c(IZ)Z

    move-result v4

    aput-boolean v4, v2, v1

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p2, :cond_2

    .line 640
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 642
    :cond_2
    return-object v2

    .line 626
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private e(IZ)[S
    .locals 7
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 683
    const/4 v2, 0x0

    .line 684
    .local v2, lr:[S
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 686
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 687
    iget-byte v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v4, :pswitch_data_0

    .line 698
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 689
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 690
    .local v3, size:I
    if-gez v3, :cond_0

    .line 691
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "size invalid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 692
    :cond_0
    new-array v2, v3, [S

    .line 693
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 694
    aget-short v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(SIZ)S

    move-result v4

    aput-short v4, v2, v1

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p2, :cond_2

    .line 701
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_2
    return-object v2

    .line 687
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private f(IZ)[I
    .locals 7
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 707
    const/4 v2, 0x0

    .line 708
    .local v2, lr:[I
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 709
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 710
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 711
    iget-byte v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v4, :pswitch_data_0

    .line 722
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 713
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 714
    .local v3, size:I
    if-gez v3, :cond_0

    .line 715
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "size invalid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 716
    :cond_0
    new-array v2, v3, [I

    .line 717
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 718
    aget v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v4

    aput v4, v2, v1

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p2, :cond_2

    .line 725
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 727
    :cond_2
    return-object v2

    .line 711
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private g(IZ)[J
    .locals 8
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 731
    const/4 v2, 0x0

    .line 732
    .local v2, lr:[J
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 733
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 734
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 735
    iget-byte v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v4, :pswitch_data_0

    .line 746
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 737
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 738
    .local v3, size:I
    if-gez v3, :cond_0

    .line 739
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "size invalid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 740
    :cond_0
    new-array v2, v3, [J

    .line 741
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 742
    aget-wide v4, v2, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(JIZ)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p2, :cond_2

    .line 749
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 751
    :cond_2
    return-object v2

    .line 735
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private h(IZ)[F
    .locals 7
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 755
    const/4 v2, 0x0

    .line 756
    .local v2, lr:[F
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 757
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 758
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 759
    iget-byte v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v4, :pswitch_data_0

    .line 770
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 762
    .local v3, size:I
    if-gez v3, :cond_0

    .line 763
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "size invalid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 764
    :cond_0
    new-array v2, v3, [F

    .line 765
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 766
    aget v4, v2, v5

    invoke-direct {p0, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(FIZ)F

    move-result v4

    aput v4, v2, v1

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p2, :cond_2

    .line 773
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 775
    :cond_2
    return-object v2

    .line 759
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private i(IZ)[D
    .locals 8
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 779
    const/4 v2, 0x0

    .line 780
    .local v2, lr:[D
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 781
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 782
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 783
    iget-byte v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v4, :pswitch_data_0

    .line 794
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 785
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v3

    .line 786
    .local v3, size:I
    if-gez v3, :cond_0

    .line 787
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "size invalid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 788
    :cond_0
    new-array v2, v3, [D

    .line 789
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 790
    aget-wide v4, v2, v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(DIZ)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p2, :cond_2

    .line 797
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 799
    :cond_2
    return-object v2

    .line 783
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(BIZ)B
    .locals 3
    .parameter "c"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 207
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 209
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 210
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    sparse-switch v1, :sswitch_data_0

    .line 218
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :sswitch_0
    const/4 p1, 0x0

    .line 223
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_0
    :goto_0
    return p1

    .line 215
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 216
    goto :goto_0

    .line 220
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_1
    if-eqz p3, :cond_0

    .line 221
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(IIZ)I
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 250
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 252
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 253
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    sparse-switch v1, :sswitch_data_0

    .line 267
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :sswitch_0
    const/4 p1, 0x0

    .line 272
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_0
    :goto_0
    return p1

    .line 258
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 259
    goto :goto_0

    .line 261
    :sswitch_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 262
    goto :goto_0

    .line 264
    :sswitch_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 265
    goto :goto_0

    .line 269
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_1
    if-eqz p3, :cond_0

    .line 270
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)I
    .locals 1
    .parameter "se"

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a:Ljava/lang/String;

    .line 1001
    const/4 v0, 0x0

    return v0
.end method

.method public final a(JIZ)J
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 276
    invoke-direct {p0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 278
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 279
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    sparse-switch v1, :sswitch_data_0

    .line 296
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :sswitch_0
    const-wide/16 p1, 0x0

    .line 301
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_0
    :goto_0
    return-wide p1

    .line 284
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-long p1, v1

    .line 285
    goto :goto_0

    .line 287
    :sswitch_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    int-to-long p1, v1

    .line 288
    goto :goto_0

    .line 290
    :sswitch_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long p1, v1

    .line 291
    goto :goto_0

    .line 293
    :sswitch_4
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    .line 294
    goto :goto_0

    .line 298
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_1
    if-eqz p4, :cond_0

    .line 299
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;IZ)Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
    .locals 5
    .parameter "o"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 926
    const/4 v2, 0x0

    .line 927
    .local v2, ref:Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 929
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ref:Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .restart local v2       #ref:Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 935
    .local v1, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 936
    iget-byte v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 937
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v4, "type mismatch."

    invoke-direct {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v3

    .line 930
    .end local v1           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v2           #ref:Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
    :catch_0
    move-exception v0

    .line 931
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v3

    .line 938
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .restart local v2       #ref:Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
    :cond_0
    invoke-virtual {v2, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V

    .line 939
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a()V

    .line 943
    .end local v1           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_1
    return-object v2

    .line 940
    :cond_2
    if-eqz p3, :cond_1

    .line 941
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v4, "require field not exist."

    invoke-direct {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, o:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    .line 952
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(BIZ)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 991
    .end local p1           #o:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v0

    .line 954
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 955
    invoke-direct {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->c(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 956
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 957
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(SIZ)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 958
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 959
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v0

    .line 960
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 961
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 962
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(JIZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 963
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 964
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(FIZ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 965
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 966
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(DIZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 967
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 968
    invoke-virtual {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 969
    :cond_7
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 970
    check-cast p1, Ljava/util/Map;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0

    .line 971
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 972
    check-cast p1, Ljava/util/List;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 973
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_9
    instance-of v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;

    if-eqz v0, :cond_a

    .line 974
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;IZ)Lcom/tencent/tencentmap/mapsdk/maps/a/ad;

    move-result-object v0

    goto/16 :goto_0

    .line 975
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 976
    instance-of v0, p1, [B

    if-nez v0, :cond_b

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_c

    .line 977
    :cond_b
    invoke-virtual {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(IZ)[B

    move-result-object v0

    goto/16 :goto_0

    .line 978
    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    .line 979
    invoke-direct {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->d(IZ)[Z

    move-result-object v0

    goto/16 :goto_0

    .line 980
    :cond_d
    instance-of v0, p1, [S

    if-eqz v0, :cond_e

    .line 981
    invoke-direct {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->e(IZ)[S

    move-result-object v0

    goto/16 :goto_0

    .line 982
    :cond_e
    instance-of v0, p1, [I

    if-eqz v0, :cond_f

    .line 983
    invoke-direct {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->f(IZ)[I

    move-result-object v0

    goto/16 :goto_0

    .line 984
    :cond_f
    instance-of v0, p1, [J

    if-eqz v0, :cond_10

    .line 985
    invoke-direct {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->g(IZ)[J

    move-result-object v0

    goto/16 :goto_0

    .line 986
    :cond_10
    instance-of v0, p1, [F

    if-eqz v0, :cond_11

    .line 987
    invoke-direct {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->h(IZ)[F

    move-result-object v0

    goto/16 :goto_0

    .line 988
    :cond_11
    instance-of v0, p1, [D

    if-eqz v0, :cond_12

    .line 989
    invoke-direct {p0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->i(IZ)[D

    move-result-object v0

    goto/16 :goto_0

    .line 991
    :cond_12
    check-cast p1, [Ljava/lang/Object;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 994
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_13
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v1, "read object error: unsupport type."

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(IZ)Ljava/lang/String;
    .locals 7
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 422
    const/4 v2, 0x0

    .line 423
    .local v2, s:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 424
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 425
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 426
    iget-byte v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    packed-switch v4, :pswitch_data_0

    .line 456
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 428
    :pswitch_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 429
    .local v1, len:I
    if-gez v1, :cond_0

    .line 430
    add-int/lit16 v1, v1, 0x100

    .line 431
    :cond_0
    new-array v3, v1, [B

    .line 432
    .local v3, ss:[B
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 434
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #len:I
    .end local v3           #ss:[B
    .restart local v2       #s:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 437
    .end local v2           #s:Ljava/lang/String;
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .restart local v1       #len:I
    .restart local v3       #ss:[B
    :catch_0
    move-exception v4

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 440
    .restart local v2       #s:Ljava/lang/String;
    goto :goto_0

    .line 442
    .end local v1           #len:I
    .end local v3           #ss:[B
    :pswitch_1
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 443
    .restart local v1       #len:I
    const/high16 v4, 0x640

    if-gt v1, v4, :cond_2

    if-gez v1, :cond_3

    .line 444
    :cond_2
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "String too long: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 445
    :cond_3
    new-array v3, v1, [B

    .line 446
    .restart local v3       #ss:[B
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 448
    :try_start_1
    new-instance v2, Ljava/lang/String;

    .end local v2           #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2       #s:Ljava/lang/String;
    goto :goto_0

    .line 451
    .end local v2           #s:Ljava/lang/String;
    :catch_1
    move-exception v4

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 454
    .restart local v2       #s:Ljava/lang/String;
    goto :goto_0

    .line 458
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #len:I
    .end local v3           #ss:[B
    :cond_4
    if-eqz p2, :cond_1

    .line 459
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v4

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(SIZ)S
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 227
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 229
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 230
    iget-byte v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    sparse-switch v1, :sswitch_data_0

    .line 241
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :sswitch_0
    const/4 p1, 0x0

    .line 246
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_0
    :goto_0
    return p1

    .line 235
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-short p1, v1

    .line 236
    goto :goto_0

    .line 238
    :sswitch_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 239
    goto :goto_0

    .line 243
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :cond_1
    if-eqz p3, :cond_0

    .line 244
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(IZ)[B
    .locals 8
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 646
    const/4 v3, 0x0

    .line 647
    .local v3, lr:[B
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 648
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 649
    .local v0, hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 650
    iget-byte v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    sparse-switch v5, :sswitch_data_0

    .line 674
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v5

    .line 652
    :sswitch_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;-><init>()V

    .line 653
    .local v1, hh:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;)V

    .line 654
    iget-byte v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    if-eqz v5, :cond_0

    .line 655
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "type mismatch, tag: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v5

    .line 657
    :cond_0
    invoke-virtual {p0, v6, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v4

    .line 658
    .local v4, size:I
    if-gez v4, :cond_1

    .line 659
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "invalid size, tag: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;->a:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v5

    .line 660
    :cond_1
    new-array v3, v4, [B

    .line 661
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 679
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v1           #hh:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v4           #size:I
    :cond_2
    return-object v3

    .line 665
    .restart local v0       #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    :sswitch_1
    invoke-virtual {p0, v6, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v4

    .line 666
    .restart local v4       #size:I
    if-gez v4, :cond_3

    .line 667
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "size invalid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v5

    .line 668
    :cond_3
    new-array v3, v4, [B

    .line 669
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 670
    aget-byte v5, v3, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(BIZ)B

    move-result v5

    aput-byte v5, v3, v2

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .end local v0           #hd:Lcom/tencent/tencentmap/mapsdk/maps/a/ab$a;
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_4
    if-eqz p2, :cond_2

    .line 677
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/y;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/y;-><init>(Ljava/lang/String;)V

    throw v5

    .line 650
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method
