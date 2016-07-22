.class public interface abstract Lcom/google/android/gms/internal/ek;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ek$a;
    }
.end annotation


# virtual methods
.method public abstract finishPurchase()V
.end method

.method public abstract getProductId()Ljava/lang/String;
.end method

.method public abstract getPurchaseData()Landroid/content/Intent;
.end method

.method public abstract getResultCode()I
.end method

.method public abstract isVerified()Z
.end method
