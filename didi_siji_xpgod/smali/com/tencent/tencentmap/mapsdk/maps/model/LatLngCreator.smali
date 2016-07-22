.class public Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngCreator;
.super Ljava/lang/Object;
.source "LatLngCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1
    .parameter "i"

    .prologue
    .line 35
    new-array v0, p1, [Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngCreator;->newArray(I)[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method
