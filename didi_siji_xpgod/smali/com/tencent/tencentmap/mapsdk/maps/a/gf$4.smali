.class final Lcom/tencent/tencentmap/mapsdk/maps/a/gf$4;
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
    .line 196
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;->a()V

    .line 204
    :cond_0
    return-void
.end method
