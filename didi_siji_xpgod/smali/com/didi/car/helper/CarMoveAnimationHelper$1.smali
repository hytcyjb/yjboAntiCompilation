.class Lcom/didi/car/helper/CarMoveAnimationHelper$1;
.super Landroid/os/Handler;
.source "CarMoveAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarMoveAnimationHelper;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isPlaying:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarMoveAnimationHelper;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "x0"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->isPlaying:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->isPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->isPlaying:Ljava/lang/Boolean;

    .line 68
    const/16 v0, 0x27d9

    invoke-virtual {p0, v0}, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->removeMessages(I)V

    .line 69
    const/16 v0, 0x27da

    invoke-virtual {p0, v0}, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->removeMessages(I)V

    .line 70
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #calls: Lcom/didi/car/helper/CarMoveAnimationHelper;->playNext()V
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$000(Lcom/didi/car/helper/CarMoveAnimationHelper;)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$100(Lcom/didi/car/helper/CarMoveAnimationHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->isPlaying:Ljava/lang/Boolean;

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #calls: Lcom/didi/car/helper/CarMoveAnimationHelper;->playNext()V
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$000(Lcom/didi/car/helper/CarMoveAnimationHelper;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x27d9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
