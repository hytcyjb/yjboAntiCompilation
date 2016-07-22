.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;
.super Ljava/lang/Object;
.source "VisibleRegion.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegionCreator;


# instance fields
.field private final a:I

.field public final farLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public final farRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public final latLngBounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

.field public final nearLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public final nearRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegionCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegionCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegionCreator;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;)V
    .locals 7
    .parameter "latlng"
    .parameter "latlng1"
    .parameter "latlng2"
    .parameter "latlng3"
    .parameter "latlngbounds"

    .prologue
    .line 29
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;B)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;B)V
    .locals 1
    .parameter "latlng"
    .parameter "latlng1"
    .parameter "latlng2"
    .parameter "latlng3"
    .parameter "latlngbounds"
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->a:I

    .line 20
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->nearLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 21
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->nearRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 22
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->farLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 23
    iput-object p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->farRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 24
    iput-object p5, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->latLngBounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    .line 25
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegionCreator;

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    instance-of v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;

    if-nez v3, :cond_2

    move v1, v2

    .line 56
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;

    .line 59
    .local v0, visibleregion:Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->nearLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->nearLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->nearRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->nearRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->farLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->farLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->farRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->farRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->latLngBounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;->latLngBounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 37
    return-void
.end method
