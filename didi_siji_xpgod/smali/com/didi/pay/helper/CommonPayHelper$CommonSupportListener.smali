.class public interface abstract Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;
.super Ljava/lang/Object;
.source "CommonPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/pay/helper/CommonPayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommonSupportListener"
.end annotation


# virtual methods
.method public abstract beginCheckState()I
.end method

.method public abstract doCheck(Lcom/didi/game/model/DiDiResult;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onLowVersion(Lcom/didi/game/model/DiDiResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNotInstalled(Lcom/didi/game/model/DiDiResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSupported(Lcom/didi/game/model/DiDiResult;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation
.end method
