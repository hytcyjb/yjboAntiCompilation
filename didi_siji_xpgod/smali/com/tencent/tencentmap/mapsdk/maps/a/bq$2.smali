.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bq$2;
.super Ljava/lang/Object;
.source "MapGestureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

.field private final synthetic b:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;Lcom/tencent/tencentmap/mapsdk/maps/a/bm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->q()V

    .line 174
    return-void
.end method
