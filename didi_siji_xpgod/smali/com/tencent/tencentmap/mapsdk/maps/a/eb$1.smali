.class final Lcom/tencent/tencentmap/mapsdk/maps/a/eb$1;
.super Ljava/lang/Object;
.source "AnimateAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/eb;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;->onFinish()V

    goto :goto_0
.end method