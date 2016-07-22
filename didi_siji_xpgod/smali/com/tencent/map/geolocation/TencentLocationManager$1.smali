.class Lcom/tencent/map/geolocation/TencentLocationManager$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/geolocation/TencentLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:[Ljava/lang/Object;

.field private synthetic d:Lcom/tencent/map/geolocation/TencentLocationManager;


# direct methods
.method constructor <init>(Lcom/tencent/map/geolocation/TencentLocationManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    iput-object p2, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0xa

    .line 254
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->getLogDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "txwatchdog"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->getLogDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "txwatchdog_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_feedback_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    invoke-static {v3}, Lcom/tencent/map/geolocation/TencentLocationManager;->a(Lcom/tencent/map/geolocation/TencentLocationManager;)Lct/be;

    move-result-object v3

    invoke-virtual {v3}, Lct/be;->h()Lct/bf;

    move-result-object v3

    invoke-virtual {v3}, Lct/bf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "yyyyMMdd_kkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x40f86a0000000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    iget-object v3, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    iget-object v4, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    invoke-static {v2}, Lcom/tencent/map/geolocation/TencentLocationManager;->a(Ljava/io/File;)[B

    move-result-object v2

    invoke-static {v3, v2, v1, v0}, Lcom/tencent/map/geolocation/TencentLocationManager;->a(Lcom/tencent/map/geolocation/TencentLocationManager;[BLjava/lang/String;Z)Z

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    const-string v3, "phoneNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    iget-object v3, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->c:[Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 277
    :goto_1
    iget-object v3, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->c:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 278
    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->c:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tencent/map/geolocation/TencentLocationManager;->a(Lcom/tencent/map/geolocation/TencentLocationManager;[BLjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_2
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager$1;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    invoke-static {v0}, Lcom/tencent/map/geolocation/TencentLocationManager;->b(Lcom/tencent/map/geolocation/TencentLocationManager;)Ljava/lang/Thread;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method
