.class public interface abstract Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
.super Ljava/lang/Object;
.source "TaxiOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/business/TaxiOrderLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoopListener"
.end annotation


# virtual methods
.method public abstract onCarGetState()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onGetState()V
.end method

.method public abstract onGuide()V
.end method

.method public abstract onIfWait()V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onRedict()V
.end method

.method public abstract onStop()V
.end method
