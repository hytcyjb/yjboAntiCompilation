.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gg;
.super Ljava/lang/Object;
.source "ViewControl.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/fp;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fp;)V
    .locals 1
    .parameter "viewDel"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fp;

    .line 11
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fp;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fp;

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fp;

    .line 18
    :cond_0
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fp;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fp;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fp;->l()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
