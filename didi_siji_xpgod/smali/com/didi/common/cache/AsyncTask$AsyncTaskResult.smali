.class Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/didi/common/cache/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/didi/common/cache/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/cache/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, this:Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;,"Lcom/didi/common/cache/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, data:[Ljava/lang/Object;,"[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;->mTask:Lcom/didi/common/cache/AsyncTask;

    .line 690
    iput-object p2, p0, Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 691
    return-void
.end method
