.class public final Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
.super Ljava/lang/Object;
.source "CameraUpdate.java"


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V
    .locals 0
    .parameter "f1"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    .line 10
    return-void
.end method


# virtual methods
.method public final getParams()Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    return-object v0
.end method
