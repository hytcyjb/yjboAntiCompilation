.class public Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;
.super Ljava/lang/Object;
.source "OrderDetailMessage.java"


# instance fields
.field public info:Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

.field public responseSuccess:Z


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;->info:Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    .line 16
    return-void
.end method
