.class final Lcom/didi/common/model/Order$1;
.super Ljava/lang/Object;
.source "Order.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/model/Order;
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
        "Lcom/didi/common/model/Order;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/didi/common/model/Order;
    .locals 2
    .parameter "in"

    .prologue
    .line 231
    new-instance v0, Lcom/didi/common/model/Order;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/didi/common/model/Order;-><init>(Landroid/os/Parcel;Lcom/didi/common/model/Order$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/didi/common/model/Order$1;->createFromParcel(Landroid/os/Parcel;)Lcom/didi/common/model/Order;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/didi/common/model/Order;
    .locals 1
    .parameter "size"

    .prologue
    .line 235
    new-array v0, p1, [Lcom/didi/common/model/Order;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/didi/common/model/Order$1;->newArray(I)[Lcom/didi/common/model/Order;

    move-result-object v0

    return-object v0
.end method
