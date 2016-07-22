.class final Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;
.super Ljava/lang/Object;
.source "OfflineMapManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gn;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 749
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;->a:Landroid/content/Context;

    const-string v3, "com.tencent.tencentmap.mapsdk.maps.offlinemap"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 752
    const-string v3, "intVersion"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 753
    .local v0, intVersion:I
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;-><init>(Ljava/util/ArrayList;)V

    .line 755
    .local v1, req:Lcom/tencent/tencentmap/mapsdk/maps/a/gr;
    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;

    const-string v4, "sdk_city_ver"

    invoke-direct {v3, v4, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    const-string v3, "http://newsso.map.qq.com:8080/"

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;)Lcom/tencent/tencentmap/mapsdk/maps/a/gx;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gx;->a(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn$1;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gn;Ljava/lang/String;[BLandroid/content/Context;)V

    .line 759
    return-void
.end method
