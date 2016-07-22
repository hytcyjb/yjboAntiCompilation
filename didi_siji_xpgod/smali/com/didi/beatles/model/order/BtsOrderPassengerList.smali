.class public Lcom/didi/beatles/model/order/BtsOrderPassengerList;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderPassengerList.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public has_more:Ljava/lang/String;

.field public orders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 26
    const-string v1, "has_more"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerList;->has_more:Ljava/lang/String;

    .line 27
    const-string v1, "orders"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v1, "orders"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 30
    .local v0, array:Lorg/json/JSONArray;
    new-instance v1, Lcom/didi/beatles/model/BtsJSONHelper;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsJSONHelper;-><init>()V

    new-instance v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-direct {v2}, Lcom/didi/beatles/model/order/BtsOrderPassenger;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/beatles/model/BtsJSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/beatles/model/BtsBaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerList;->orders:Ljava/util/ArrayList;

    goto :goto_0
.end method
