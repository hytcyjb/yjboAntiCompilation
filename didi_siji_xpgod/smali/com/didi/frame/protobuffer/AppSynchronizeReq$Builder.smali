.class public final Lcom/didi/frame/protobuffer/AppSynchronizeReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AppSynchronizeReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/AppSynchronizeReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/AppSynchronizeReq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/AppSynchronizeReq;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 36
    return-void
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/AppSynchronizeReq;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/didi/frame/protobuffer/AppSynchronizeReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/AppSynchronizeReq;-><init>(Lcom/didi/frame/protobuffer/AppSynchronizeReq$Builder;Lcom/didi/frame/protobuffer/AppSynchronizeReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AppSynchronizeReq$Builder;->build()Lcom/didi/frame/protobuffer/AppSynchronizeReq;

    move-result-object v0

    return-object v0
.end method