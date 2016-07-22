.class Lcom/didi/game/activity/GameActivity$3;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameActivity;->initMenuView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downTime:J

.field isMove:Z

.field final synthetic this$0:Lcom/didi/game/activity/GameActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/didi/game/activity/GameActivity$3;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/game/activity/GameActivity$3;->isMove:Z

    .line 299
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/game/activity/GameActivity$3;->downTime:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v5, 0x66

    const/16 v4, 0x65

    const/4 v6, 0x1

    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return v6

    .line 305
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/didi/game/activity/GameActivity$3;->downTime:J

    .line 306
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$3;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$100(Lcom/didi/game/activity/GameActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$3;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$100(Lcom/didi/game/activity/GameActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-boolean v2, p0, Lcom/didi/game/activity/GameActivity$3;->isMove:Z

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/game/activity/GameActivity$3;->downTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 311
    iput-boolean v6, p0, Lcom/didi/game/activity/GameActivity$3;->isMove:Z

    .line 313
    :cond_1
    iget-boolean v2, p0, Lcom/didi/game/activity/GameActivity$3;->isMove:Z

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$3;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    #calls: Lcom/didi/game/activity/GameActivity;->moveMenuIconWithFinger(Landroid/view/View;FF)V
    invoke-static {v2, p1, v3, v4}, Lcom/didi/game/activity/GameActivity;->access$200(Lcom/didi/game/activity/GameActivity;Landroid/view/View;FF)V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-boolean v2, p0, Lcom/didi/game/activity/GameActivity$3;->isMove:Z

    if-nez v2, :cond_3

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 323
    :goto_1
    const/4 v0, 0x0

    .line 324
    .local v0, isHideFloatMenu:Z
    const/4 v1, 0x0

    .line 325
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 326
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 327
    iput v4, v1, Landroid/os/Message;->what:I

    .line 328
    const/4 v0, 0x1

    .line 334
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 336
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$3;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$100(Lcom/didi/game/activity/GameActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 321
    .end local v0           #isHideFloatMenu:Z
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/didi/game/activity/GameActivity$3;->isMove:Z

    goto :goto_1

    .line 329
    .restart local v0       #isHideFloatMenu:Z
    .restart local v1       #msg:Landroid/os/Message;
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 330
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 331
    iput v5, v1, Landroid/os/Message;->what:I

    .line 332
    const/4 v0, 0x1

    goto :goto_2

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
