.class Lcom/didi/map/MapController$MyHandler;
.super Landroid/os/Handler;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 724
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 725
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 726
    .local v0, screenBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/didi/map/MapController;->access$200()Lcom/didi/map/MapController$MapScreenEndListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/didi/map/MapController$MapScreenEndListener;->onScreenShotEnd(Landroid/graphics/Bitmap;)V

    .line 727
    return-void
.end method
