.class Lcom/tendcloud/tenddata/ae;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/d;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/ae;->a:Lcom/tendcloud/tenddata/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/ae;->a:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->a(Lcom/tendcloud/tenddata/d;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/ae;->a:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->a(Lcom/tendcloud/tenddata/d;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ae;->a:Lcom/tendcloud/tenddata/d;

    invoke-static {v1}, Lcom/tendcloud/tenddata/d;->b(Lcom/tendcloud/tenddata/d;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
