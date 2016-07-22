.class Lcom/didi/ddrive/managers/CommentManager$2;
.super Ljava/lang/Object;
.source "CommentManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/CommentManager;->submitComment(ILjava/lang/String;Ljava/lang/String;)V
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
        "Lcom/didi/ddrive/net/http/ResponseBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/CommentManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/CommentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/didi/ddrive/managers/CommentManager$2;->this$0:Lcom/didi/ddrive/managers/CommentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 114
    const v1, 0x186ac

    if-ne v1, p1, :cond_0

    .line 115
    new-instance v0, Lcom/didi/ddrive/eventbus/event/CommentEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/CommentEvent;-><init>()V

    .line 116
    .local v0, event:Lcom/didi/ddrive/eventbus/event/CommentEvent;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/CommentEvent;->responseSuccess:Z

    .line 117
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void

    .line 120
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/CommentEvent;
    :cond_0
    new-instance v0, Lcom/didi/ddrive/eventbus/event/CommentEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/CommentEvent;-><init>()V

    .line 121
    .restart local v0       #event:Lcom/didi/ddrive/eventbus/event/CommentEvent;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/CommentEvent;->responseSuccess:Z

    .line 122
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/ResponseBean;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 107
    new-instance v0, Lcom/didi/ddrive/eventbus/event/CommentEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/CommentEvent;-><init>()V

    .line 108
    .local v0, event:Lcom/didi/ddrive/eventbus/event/CommentEvent;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/CommentEvent;->responseSuccess:Z

    .line 109
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, Lcom/didi/ddrive/net/http/ResponseBean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/CommentManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/ResponseBean;)V

    return-void
.end method
