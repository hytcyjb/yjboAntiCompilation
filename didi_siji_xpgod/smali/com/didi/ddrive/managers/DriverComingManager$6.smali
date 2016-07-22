.class Lcom/didi/ddrive/managers/DriverComingManager$6;
.super Ljava/lang/Object;
.source "DriverComingManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriverComingManager;->loadDriverInfo()V
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
        "Lcom/didi/ddrive/net/http/response/DriverBriefInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriverComingManager;

.field final synthetic val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriverComingManager;Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriverComingManager$6;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    iput-object p2, p0, Lcom/didi/ddrive/managers/DriverComingManager$6;->val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 307
    const-string v0, "DriverComingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DriverBriefInfoRequest : error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 297
    const-string v1, "DriverComingManager"

    const-string v2, "DriverBriefInfoRequest : success "

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/didi/ddrive/managers/DriverComingManager$6;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    #getter for: Lcom/didi/ddrive/managers/DriverComingManager;->mDriver:Lcom/didi/ddrive/model/Driver;
    invoke-static {v1}, Lcom/didi/ddrive/managers/DriverComingManager;->access$000(Lcom/didi/ddrive/managers/DriverComingManager;)Lcom/didi/ddrive/model/Driver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/didi/ddrive/model/Driver;->appendBriefInfo(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V

    .line 299
    iget-object v1, p0, Lcom/didi/ddrive/managers/DriverComingManager$6;->val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v2, p0, Lcom/didi/ddrive/managers/DriverComingManager$6;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    #getter for: Lcom/didi/ddrive/managers/DriverComingManager;->mDriver:Lcom/didi/ddrive/model/Driver;
    invoke-static {v2}, Lcom/didi/ddrive/managers/DriverComingManager;->access$000(Lcom/didi/ddrive/managers/DriverComingManager;)Lcom/didi/ddrive/model/Driver;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    .line 300
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;-><init>()V

    .line 301
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;
    iput-object p1, v0, Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    .line 302
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 293
    check-cast p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriverComingManager$6;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V

    return-void
.end method
