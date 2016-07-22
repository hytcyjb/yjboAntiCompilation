.class Lcom/didi/ddrive/managers/DriverComingManager$1;
.super Ljava/lang/Object;
.source "DriverComingManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriverComingManager;->queryDriverPosition()V
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
        "Lcom/didi/ddrive/net/http/response/DriverPositionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriverComingManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriverComingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 119
    const-string v0, "DriverComingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryDriverPosition : error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriverPositionResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const-wide/16 v2, 0x0

    .line 104
    const-string v0, "DriverComingManager"

    const-string v1, "queryDriverPosition : success "

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/didi/ddrive/net/http/response/DriverPositionResponse;->getLast()Lcom/didi/ddrive/net/http/response/Position;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    invoke-virtual {p1}, Lcom/didi/ddrive/net/http/response/DriverPositionResponse;->getLast()Lcom/didi/ddrive/net/http/response/Position;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    .line 107
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    #getter for: Lcom/didi/ddrive/managers/DriverComingManager;->mDriver:Lcom/didi/ddrive/model/Driver;
    invoke-static {v0}, Lcom/didi/ddrive/managers/DriverComingManager;->access$000(Lcom/didi/ddrive/managers/DriverComingManager;)Lcom/didi/ddrive/model/Driver;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v1, v1, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v1, v1, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iput-wide v1, v0, Lcom/didi/ddrive/model/Driver;->lat:D

    .line 110
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    #getter for: Lcom/didi/ddrive/managers/DriverComingManager;->mDriver:Lcom/didi/ddrive/model/Driver;
    invoke-static {v0}, Lcom/didi/ddrive/managers/DriverComingManager;->access$000(Lcom/didi/ddrive/managers/DriverComingManager;)Lcom/didi/ddrive/model/Driver;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v1, v1, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v1, v1, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    iput-wide v1, v0, Lcom/didi/ddrive/model/Driver;->lng:D

    .line 112
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;

    iget-object v2, p0, Lcom/didi/ddrive/managers/DriverComingManager$1;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v2, v2, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    invoke-direct {v1, v2}, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;-><init>(Lcom/didi/ddrive/net/http/response/Position;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 115
    :cond_1
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Lcom/didi/ddrive/net/http/response/DriverPositionResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriverComingManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriverPositionResponse;)V

    return-void
.end method
