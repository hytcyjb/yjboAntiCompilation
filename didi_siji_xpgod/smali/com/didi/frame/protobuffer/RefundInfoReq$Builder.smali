.class public final Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RefundInfoReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/RefundInfoReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/RefundInfoReq;",
        ">;"
    }
.end annotation


# instance fields
.field public refund_link:Ljava/lang/String;

.field public refund_status:Ljava/lang/Integer;

.field public refund_tip:Ljava/lang/String;

.field public refund_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/RefundInfoReq;)V
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
    iget-object v0, p1, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->refund_status:Ljava/lang/Integer;

    .line 92
    iget-object v0, p1, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->refund_title:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_link:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->refund_link:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_tip:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->refund_tip:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/RefundInfoReq;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/didi/frame/protobuffer/RefundInfoReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/RefundInfoReq;-><init>(Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;Lcom/didi/frame/protobuffer/RefundInfoReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->build()Lcom/didi/frame/protobuffer/RefundInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public refund_link(Ljava/lang/String;)Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;
    .locals 0
    .parameter "refund_link"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->refund_link:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public refund_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;
    .locals 0
    .parameter "refund_status"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->refund_status:Ljava/lang/Integer;

    .line 102
    return-object p0
.end method

.method public refund_tip(Ljava/lang/String;)Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;
    .locals 0
    .parameter "refund_tip"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->refund_tip:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public refund_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;
    .locals 0
    .parameter "refund_title"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/frame/protobuffer/RefundInfoReq$Builder;->refund_title:Ljava/lang/String;

    .line 110
    return-object p0
.end method
