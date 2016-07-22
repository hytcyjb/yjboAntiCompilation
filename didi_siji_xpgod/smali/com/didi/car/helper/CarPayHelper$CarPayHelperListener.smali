.class public interface abstract Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;
.super Ljava/lang/Object;
.source "CarPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/helper/CarPayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarPayHelperListener"
.end annotation


# virtual methods
.method public abstract onWXAppLowVersionInstalled()V
.end method

.method public abstract onWXAppSupported(Lcom/didi/car/model/CarPayParams;)V
.end method

.method public abstract onWXAppUnInstalled()V
.end method
