.class public interface abstract Lcom/google/android/gms/auth/api/IGoogleAuthApiCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/IGoogleAuthApiCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectionSuccess(Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;)V
.end method

.method public abstract onError(ILjava/lang/String;Landroid/app/PendingIntent;)V
.end method
