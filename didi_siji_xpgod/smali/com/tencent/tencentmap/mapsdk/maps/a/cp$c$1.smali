.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c$1;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c$1;->b:Ljava/lang/Runnable;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;->a()V

    .line 521
    return-void

    .line 518
    :catchall_0
    move-exception v0

    .line 519
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;->a()V

    .line 520
    throw v0
.end method
