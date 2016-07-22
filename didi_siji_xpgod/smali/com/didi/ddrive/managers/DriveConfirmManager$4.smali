.class Lcom/didi/ddrive/managers/DriveConfirmManager$4;
.super Ljava/lang/Object;
.source "DriveConfirmManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriveConfirmManager;->queryOrderDetail(J)V
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
        "Lcom/didi/ddrive/net/http/response/OrderDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriveConfirmManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriveConfirmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriveConfirmManager$4;->this$0:Lcom/didi/ddrive/managers/DriveConfirmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 205
    invoke-static {}, Lcom/didi/ddrive/managers/DriveConfirmManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OrderDetailRequest : error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;-><init>(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V

    .line 207
    .local v0, event:Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;->responseSuccess:Z

    .line 208
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 197
    invoke-static {}, Lcom/didi/ddrive/managers/DriveConfirmManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderDetailRequest : success "

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;

    invoke-direct {v0, p1}, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;-><init>(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V

    .line 199
    .local v0, event:Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;->responseSuccess:Z

    .line 200
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 193
    check-cast p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriveConfirmManager$4;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V

    return-void
.end method
