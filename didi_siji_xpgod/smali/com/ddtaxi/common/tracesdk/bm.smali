.class Lcom/ddtaxi/common/tracesdk/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/bk;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/bm;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bm;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bk;->a(Lcom/ddtaxi/common/tracesdk/bk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/l;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/l;->d()F

    move-result v0

    const/high16 v1, 0x4120

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bm;->a:Lcom/ddtaxi/common/tracesdk/bk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/bk;->a(Lcom/ddtaxi/common/tracesdk/bk;Z)Z

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bm;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bk;->b(Lcom/ddtaxi/common/tracesdk/bk;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bm;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bk;->c(Lcom/ddtaxi/common/tracesdk/bk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bm;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bk;->d(Lcom/ddtaxi/common/tracesdk/bk;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bm;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bk;->c(Lcom/ddtaxi/common/tracesdk/bk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bm;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bk;->d(Lcom/ddtaxi/common/tracesdk/bk;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
