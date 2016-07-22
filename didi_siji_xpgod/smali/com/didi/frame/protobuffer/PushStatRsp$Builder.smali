.class public final Lcom/didi/frame/protobuffer/PushStatRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushStatRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushStatRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushStatRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PushStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushStatRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 50
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStatRsp;->stats:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/PushStatRsp;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/PushStatRsp;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStatRsp$Builder;->stats:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushStatRsp;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/didi/frame/protobuffer/PushStatRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushStatRsp;-><init>(Lcom/didi/frame/protobuffer/PushStatRsp$Builder;Lcom/didi/frame/protobuffer/PushStatRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushStatRsp$Builder;->build()Lcom/didi/frame/protobuffer/PushStatRsp;

    move-result-object v0

    return-object v0
.end method

.method public stats(Ljava/util/List;)Lcom/didi/frame/protobuffer/PushStatRsp$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PushStat;",
            ">;)",
            "Lcom/didi/frame/protobuffer/PushStatRsp$Builder;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, stats:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PushStat;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/PushStatRsp$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStatRsp$Builder;->stats:Ljava/util/List;

    .line 56
    return-object p0
.end method
