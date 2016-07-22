.class public Lcom/didi/beatles/model/route/BtsRoute;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsRoute.java"


# static fields
.field private static final serialVersionUID:J = 0x23ab9e595feacb75L


# instance fields
.field public departure_time:Ljava/lang/String;

.field public from_address:Ljava/lang/String;

.field public from_city_id:Ljava/lang/String;

.field public from_lat:Ljava/lang/String;

.field public from_lng:Ljava/lang/String;

.field public from_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public recv_push_status:Z

.field public route_status:Z

.field public start_recv_time:Ljava/lang/String;

.field public stop_recv_time:Ljava/lang/String;

.field public to_address:Ljava/lang/String;

.field public to_city_id:Ljava/lang/String;

.field public to_lat:Ljava/lang/String;

.field public to_lng:Ljava/lang/String;

.field public to_name:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->id:Ljava/lang/String;

    .line 31
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->user_id:Ljava/lang/String;

    .line 32
    const-string v0, "1"

    const-string v1, "recv_push_status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->recv_push_status:Z

    .line 33
    const-string v0, "departure_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    .line 34
    const-string v0, "start_recv_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->start_recv_time:Ljava/lang/String;

    .line 35
    const-string v0, "stop_recv_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->stop_recv_time:Ljava/lang/String;

    .line 36
    const-string v0, "from_lng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_lng:Ljava/lang/String;

    .line 37
    const-string v0, "from_lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_lat:Ljava/lang/String;

    .line 38
    const-string v0, "from_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_name:Ljava/lang/String;

    .line 39
    const-string v0, "to_lng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_lng:Ljava/lang/String;

    .line 40
    const-string v0, "to_lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_lat:Ljava/lang/String;

    .line 41
    const-string v0, "to_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_name:Ljava/lang/String;

    .line 42
    const-string v0, "to_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_address:Ljava/lang/String;

    .line 43
    const-string v0, "from_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_address:Ljava/lang/String;

    .line 44
    const-string v0, "from_city_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_city_id:Ljava/lang/String;

    .line 45
    const-string v0, "to_city_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_city_id:Ljava/lang/String;

    .line 46
    const-string v0, "1"

    const-string v1, "route_status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/beatles/model/route/BtsRoute;->route_status:Z

    .line 47
    return-void
.end method
