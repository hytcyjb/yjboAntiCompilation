.class final Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager$1;
.super Ljava/lang/Object;
.source "OfflineMapManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .locals 1
    .parameter "pinyin"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;

    invoke-static {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v0

    return-object v0
.end method
