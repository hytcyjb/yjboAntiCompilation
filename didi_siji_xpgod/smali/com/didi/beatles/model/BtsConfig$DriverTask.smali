.class public Lcom/didi/beatles/model/BtsConfig$DriverTask;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/model/BtsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriverTask"
.end annotation


# instance fields
.field public is_task:Z

.field public show_red_point:Z

.field public url:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    const-string v0, "is_task"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/didi/beatles/model/BtsConfig$DriverTask;->is_task:Z

    .line 288
    const-string v0, "show_red_point"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/didi/beatles/model/BtsConfig$DriverTask;->show_red_point:Z

    .line 290
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$DriverTask;->url:Ljava/lang/String;

    .line 291
    const-string v0, "version"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/model/BtsConfig$DriverTask;->version:I

    .line 292
    return-void

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    :cond_1
    move v1, v2

    .line 288
    goto :goto_1
.end method
