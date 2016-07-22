.class public final Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TypeTaxiPassengerChargeReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;",
        ">;"
    }
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public oid:Ljava/lang/String;

.field public price:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 80
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->oid:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->price:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->price:Ljava/lang/Float;

    .line 83
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->desc:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->checkRequiredFields()V

    .line 113
    new-instance v0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;-><init>(Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->build()Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;

    move-result-object v0

    return-object v0
.end method

.method public desc(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;
    .locals 0
    .parameter "desc"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->desc:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->oid:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public price(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;
    .locals 0
    .parameter "price"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->price:Ljava/lang/Float;

    .line 99
    return-object p0
.end method
