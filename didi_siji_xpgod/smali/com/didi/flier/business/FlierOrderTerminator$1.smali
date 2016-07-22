.class Lcom/didi/flier/business/FlierOrderTerminator$1;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierOrderTerminator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/business/FlierOrderTerminator;->terminate(Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/business/FlierOrderTerminator;

.field final synthetic val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

.field final synthetic val$sendable:Lcom/didi/frame/Sendable;


# direct methods
.method constructor <init>(Lcom/didi/flier/business/FlierOrderTerminator;Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/didi/flier/business/FlierOrderTerminator$1;->this$0:Lcom/didi/flier/business/FlierOrderTerminator;

    iput-object p2, p0, Lcom/didi/flier/business/FlierOrderTerminator$1;->val$sendable:Lcom/didi/frame/Sendable;

    iput-object p3, p0, Lcom/didi/flier/business/FlierOrderTerminator$1;->val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderTerminator$1;->val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/didi/frame/business/terminator/OrderTerminatorListener;->onOrderTerminateError(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderTerminator$1;->val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/didi/frame/business/terminator/OrderTerminatorListener;->onOrderTerminateFail(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 31
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->stopAllLooper()V

    .line 32
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderTerminator$1;->val$sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->clear()V

    .line 33
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderTerminator$1;->val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/didi/frame/business/terminator/OrderTerminatorListener;->onOrderTerminateSuccess(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V

    .line 34
    return-void
.end method
