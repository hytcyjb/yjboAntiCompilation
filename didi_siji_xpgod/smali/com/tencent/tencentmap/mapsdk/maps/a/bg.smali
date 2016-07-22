.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg$1;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg$1;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a:Landroid/os/Parcelable$Creator;

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, -0x2160ec1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    .line 27
    const v0, -0x80befc1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "latitudeE6"
    .parameter "longitudeE6"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    .line 48
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 1
    .parameter "geoPoint"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>()V

    .line 36
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    .line 37
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter "latitudeE6"

    .prologue
    .line 75
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    .line 76
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 1
    .parameter "geoPoint"

    .prologue
    .line 92
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    .line 93
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    .line 94
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .parameter "longitudeE6"

    .prologue
    .line 84
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    .line 85
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 98
    instance-of v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 100
    .local v0, o:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 102
    .end local v0           #o:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 141
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void
.end method
