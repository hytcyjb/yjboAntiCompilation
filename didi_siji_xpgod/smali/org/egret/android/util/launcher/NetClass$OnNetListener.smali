.class public interface abstract Lorg/egret/android/util/launcher/NetClass$OnNetListener;
.super Ljava/lang/Object;
.source "NetClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/egret/android/util/launcher/NetClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNetListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onProgress(II)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
