.class public interface abstract Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;
.super Ljava/lang/Object;
.source "BtsPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/helper/BtsPayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BtsPayHelperListener"
.end annotation


# virtual methods
.method public abstract beginCheckWXState()V
.end method

.method public abstract endCheckWXState()V
.end method

.method public abstract onWXAppLowVersionInstalled()V
.end method

.method public abstract onWXAppSupported(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
.end method

.method public abstract onWXAppUnInstalled()V
.end method
