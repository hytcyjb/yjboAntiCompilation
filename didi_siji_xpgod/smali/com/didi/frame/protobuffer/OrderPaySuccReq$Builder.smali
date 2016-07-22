.class public final Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OrderPaySuccReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/OrderPaySuccReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/OrderPaySuccReq;",
        ">;"
    }
.end annotation


# instance fields
.field public oid:Ljava/lang/String;

.field public pay_info:Ljava/lang/String;

.field public pay_order_subtitle:Ljava/lang/String;

.field public pay_order_title:Ljava/lang/String;

.field public refund_status:Ljava/lang/Integer;

.field public share_coupon:Ljava/lang/String;

.field public trade_status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/OrderPaySuccReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 127
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->oid:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->trade_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->trade_status:Ljava/lang/Integer;

    .line 130
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_order_title:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_subtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_order_subtitle:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_info:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->share_coupon:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->share_coupon:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->refund_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->refund_status:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/OrderPaySuccReq;
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->checkRequiredFields()V

    .line 196
    new-instance v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;-><init>(Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;Lcom/didi/frame/protobuffer/OrderPaySuccReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->build()Lcom/didi/frame/protobuffer/OrderPaySuccReq;

    move-result-object v0

    return-object v0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->oid:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public pay_info(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
    .locals 0
    .parameter "pay_info"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_info:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public pay_order_subtitle(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
    .locals 0
    .parameter "pay_order_subtitle"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_order_subtitle:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public pay_order_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
    .locals 0
    .parameter "pay_order_title"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_order_title:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public refund_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
    .locals 0
    .parameter "refund_status"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->refund_status:Ljava/lang/Integer;

    .line 190
    return-object p0
.end method

.method public share_coupon(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
    .locals 0
    .parameter "share_coupon"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->share_coupon:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public trade_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
    .locals 0
    .parameter "trade_status"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->trade_status:Ljava/lang/Integer;

    .line 150
    return-object p0
.end method
