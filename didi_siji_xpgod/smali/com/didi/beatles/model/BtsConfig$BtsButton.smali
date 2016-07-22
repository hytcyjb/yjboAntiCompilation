.class public Lcom/didi/beatles/model/BtsConfig$BtsButton;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/model/BtsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtsButton"
.end annotation


# instance fields
.field public driver_text:Ljava/lang/String;

.field public passenger_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 301
    const-string v0, "passenger_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsButton;->passenger_text:Ljava/lang/String;

    .line 302
    const-string v0, "driver_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$BtsButton;->driver_text:Ljava/lang/String;

    .line 303
    return-void
.end method
