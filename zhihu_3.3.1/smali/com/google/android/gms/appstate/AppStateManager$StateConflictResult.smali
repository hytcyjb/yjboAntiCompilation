.class public interface abstract Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/AppStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateConflictResult"
.end annotation


# virtual methods
.method public abstract getLocalData()[B
.end method

.method public abstract getResolvedVersion()Ljava/lang/String;
.end method

.method public abstract getServerData()[B
.end method

.method public abstract getStateKey()I
.end method
