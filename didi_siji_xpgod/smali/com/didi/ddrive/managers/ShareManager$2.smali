.class Lcom/didi/ddrive/managers/ShareManager$2;
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
        "Lcom/didi/ddrive/net/http/response/ShareContent;",
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
    .line 66
    iput-object p1, p0, Lcom/didi/ddrive/managers/ShareManager$2;->this$0:Lcom/didi/ddrive/managers/ShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 76
    const-string v0, "ShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShareContent : error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/ShareContentEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/didi/ddrive/eventbus/event/ShareContentEvent;-><init>(Lcom/didi/ddrive/net/http/response/ShareContent;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/ShareContent;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 70
    const-string v0, "ShareManager"

    const-string v1, "getShareContent : success "

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/ShareContentEvent;

    invoke-direct {v1, p1}, Lcom/didi/ddrive/eventbus/event/ShareContentEvent;-><init>(Lcom/didi/ddrive/net/http/response/ShareContent;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Lcom/didi/ddrive/net/http/response/ShareContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/ShareManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/ShareContent;)V

    return-void
.end method
