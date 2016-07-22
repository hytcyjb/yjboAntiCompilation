.class Lcom/didi/ddrive/managers/DriveConfirmManager$1;
.super Ljava/lang/Object;
.source "DriveConfirmManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriveConfirmManager;->getEstimateFare()V
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
        "Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;",
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
    .line 73
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriveConfirmManager$1;->this$0:Lcom/didi/ddrive/managers/DriveConfirmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 85
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;-><init>()V

    .line 86
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->responseSuccess:Z

    .line 87
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 77
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;-><init>()V

    .line 78
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;
    iput-object p1, v0, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->responseSuccess:Z

    .line 80
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriveConfirmManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    return-void
.end method
