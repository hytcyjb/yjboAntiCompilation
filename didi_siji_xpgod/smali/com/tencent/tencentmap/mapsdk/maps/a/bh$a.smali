.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    .line 235
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 236
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 265
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Landroid/view/MotionEvent;

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;->a(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
