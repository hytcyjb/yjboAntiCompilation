.class public final Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiDriverShareTripLetPayReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
        ">;"
    }
.end annotation


# instance fields
.field public item_value:Ljava/lang/Integer;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 267
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 271
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;->name:Ljava/lang/String;

    .line 273
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->item_value:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;->item_value:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;-><init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;->build()Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;

    move-result-object v0

    return-object v0
.end method

.method public item_value(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;
    .locals 0
    .parameter "item_value"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;->item_value:Ljava/lang/Integer;

    .line 283
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;
    .locals 0
    .parameter "name"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;->name:Ljava/lang/String;

    .line 278
    return-object p0
.end method
