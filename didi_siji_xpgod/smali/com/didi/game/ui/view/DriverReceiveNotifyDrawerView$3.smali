.class Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$3;
.super Ljava/lang/Object;
.source "DriverReceiveNotifyDrawerView.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setIconAndDriverComming(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;


# direct methods
.method constructor <init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$3;->this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 388
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 389
    :cond_0
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverHead:Landroid/widget/ImageView;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverHead:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
