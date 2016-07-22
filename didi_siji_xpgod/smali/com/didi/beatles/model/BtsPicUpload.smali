.class public Lcom/didi/beatles/model/BtsPicUpload;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsPicUpload.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public msg:Ljava/lang/String;

.field public pic_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 16
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsPicUpload;->pic_url:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsPicUpload;->msg:Ljava/lang/String;

    .line 18
    return-void
.end method
