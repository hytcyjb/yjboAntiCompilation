.class Lde/greenrobot/event/AsyncPoster;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final queue:Lde/greenrobot/event/PendingPostQueue;


# direct methods
.method constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 1
    .parameter "eventBus"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lde/greenrobot/event/AsyncPoster;->eventBus:Lde/greenrobot/event/EventBus;

    .line 31
    new-instance v0, Lde/greenrobot/event/PendingPostQueue;

    invoke-direct {v0}, Lde/greenrobot/event/PendingPostQueue;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    .line 32
    return-void
.end method


# virtual methods
.method public enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .locals 2
    .parameter "subscription"
    .parameter "event"

    .prologue
    .line 35
    invoke-static {p1, p2}, Lde/greenrobot/event/PendingPost;->obtainPendingPost(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)Lde/greenrobot/event/PendingPost;

    move-result-object v0

    .line 36
    .local v0, pendingPost:Lde/greenrobot/event/PendingPost;
    iget-object v1, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/PendingPostQueue;->enqueue(Lde/greenrobot/event/PendingPost;)V

    .line 37
    iget-object v1, p0, Lde/greenrobot/event/AsyncPoster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1}, Lde/greenrobot/event/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v1}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;

    move-result-object v0

    .line 43
    .local v0, pendingPost:Lde/greenrobot/event/PendingPost;
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No pending post available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    iget-object v1, p0, Lde/greenrobot/event/AsyncPoster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/PendingPost;)V

    .line 47
    return-void
.end method
