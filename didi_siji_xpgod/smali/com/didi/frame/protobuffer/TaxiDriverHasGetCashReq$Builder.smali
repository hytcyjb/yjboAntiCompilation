.class public final Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiDriverHasGetCashReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;",
        ">;"
    }
.end annotation


# instance fields
.field public is_vip:Ljava/lang/String;

.field public order_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 68
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;->order_id:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;->is_vip:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;->is_vip:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;->checkRequiredFields()V

    .line 92
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;-><init>(Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;->build()Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;

    move-result-object v0

    return-object v0
.end method

.method public is_vip(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;
    .locals 0
    .parameter "is_vip"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;->is_vip:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq$Builder;->order_id:Ljava/lang/String;

    .line 78
    return-object p0
.end method
