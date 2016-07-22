.class public Lcom/didi/beatles/model/role/BtsRegisterResult;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsRegisterResult.java"


# static fields
.field private static final serialVersionUID:J = -0x21c2c1d3749ae928L


# instance fields
.field public head_url:Ljava/lang/String;


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
    .locals 1
    .parameter "obj"

    .prologue
    .line 15
    const-string v0, "head_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/role/BtsRegisterResult;->head_url:Ljava/lang/String;

    .line 16
    return-void
.end method
