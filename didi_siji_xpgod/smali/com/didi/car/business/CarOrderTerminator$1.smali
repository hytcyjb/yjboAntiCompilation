.class Lcom/didi/car/business/CarOrderTerminator$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CarOrderTerminator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/business/CarOrderTerminator;->terminate(Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
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
.field final synthetic this$0:Lcom/didi/car/business/CarOrderTerminator;

.field final synthetic val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

.field final synthetic val$sendable:Lcom/didi/frame/Sendable;


# direct methods
.method constructor <init>(Lcom/didi/car/business/CarOrderTerminator;Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/car/business/CarOrderTerminator$1;->this$0:Lcom/didi/car/business/CarOrderTerminator;

    iput-object p2, p0, Lcom/didi/car/business/CarOrderTerminator$1;->val$sendable:Lcom/didi/frame/Sendable;

    iput-object p3, p0, Lcom/didi/car/business/CarOrderTerminator$1;->val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/car/business/CarOrderTerminator$1;->val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/didi/frame/business/terminator/OrderTerminatorListener;->onOrderTerminateError(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/car/business/CarOrderTerminator$1;->val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/didi/frame/business/terminator/OrderTerminatorListener;->onOrderTerminateFail(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 33
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->stopAllLooper()V

    .line 34
    iget-object v0, p0, Lcom/didi/car/business/CarOrderTerminator$1;->val$sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->clear()V

    .line 35
    iget-object v0, p0, Lcom/didi/car/business/CarOrderTerminator$1;->val$listener:Lcom/didi/frame/business/terminator/OrderTerminatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/didi/frame/business/terminator/OrderTerminatorListener;->onOrderTerminateSuccess(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method
