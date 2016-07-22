.class final Lcom/tencent/tencentmap/mapsdk/maps/a/gf$2;
.super Ljava/lang/Object;
.source "UiSettingManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method
