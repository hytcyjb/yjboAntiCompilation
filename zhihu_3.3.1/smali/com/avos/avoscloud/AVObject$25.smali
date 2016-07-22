.class final Lcom/avos/avoscloud/AVObject$25;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$failureLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$lock:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/avos/avoscloud/SaveCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$25;->val$failureLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$25;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$25;->val$lock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter

    .prologue
    .line 2263
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$25;->val$failureLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2264
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$25;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 2270
    :cond_0
    :goto_0
    return-void

    .line 2265
    :cond_1
    if-nez p1, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$25;->val$lock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$25;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
