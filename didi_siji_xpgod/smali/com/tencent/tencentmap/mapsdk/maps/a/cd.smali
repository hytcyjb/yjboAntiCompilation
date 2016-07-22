.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cd;
.super Ljava/lang/Object;
.source "TrafficDataUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/os/Handler$Callback;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

.field private g:Z

.field private h:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

.field private i:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->d:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    .line 133
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;B)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    .line 138
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->g:Z

    .line 153
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->b:Landroid/os/Handler$Callback;

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 245
    if-nez p1, :cond_1

    const-string v0, "updateTrafficData params failure"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->d()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a(I)V

    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->d:I

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->c:Z

    if-nez v0, :cond_2

    iput-boolean v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->c:Z

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a()I

    move-result v0

    iput v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->d:I

    :cond_2
    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->d:I

    sget-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "demo.test.map.qq.com/rtt"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/?qt=rtt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&c="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&fm=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

    if-nez v0, :cond_4

    const-string v0, "no mDownloadExecutor failure"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "snsrtts.map.qq.com"

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v1, v2

    :goto_2
    if-lt v1, v7, :cond_6

    :cond_5
    if-nez v0, :cond_7

    const-string v0, "net visit failure"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "i:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " url : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

    invoke-interface {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cl;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cv;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "unzip failure"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    array-length v1, v0

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a()I

    move-result v3

    if-ne v3, v6, :cond_9

    const/16 v3, 0xa

    if-ge v1, v3, :cond_9

    const-string v0, "data format failure AMAP"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a()I

    move-result v3

    if-ne v3, v5, :cond_a

    const/16 v3, 0x8

    if-ge v1, v3, :cond_a

    const-string v0, "data format failure NAVINFO"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    aget-byte v3, v0, v6

    if-eqz v3, :cond_b

    const-string v0, "data not DATA_OK"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x8

    if-le v1, v3, :cond_c

    iget v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->d:I

    if-ne v1, v5, :cond_d

    new-array v1, v8, [B

    aget-byte v3, v0, v5

    aput-byte v3, v1, v2

    aget-byte v3, v0, v7

    aput-byte v3, v1, v6

    aget-byte v3, v0, v8

    aput-byte v3, v1, v5

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v1, v7

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->b:Ljava/lang/String;

    :cond_c
    :goto_3
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->g:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    iput v6, v1, Landroid/os/Message;->arg1:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    aput-object v0, v3, v6

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->b:Ljava/lang/String;

    aput-object v0, v3, v5

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->b:Landroid/os/Handler$Callback;

    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->b:Ljava/lang/String;

    goto :goto_3
.end method

.method private a([Ljava/lang/String;ZLcom/tencent/tencentmap/mapsdk/maps/a/at;)V
    .locals 17
    .parameter "cities"
    .parameter "forceStart"
    .parameter "ctx"

    .prologue
    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c()V

    .line 408
    invoke-interface/range {p3 .. p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v12

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v6, 0x0

    move v11, v6

    :goto_0
    if-lt v11, v13, :cond_0

    .line 410
    .local v4, paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 413
    .local v1, curTime:J
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 425
    .end local v1           #curTime:J
    :goto_2
    return-void

    .line 408
    .end local v4           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;>;"
    :cond_0
    aget-object v7, p1, v11

    invoke-static {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/cs;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v12, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b(Ljava/lang/String;)Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;

    move-result-object v14

    if-eqz v14, :cond_3

    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_8

    const-string v6, "\u5168\u56fd"

    :goto_3
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->d:Ljava/util/HashMap;

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v8, v15, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->d()I

    move-result v6

    int-to-long v15, v6

    cmp-long v6, v8, v15

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_3

    :cond_2
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;B)V

    iget-wide v15, v14, Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;->timeStamp:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->b:Ljava/lang/String;

    const/4 v6, 0x1

    iput-boolean v6, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->c:Z

    iget-boolean v6, v14, Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;->isChina:Z

    if-eqz v6, :cond_5

    if-nez v10, :cond_3

    const/4 v6, 0x1

    const-string v7, "\u5168\u56fd"

    iput-object v7, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    :goto_5
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v6

    :cond_3
    add-int/lit8 v6, v11, 0x1

    move v11, v6

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    iput-object v7, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    move v6, v10

    goto :goto_5

    .line 413
    .restart local v1       #curTime:J
    .restart local v4       #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;

    .line 414
    .local v3, params:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;B)V

    .line 415
    .local v5, task:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->d:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v7, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->d:Ljava/util/concurrent/Executor;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v5, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    goto/16 :goto_1

    .line 423
    .end local v1           #curTime:J
    .end local v3           #params:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;
    .end local v5           #task:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->b()V

    goto/16 :goto_2

    .end local v4           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;>;"
    :cond_8
    move-object v6, v7

    goto/16 :goto_3
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 235
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 236
    .local v0, cities:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a([Ljava/lang/String;ZLcom/tencent/tencentmap/mapsdk/maps/a/at;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    .end local v0           #cities:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V
    .locals 2
    .parameter

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->b:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 431
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    .local v0, cities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 435
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 440
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 449
    .end local v0           #cities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;>;>;"
    :cond_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 450
    return-void

    .line 436
    .restart local v0       #cities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;>;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 437
    .local v2, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    .end local v2           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 441
    .local v1, city:Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;

    .line 442
    .local v4, task:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;
    if-eqz v4, :cond_0

    .line 443
    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->c()Z

    .line 444
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->b()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->g:Z

    .line 211
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->c()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 219
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    .line 224
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->b:Landroid/os/Handler$Callback;

    invoke-interface {v1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/cl;)V
    .locals 0
    .parameter "downloadExecutor"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

    .line 163
    return-void
.end method

.method public final declared-synchronized a([Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/at;)Z
    .locals 7
    .parameter "cities"
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    monitor-enter p0

    :try_start_0
    const-string v0, "start --------"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 174
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    .line 176
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->g:Z

    if-eqz v0, :cond_b

    .line 177
    array-length v0, p1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_0

    const-string v0, "\u5168\u56fd"

    :cond_0
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/32 v5, 0xea60

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 178
    const-string v0, "start needForceUpdate"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a([Ljava/lang/String;ZLcom/tencent/tencentmap/mapsdk/maps/a/at;)V

    .line 181
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    .line 191
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 201
    :goto_2
    monitor-exit p0

    return v0

    :cond_3
    move v0, v1

    .line 177
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 182
    :cond_5
    if-eqz p1, :cond_6

    :try_start_1
    array-length v0, p1

    if-nez v0, :cond_8

    :cond_6
    move v2, v1

    :cond_7
    :goto_3
    if-eqz v2, :cond_2

    .line 183
    const-string v0, "start city changed"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a([Ljava/lang/String;ZLcom/tencent/tencentmap/mapsdk/maps/a/at;)V

    .line 186
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    array-length v0, p1

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_7

    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    array-length v4, p1

    move v0, v1

    :goto_5
    if-lt v0, v4, :cond_a

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    goto :goto_3

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    aget-object v5, p1, v0

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 194
    :cond_b
    const-string v0, "start isn\'t running"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a([Ljava/lang/String;ZLcom/tencent/tencentmap/mapsdk/maps/a/at;)V

    .line 196
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c:Ljava/util/List;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->g:Z

    .line 200
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    .line 201
    goto :goto_2
.end method
