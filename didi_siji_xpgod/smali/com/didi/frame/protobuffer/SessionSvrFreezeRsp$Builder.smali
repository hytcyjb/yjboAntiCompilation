.class public final Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SessionSvrFreezeRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public rc:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 49
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp;->rc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp$Builder;->rc:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp$Builder;->checkRequiredFields()V

    .line 61
    new-instance v0, Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp;-><init>(Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp$Builder;Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp$Builder;->build()Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp;

    move-result-object v0

    return-object v0
.end method

.method public rc(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp$Builder;
    .locals 0
    .parameter "rc"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrFreezeRsp$Builder;->rc:Ljava/lang/Integer;

    .line 55
    return-object p0
.end method
