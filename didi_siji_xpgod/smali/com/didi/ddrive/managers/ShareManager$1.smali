.class Lcom/didi/ddrive/managers/ShareManager$1;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/ShareManager;->getShareConfigAndShareContentFromServer()V
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
        "Lcom/didi/ddrive/net/http/response/ShareConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/ShareManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/ShareManager;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/ddrive/managers/ShareManager$1;->this$0:Lcom/didi/ddrive/managers/ShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 54
    const-string v0, "ShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShareConfig : error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/ShareConfigEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/didi/ddrive/eventbus/event/ShareConfigEvent;-><init>(Lcom/didi/ddrive/net/http/response/ShareConfig;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/ShareConfig;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 48
    const-string v0, "ShareManager"

    const-string v1, "getShareConfig : success "

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/ShareConfigEvent;

    invoke-direct {v1, p1}, Lcom/didi/ddrive/eventbus/event/ShareConfigEvent;-><init>(Lcom/didi/ddrive/net/http/response/ShareConfig;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Lcom/didi/ddrive/net/http/response/ShareConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/ShareManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/ShareConfig;)V

    return-void
.end method
