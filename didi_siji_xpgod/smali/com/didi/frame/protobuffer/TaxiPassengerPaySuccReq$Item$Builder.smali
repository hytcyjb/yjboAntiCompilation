.class public final Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiPassengerPaySuccReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;",
        ">;"
    }
.end annotation


# instance fields
.field public item_value:Ljava/lang/Float;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 211
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;->name:Ljava/lang/String;

    .line 213
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;->item_value:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;->item_value:Ljava/lang/Float;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;-><init>(Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;->build()Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;

    move-result-object v0

    return-object v0
.end method

.method public item_value(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;
    .locals 0
    .parameter "item_value"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;->item_value:Ljava/lang/Float;

    .line 223
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;
    .locals 0
    .parameter "name"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item$Builder;->name:Ljava/lang/String;

    .line 218
    return-object p0
.end method
