.class final Lcom/tencent/tencentmap/mapsdk/maps/a/fw$1;
.super Landroid/os/Handler;
.source "MarkerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    .local v0, objPara:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 98
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;

    .line 99
    .local v1, paramerMarkerOnTap:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;)V

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
