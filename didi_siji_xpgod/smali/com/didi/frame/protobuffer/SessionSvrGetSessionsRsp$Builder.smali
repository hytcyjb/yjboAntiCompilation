.class public final Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SessionSvrGetSessionsRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public rc:Ljava/lang/Integer;

.field public sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 65
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->rc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->rc:Ljava/lang/Integer;

    .line 67
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->sessions:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->sessions:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->checkRequiredFields()V

    .line 83
    new-instance v0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;-><init>(Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->build()Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;

    move-result-object v0

    return-object v0
.end method

.method public rc(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;
    .locals 0
    .parameter "rc"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->rc:Ljava/lang/Integer;

    .line 72
    return-object p0
.end method

.method public sessions(Ljava/util/List;)Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSession;",
            ">;)",
            "Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, sessions:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/InstantMessageSession;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->sessions:Ljava/util/List;

    .line 77
    return-object p0
.end method
