.class public final Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiPassengerBussinessCallbackReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;",
        ">;"
    }
.end annotation


# instance fields
.field public redirect_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 52
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;->redirect_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq$Builder;->redirect_url:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq$Builder;->checkRequiredFields()V

    .line 67
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;-><init>(Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq$Builder;Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq$Builder;->build()Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;

    move-result-object v0

    return-object v0
.end method

.method public redirect_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq$Builder;
    .locals 0
    .parameter "redirect_url"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq$Builder;->redirect_url:Ljava/lang/String;

    .line 61
    return-object p0
.end method