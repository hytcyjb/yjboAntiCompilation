.class final Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
    .locals 2
    .parameter

    .prologue
    .line 782
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcel;Lcom/github/clans/fab/FloatingActionButton$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
    .locals 1
    .parameter

    .prologue
    .line 786
    new-array v0, p1, [Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;->a(Landroid/os/Parcel;)Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;->a(I)[Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    move-result-object v0

    return-object v0
.end method
