.class Lthread/pool/ThreadPool$1;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lthread/pool/ThreadPool;-><init>(IIZJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lthread/pool/ThreadPool;

.field final synthetic val$threadPriority:I


# direct methods
.method constructor <init>(Lthread/pool/ThreadPool;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lthread/pool/ThreadPool$1;->this$0:Lthread/pool/ThreadPool;

    iput p2, p0, Lthread/pool/ThreadPool$1;->val$threadPriority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter "r"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    .local v0, t:Ljava/lang/Thread;
    iget v1, p0, Lthread/pool/ThreadPool$1;->val$threadPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 47
    return-object v0
.end method
