.class Lcom/didi/game/activity/GameActivity$4;
.super Landroid/os/Handler;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/activity/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/GameActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/didi/game/activity/GameActivity$4;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 412
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 413
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 415
    :pswitch_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 416
    .local v0, params1:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 417
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 418
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$4;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$300(Lcom/didi/game/activity/GameActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 419
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$4;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$300(Lcom/didi/game/activity/GameActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$4;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$400(Lcom/didi/game/activity/GameActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 423
    .end local v0           #params1:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 424
    .local v1, params2:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 425
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 426
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$4;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$300(Lcom/didi/game/activity/GameActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 427
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$4;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$300(Lcom/didi/game/activity/GameActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$4;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$400(Lcom/didi/game/activity/GameActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
