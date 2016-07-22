.class public Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;
.super Ljava/lang/Object;
.source "HeatDataNode.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private b:D


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;D)V
    .locals 0
    .parameter "point"
    .parameter "value"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 11
    iput-wide p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;->b:D

    .line 12
    return-void
.end method


# virtual methods
.method public getPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;->b:D

    return-wide v0
.end method

.method public setPoint(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 28
    return-void
.end method

.method public setValue(D)V
    .locals 0
    .parameter "value"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;->b:D

    .line 20
    return-void
.end method
