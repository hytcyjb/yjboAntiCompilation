.class Lcom/didi/ddrive/managers/DriveConfirmManager$2;
.super Ljava/lang/Object;
.source "DriveConfirmManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriveConfirmManager;->sendOrder()V
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
        "Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;",
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
    .line 140
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriveConfirmManager$2;->this$0:Lcom/didi/ddrive/managers/DriveConfirmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 5
    .parameter "errorCode"

    .prologue
    .line 153
    invoke-static {}, Lcom/didi/ddrive/managers/DriveConfirmManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const v2, 0x29810

    if-ne p1, v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/didi/ddrive/managers/DriveConfirmManager$2;->this$0:Lcom/didi/ddrive/managers/DriveConfirmManager;

    const v3, 0x7f0b01bb

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/ddrive/managers/DriveConfirmManager;->queryUnpayedOrder(Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;-><init>()V

    .line 159
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;
    new-instance v1, Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;-><init>()V

    .line 160
    .local v1, response:Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->success:Z

    .line 161
    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->response:Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;

    .line 162
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 143
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;-><init>()V

    .line 144
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->success:Z

    .line 145
    iput-object p1, v0, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->response:Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;

    .line 147
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setSwitcherPannel(I)V

    .line 148
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    check-cast p1, Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriveConfirmManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;)V

    return-void
.end method
