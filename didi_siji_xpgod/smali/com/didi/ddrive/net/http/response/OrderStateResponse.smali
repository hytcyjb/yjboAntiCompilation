.class public Lcom/didi/ddrive/net/http/response/OrderStateResponse;
.super Ljava/lang/Object;
.source "OrderStateResponse.java"


# instance fields
.field public did:J

.field public payState:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/ddrive/net/http/response/OrderStateResponse;->payState:I

    return-void
.end method
