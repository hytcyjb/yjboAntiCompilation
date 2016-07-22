.class final Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;
.super Ljava/util/TimerTask;
.source "GLHeatOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)V
    .locals 1
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->g(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z

    .line 614
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->h(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->b:I

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 618
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->j(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)I

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->b:I

    .line 620
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z

    .line 621
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b$1;

    invoke-direct {v2, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;)V

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 633
    :cond_1
    :goto_0
    return-void

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;->b:I

    goto :goto_0
.end method
