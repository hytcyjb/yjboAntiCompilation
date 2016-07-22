.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 473
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 474
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 479
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;

    .line 480
    .local v0, result:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 489
    :goto_0
    return-void

    .line 483
    :pswitch_0
    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;)V

    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;->b:[Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->b()V

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
