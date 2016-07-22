.class public Lcom/didi/beatles/model/order/BtsOrderDriverList;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderDriverList.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public has_more:Z

.field public orders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverListItem;",
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
    const/4 v1, 0x1

    .line 27
    const-string v2, "orders"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v2, "orders"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 30
    .local v0, array:Lorg/json/JSONArray;
    const-string v2, "next"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverList;->has_more:Z

    .line 31
    new-instance v1, Lcom/didi/beatles/model/BtsJSONHelper;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsJSONHelper;-><init>()V

    new-instance v2, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    invoke-direct {v2}, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/beatles/model/BtsJSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/beatles/model/BtsBaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverList;->orders:Ljava/util/ArrayList;

    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
