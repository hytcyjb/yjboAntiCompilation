.class public final Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SessionSvrCreateReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/SessionSvrCreateReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/SessionSvrCreateReq;",
        ">;"
    }
.end annotation


# instance fields
.field public product:Ljava/lang/Long;

.field public uid:Ljava/util/List;
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
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrCreateReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 64
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->uid:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;->uid:Ljava/util/List;

    .line 66
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->product:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;->product:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/SessionSvrCreateReq;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;-><init>(Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;Lcom/didi/frame/protobuffer/SessionSvrCreateReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;->build()Lcom/didi/frame/protobuffer/SessionSvrCreateReq;

    move-result-object v0

    return-object v0
.end method

.method public product(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;
    .locals 0
    .parameter "product"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;->product:Ljava/lang/Long;

    .line 76
    return-object p0
.end method

.method public uid(Ljava/util/List;)Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, uid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;->uid:Ljava/util/List;

    .line 71
    return-object p0
.end method
