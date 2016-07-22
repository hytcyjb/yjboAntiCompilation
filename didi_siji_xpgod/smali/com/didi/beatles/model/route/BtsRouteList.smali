.class public Lcom/didi/beatles/model/route/BtsRouteList;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsRouteList.java"


# static fields
.field private static final serialVersionUID:J = 0x456af9adf6ec8L


# instance fields
.field public routes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/route/BtsRoute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 19
    const-string v1, "routeList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string v1, "routeList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 22
    .local v0, array:Lorg/json/JSONArray;
    new-instance v1, Lcom/didi/beatles/model/BtsJSONHelper;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsJSONHelper;-><init>()V

    new-instance v2, Lcom/didi/beatles/model/route/BtsRoute;

    invoke-direct {v2}, Lcom/didi/beatles/model/route/BtsRoute;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/beatles/model/BtsJSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/beatles/model/BtsBaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/route/BtsRouteList;->routes:Ljava/util/ArrayList;

    goto :goto_0
.end method
