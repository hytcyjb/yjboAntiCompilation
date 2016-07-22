.class public Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;
.super Landroid/os/Handler;
.source "BtsWeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;
    }
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;->mWeakHandler:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;

    .line 70
    .local v0, handler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
