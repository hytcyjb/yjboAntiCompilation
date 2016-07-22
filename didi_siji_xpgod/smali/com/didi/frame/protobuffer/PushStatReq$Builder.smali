.class public final Lcom/didi/frame/protobuffer/PushStatReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushStatReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushStatReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushStatReq;",
        ">;"
    }
.end annotation


# instance fields
.field public task_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushStatReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 58
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStatReq;->task_ids:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/PushStatReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/PushStatReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStatReq$Builder;->task_ids:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushStatReq;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/didi/frame/protobuffer/PushStatReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushStatReq;-><init>(Lcom/didi/frame/protobuffer/PushStatReq$Builder;Lcom/didi/frame/protobuffer/PushStatReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushStatReq$Builder;->build()Lcom/didi/frame/protobuffer/PushStatReq;

    move-result-object v0

    return-object v0
.end method

.method public task_ids(Ljava/util/List;)Lcom/didi/frame/protobuffer/PushStatReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/PushStatReq$Builder;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, task_ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/PushStatReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStatReq$Builder;->task_ids:Ljava/util/List;

    .line 64
    return-object p0
.end method
