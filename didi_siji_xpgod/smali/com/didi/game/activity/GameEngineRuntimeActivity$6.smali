.class Lcom/didi/game/activity/GameEngineRuntimeActivity$6;
.super Ljava/lang/Object;
.source "GameEngineRuntimeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/activity/GameEngineRuntimeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$6;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 591
    :goto_0
    :sswitch_0
    return-void

    .line 565
    :sswitch_1
    const-string v1, "game_plugin_exit"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$6;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #calls: Lcom/didi/game/activity/GameEngineRuntimeActivity;->releaseEgretGameEngin()V
    invoke-static {v1}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$800(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    .line 567
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$6;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-virtual {v1}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->finish()V

    goto :goto_0

    .line 572
    :sswitch_2
    const-string v1, "game_plugin_collect"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$6;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #calls: Lcom/didi/game/activity/GameEngineRuntimeActivity;->createDesktopShortcut()V
    invoke-static {v1}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$900(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    .line 574
    const-string v1, "\u6536\u85cf\u6210\u529f!\n\u60a8\u53ef\u4ee5\u4ece\u684c\u9762\u76f4\u63a5\u6253\u5f00\n"

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 579
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v1, :cond_0

    .line 580
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 582
    :cond_0
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-gez v1, :cond_1

    .line 583
    const-string v1, "msg"

    const-string v2, "onMenuItemClickListener-onClick-2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 585
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$6;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #calls: Lcom/didi/game/activity/GameEngineRuntimeActivity;->changeMenuDrawerVisibility()V
    invoke-static {v1}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1000(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    goto :goto_0

    .line 563
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x7f080397 -> :sswitch_1
        0x7f080398 -> :sswitch_0
        0x7f080399 -> :sswitch_2
    .end sparse-switch
.end method
