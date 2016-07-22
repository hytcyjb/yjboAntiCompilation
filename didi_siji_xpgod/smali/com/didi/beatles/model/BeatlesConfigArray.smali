.class public Lcom/didi/beatles/model/BeatlesConfigArray;
.super Lcom/didi/common/model/BaseObject;
.source "BeatlesConfigArray.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public name:Ljava/lang/String;

.field public style:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 4
    .parameter "json"

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, obj:Lorg/json/JSONObject;
    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BeatlesConfigArray;->name:Ljava/lang/String;

    .line 23
    const-string v2, "style"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/model/BeatlesConfigArray;->style:I

    .line 24
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BeatlesConfigArray;->url:Ljava/lang/String;

    .line 25
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BeatlesConfigArray;->title:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1           #obj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 36
    return-void
.end method
