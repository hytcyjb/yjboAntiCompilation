.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;
.source "BitmapDescriptor.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V
    .locals 1
    .parameter "former"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    .line 10
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    .line 11
    return-void
.end method


# virtual methods
.method public final getFormater()Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    return-object v0
.end method
