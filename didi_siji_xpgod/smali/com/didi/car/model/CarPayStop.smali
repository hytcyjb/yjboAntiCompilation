.class public Lcom/didi/car/model/CarPayStop;
.super Lcom/didi/common/model/BaseObject;
.source "CarPayStop.java"


# instance fields
.field public payStopMark:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 20
    return-void
.end method
