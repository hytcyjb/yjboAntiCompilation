.class public Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptionsCreator;
.super Ljava/lang/Object;
.source "HeatOverlayOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;
    .locals 1
    .parameter "source"

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;
    .locals 1
    .parameter "size"

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptionsCreator;->newArray(I)[Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;

    move-result-object v0

    return-object v0
.end method
