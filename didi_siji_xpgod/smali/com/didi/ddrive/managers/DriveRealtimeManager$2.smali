.class Lcom/didi/ddrive/managers/DriveRealtimeManager$2;
.super Ljava/lang/Object;
.source "DriveRealtimeManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriveRealtimeManager;->loadDriverInfo(J)V
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
        "Lcom/didi/ddrive/net/http/response/DriverDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriveRealtimeManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriveRealtimeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriveRealtimeManager$2;->this$0:Lcom/didi/ddrive/managers/DriveRealtimeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 151
    invoke-static {}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DriverDetailInfoEvent : error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;-><init>()V

    .line 153
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;->requestSuccess:Z

    .line 154
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriverDetailInfo;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 142
    invoke-static {}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DriverDetailInfoEvent : success "

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;-><init>()V

    .line 144
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;->requestSuccess:Z

    .line 145
    iput-object p1, v0, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;->detailInfo:Lcom/didi/ddrive/net/http/response/DriverDetailInfo;

    .line 146
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriveRealtimeManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriverDetailInfo;)V

    return-void
.end method
