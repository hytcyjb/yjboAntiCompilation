.class Lthread/Job$1;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lthread/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lthread/Job;


# direct methods
.method constructor <init>(Lthread/Job;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lthread/Job$1;->this$0:Lthread/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    iget-object v0, p0, Lthread/Job$1;->this$0:Lthread/Job;

    invoke-virtual {v0}, Lthread/Job;->run()V

    .line 37
    iget-object v0, p0, Lthread/Job$1;->this$0:Lthread/Job;

    #setter for: Lthread/Job;->mFinished:Z
    invoke-static {v0, v3}, Lthread/Job;->access$002(Lthread/Job;Z)Z

    .line 38
    invoke-static {}, Lthread/Job;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lthread/Job;->access$100()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lthread/Job$1;->this$0:Lthread/Job;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    iget-object v0, p0, Lthread/Job$1;->this$0:Lthread/Job;

    #getter for: Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;
    invoke-static {v0}, Lthread/Job;->access$200(Lthread/Job;)Lthread/pool/ThreadPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lthread/Job$1;->this$0:Lthread/Job;

    #getter for: Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;
    invoke-static {v0}, Lthread/Job;->access$200(Lthread/Job;)Lthread/pool/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lthread/Job$1;->this$0:Lthread/Job;

    invoke-virtual {v0, v1}, Lthread/pool/ThreadPool;->remove(Lthread/Job;)V

    .line 42
    :cond_0
    return-void
.end method
