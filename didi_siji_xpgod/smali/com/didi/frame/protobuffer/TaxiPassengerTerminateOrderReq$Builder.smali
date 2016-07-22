.class public final Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiPassengerTerminateOrderReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;",
        ">;"
    }
.end annotation


# instance fields
.field public cancel_reason:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public trip_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 90
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->order_id:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->msg:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;->cancel_reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->cancel_reason:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;->trip_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->trip_id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->checkRequiredFields()V

    .line 132
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;-><init>(Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->build()Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq;

    move-result-object v0

    return-object v0
.end method

.method public cancel_reason(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;
    .locals 0
    .parameter "cancel_reason"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->cancel_reason:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;
    .locals 0
    .parameter "msg"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->msg:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->order_id:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public trip_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;
    .locals 0
    .parameter "trip_id"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderReq$Builder;->trip_id:Ljava/lang/String;

    .line 126
    return-object p0
.end method
