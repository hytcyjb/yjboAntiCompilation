.class Lcom/didi/ddrive/managers/CancelManager$1;
.super Ljava/lang/Object;
.source "CancelManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/CancelManager;->cancelOrder(Lcom/didi/ddrive/net/http/response/Item;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
        "<",
        "Lcom/didi/ddrive/net/http/response/CancelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/CancelManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/CancelManager;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/didi/ddrive/managers/CancelManager$1;->this$0:Lcom/didi/ddrive/managers/CancelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 6
    .parameter "errorCode"

    .prologue
    .line 46
    const-string v1, "CancelManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CancelRequest : error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/didi/ddrive/eventbus/event/CancelEvent;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/didi/ddrive/eventbus/event/CancelEvent;-><init>(ZDJ)V

    .line 48
    .local v0, event:Lcom/didi/ddrive/eventbus/event/CancelEvent;
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/CancelResult;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 38
    const-string v1, "CancelManager"

    const-string v2, "CancelRequest : success"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/didi/ddrive/eventbus/event/CancelEvent;

    iget v1, p1, Lcom/didi/ddrive/net/http/response/CancelResult;->isSucc:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/CancelResult;->waitFee:D

    iget-wide v4, p1, Lcom/didi/ddrive/net/http/response/CancelResult;->waitTime:J

    invoke-direct/range {v0 .. v5}, Lcom/didi/ddrive/eventbus/event/CancelEvent;-><init>(ZDJ)V

    .line 41
    .local v0, event:Lcom/didi/ddrive/eventbus/event/CancelEvent;
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 42
    return-void

    .line 39
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/CancelEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Lcom/didi/ddrive/net/http/response/CancelResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/CancelManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/CancelResult;)V

    return-void
.end method
