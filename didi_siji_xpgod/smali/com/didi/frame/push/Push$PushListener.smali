.class public interface abstract Lcom/didi/frame/push/Push$PushListener;
.super Ljava/lang/Object;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/push/Push;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PushListener"
.end annotation


# virtual methods
.method public abstract onPushConnCallback(I)V
.end method

.method public abstract onPushContextStarted()V
.end method

.method public abstract onPushFileConnError(I)V
.end method

.method public abstract onPushLoopError(I)V
.end method
