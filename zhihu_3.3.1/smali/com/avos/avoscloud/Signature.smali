.class public Lcom/avos/avoscloud/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "expired"
    }
.end annotation


# instance fields
.field private nonce:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private signedPeerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avos/avoscloud/Signature;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avos/avoscloud/Signature;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedPeerIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avos/avoscloud/Signature;->signedPeerIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Signature;->signedPeerIds:Ljava/util/List;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Signature;->signedPeerIds:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/avos/avoscloud/Signature;->timestamp:J

    return-wide v0
.end method

.method protected isExpired()Z
    .locals 6

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/avos/avoscloud/Signature;->timestamp:J

    const-wide/16 v2, 0x3840

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/avos/avoscloud/Signature;->nonce:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/avos/avoscloud/Signature;->signature:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSignedPeerIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/Signature;->signedPeerIds:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/avos/avoscloud/Signature;->timestamp:J

    .line 49
    return-void
.end method
