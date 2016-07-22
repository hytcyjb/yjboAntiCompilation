.class public interface abstract Lcom/google/android/gms/internal/lw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lw$a;
    }
.end annotation


# virtual methods
.method public abstract onAddGeofencesResult(I[Ljava/lang/String;)V
.end method

.method public abstract onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
.end method

.method public abstract onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
.end method
