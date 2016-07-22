.class public abstract Lcom/didi/frame/business/looper/OrderLooper;
.super Ljava/lang/Object;
.source "OrderLooper.java"


# static fields
.field private static looper:Lcom/didi/frame/business/looper/OrderLooper;


# instance fields
.field protected mSentCnt:I

.field private running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/business/looper/OrderLooper;->mSentCnt:I

    return-void
.end method

.method public static getCurrentSendable()Lcom/didi/frame/Sendable;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    invoke-virtual {v0}, Lcom/didi/frame/business/looper/OrderLooper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/frame/business/looper/OrderLooper;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    return-object v0
.end method

.method public static hasLooperRunning()Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stopAllLooper()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    invoke-virtual {v0}, Lcom/didi/frame/business/looper/OrderLooper;->stop()V

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    goto :goto_0
.end method


# virtual methods
.method public abstract getSendable()Lcom/didi/frame/Sendable;
.end method

.method public getmSentCnt()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/didi/frame/business/looper/OrderLooper;->mSentCnt:I

    return v0
.end method

.method public abstract render()V
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/didi/frame/business/looper/OrderLooper;->running:Z

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    sput-object p0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/business/looper/OrderLooper;->running:Z

    .line 52
    invoke-virtual {p0}, Lcom/didi/frame/business/looper/OrderLooper;->startLoop()V

    goto :goto_0
.end method

.method protected abstract startLoop()V
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/frame/business/looper/OrderLooper;->looper:Lcom/didi/frame/business/looper/OrderLooper;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/business/looper/OrderLooper;->running:Z

    .line 58
    invoke-virtual {p0}, Lcom/didi/frame/business/looper/OrderLooper;->stopLoop()V

    .line 59
    return-void
.end method

.method protected abstract stopLoop()V
.end method
