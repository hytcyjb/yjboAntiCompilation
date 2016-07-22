.class final Lcom/didi/common/util/TraceDebugLog$1;
.super Ljava/lang/Thread;
.source "TraceDebugLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/didi/common/util/TraceDebugLog;->writeToSdCard(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->access$100(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->releaseDebugLog()V

    .line 46
    #calls: Lcom/didi/common/util/TraceDebugLog;->renameLog()V
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->access$200()V

    .line 48
    return-void
.end method
