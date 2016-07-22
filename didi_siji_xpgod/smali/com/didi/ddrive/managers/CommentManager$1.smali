.class Lcom/didi/ddrive/managers/CommentManager$1;
.super Ljava/lang/Object;
.source "CommentManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/CommentManager;->getCommentTags()V
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
        "Lcom/didi/ddrive/net/http/response/CommentTags;",
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
    .line 61
    iput-object p1, p0, Lcom/didi/ddrive/managers/CommentManager$1;->this$0:Lcom/didi/ddrive/managers/CommentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v1, p0, Lcom/didi/ddrive/managers/CommentManager$1;->this$0:Lcom/didi/ddrive/managers/CommentManager;

    #getter for: Lcom/didi/ddrive/managers/CommentManager;->mRetryCount:I
    invoke-static {v1}, Lcom/didi/ddrive/managers/CommentManager;->access$100(Lcom/didi/ddrive/managers/CommentManager;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 75
    new-instance v0, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;-><init>()V

    .line 76
    .local v0, event:Lcom/didi/ddrive/eventbus/event/CommentTagEvent;
    iput-boolean v3, v0, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;->responseSuccess:Z

    .line 77
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/didi/ddrive/managers/CommentManager$1;->this$0:Lcom/didi/ddrive/managers/CommentManager;

    #setter for: Lcom/didi/ddrive/managers/CommentManager;->mRetryCount:I
    invoke-static {v1, v3}, Lcom/didi/ddrive/managers/CommentManager;->access$102(Lcom/didi/ddrive/managers/CommentManager;I)I

    .line 82
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/CommentTagEvent;
    :goto_0
    iget-object v1, p0, Lcom/didi/ddrive/managers/CommentManager$1;->this$0:Lcom/didi/ddrive/managers/CommentManager;

    invoke-static {v1}, Lcom/didi/ddrive/managers/CommentManager;->access$108(Lcom/didi/ddrive/managers/CommentManager;)I

    .line 83
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/managers/CommentManager$1;->this$0:Lcom/didi/ddrive/managers/CommentManager;

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/CommentManager;->getCommentTags()V

    goto :goto_0
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/CommentTags;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v1, p0, Lcom/didi/ddrive/managers/CommentManager$1;->this$0:Lcom/didi/ddrive/managers/CommentManager;

    #setter for: Lcom/didi/ddrive/managers/CommentManager;->loadDataSuccess:Z
    invoke-static {v1, v2}, Lcom/didi/ddrive/managers/CommentManager;->access$002(Lcom/didi/ddrive/managers/CommentManager;Z)Z

    .line 66
    new-instance v0, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;-><init>()V

    .line 67
    .local v0, event:Lcom/didi/ddrive/eventbus/event/CommentTagEvent;
    iput-object p1, v0, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;->commentTags:Lcom/didi/ddrive/net/http/response/CommentTags;

    .line 68
    iput-boolean v2, v0, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;->responseSuccess:Z

    .line 69
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Lcom/didi/ddrive/net/http/response/CommentTags;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/CommentManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/CommentTags;)V

    return-void
.end method
