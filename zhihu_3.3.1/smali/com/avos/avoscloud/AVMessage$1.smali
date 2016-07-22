.class final Lcom/avos/avoscloud/AVMessage$1;
.super Ljava/lang/Object;
.source "AVMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVMessage;
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
        "Lcom/avos/avoscloud/AVMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVMessage;
    .locals 1
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/avos/avoscloud/AVMessage;
    .locals 1
    .parameter

    .prologue
    .line 154
    new-array v0, p1, [Lcom/avos/avoscloud/AVMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVMessage$1;->newArray(I)[Lcom/avos/avoscloud/AVMessage;

    move-result-object v0

    return-object v0
.end method
