.class final Lcom/avos/avoscloud/AVStatus$9;
.super Ljava/lang/Object;
.source "AVStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVStatus;
    .locals 1
    .parameter

    .prologue
    .line 1507
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus$9;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/avos/avoscloud/AVStatus;
    .locals 1
    .parameter

    .prologue
    .line 1512
    new-array v0, p1, [Lcom/avos/avoscloud/AVStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus$9;->newArray(I)[Lcom/avos/avoscloud/AVStatus;

    move-result-object v0

    return-object v0
.end method
