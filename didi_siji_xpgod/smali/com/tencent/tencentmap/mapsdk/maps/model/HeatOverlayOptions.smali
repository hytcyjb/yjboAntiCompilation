.class public Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;
.super Ljava/lang/Object;
.source "HeatOverlayOptions.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;,
        Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptionsCreator; = null

.field public static final DEFAULT_RADIUS:I = 0x12


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x12

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->d:I

    .line 97
    return-void
.end method


# virtual methods
.method public colorMapper(Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;
    .locals 0
    .parameter "mapper"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->c:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

    .line 31
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getColorMapper()Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->c:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOnHeatMapReadyListener()Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->d:I

    return v0
.end method

.method public nodes(Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;",
            ">;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->a:Ljava/util/ArrayList;

    .line 20
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    return-object p0
.end method

.method public onHeatMapReadyListener(Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;
    .locals 0
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

    .line 42
    return-object p0
.end method

.method public radius(I)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;
    .locals 0
    .parameter "radius"

    .prologue
    .line 51
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->d:I

    .line 52
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 79
    return-void
.end method
