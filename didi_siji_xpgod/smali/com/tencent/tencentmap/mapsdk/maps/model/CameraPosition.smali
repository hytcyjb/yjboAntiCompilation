.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
.super Ljava/lang/Object;
.source "CameraPosition.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPositionCreator;


# instance fields
.field private final a:I

.field public final bearing:F

.field public target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public final tilt:F

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPositionCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPositionCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPositionCreator;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFF)V
    .locals 6
    .parameter "latlng"
    .parameter "fzoom"
    .parameter "ftilt"
    .parameter "fbearing"

    .prologue
    .line 79
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFB)V

    .line 80
    return-void
.end method

.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFB)V
    .locals 1
    .parameter "latlng"
    .parameter "fzoom"
    .parameter "ftilt"
    .parameter "fbearing"
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->a:I

    .line 70
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 71
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    .line 72
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->tilt:F

    .line 73
    iput p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->bearing:F

    .line 75
    return-void
.end method

.method public static builder()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
    .locals 1
    .parameter "cameraposition"

    .prologue
    .line 113
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)V

    return-object v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    .locals 11
    .parameter "context"
    .parameter "attributeset"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-object v4

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 145
    .local v1, f:F
    const/4 v2, 0x0

    .line 146
    .local v2, f1:F
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 148
    :cond_1
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {v4, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 150
    :cond_2
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    float-to-double v5, v1

    float-to-double v7, v2

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 151
    .local v3, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->builder()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 152
    .local v0, builder1:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->target(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    .line 153
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    const/4 v5, 0x5

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->zoom(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    .line 155
    :cond_3
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 156
    invoke-virtual {v4, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->bearing(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    .line 157
    :cond_4
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->tilt(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    .line 159
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v4

    goto :goto_0
.end method

.method public static final fromLatLngZoom(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    .locals 2
    .parameter "latlng"
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 105
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFF)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPositionCreator;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    instance-of v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    if-nez v3, :cond_2

    move v1, v2

    .line 120
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 122
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    .line 123
    .local v0, cameraposition:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->tilt:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->bearing:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->bearing:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latlng:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->tilt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bearing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->bearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 83
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPositionCreator;

    .line 85
    return-void
.end method
