.class final Lcom/ddtaxi/common/tracesdk/p;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:D

.field public c:D

.field public d:D

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:J

.field public k:F

.field public l:I

.field public m:Ljava/util/ArrayList;

.field final synthetic n:Lcom/ddtaxi/common/tracesdk/l;


# direct methods
.method public constructor <init>(Lcom/ddtaxi/common/tracesdk/l;)V
    .locals 3

    const/high16 v2, -0x4080

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/p;->n:Lcom/ddtaxi/common/tracesdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/p;->d:D

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/p;->e:F

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/p;->i:F

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/p;->k:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/p;->a:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "time"

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/p;->a:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "longtitude"

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/p;->b:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "latitude"

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/p;->c:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "altitude"

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/p;->d:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "accuracy"

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/p;->e:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "pdop"

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/p;->f:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "hdop"

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/p;->g:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "vdop"

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/p;->h:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "speed"

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/p;->i:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "gpsTs"

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/p;->j:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "bearing"

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/p;->k:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "numSatellites"

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/p;->l:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
