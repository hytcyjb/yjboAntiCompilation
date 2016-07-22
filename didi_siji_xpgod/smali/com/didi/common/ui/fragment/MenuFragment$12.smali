.class Lcom/didi/common/ui/fragment/MenuFragment$12;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$12;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/16 v8, 0xc9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 657
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    const-string v4, "pxxmenu107_ck"

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 661
    new-instance v3, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v3}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 662
    .local v3, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const-string v4, "menu_game"

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 663
    const v4, 0x7f0b0594

    iput v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->rightTextResId:I

    .line 664
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/didi/common/ui/fragment/MenuFragment$12;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v4}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 665
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 666
    .local v2, vid:I
    const v4, 0x7f080474

    if-ne v2, v4, :cond_5

    .line 668
    const-string v4, "menu_found_click"

    const-string v5, "[pager_id=1][channel_id=201][show_id=1]"

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, ""

    .line 671
    .local v0, bizParams:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->isNewFoundUrl()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 672
    invoke-static {v6, v8}, Lcom/didi/game/common/utils/O2OUtils;->getTaxiBizParams(II)Ljava/lang/String;

    move-result-object v0

    .line 677
    :goto_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getFoundMenuH5Url()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getFoundMenuH5Url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 682
    :goto_2
    iput-boolean v7, v3, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    .line 683
    iput-boolean v6, v3, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 684
    iput-boolean v7, v3, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    .line 685
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getFoundMenuTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 686
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/didi/common/ui/fragment/MenuFragment$12;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v4}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .end local v0           #bizParams:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    :goto_3
    iget-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---------------------biz h5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/didi/common/ui/webview/WebViewModel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 711
    iput-boolean v6, v3, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 712
    const-string v4, "data_model"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 713
    iget-object v4, p0, Lcom/didi/common/ui/fragment/MenuFragment$12;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v4, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 674
    .restart local v0       #bizParams:Ljava/lang/String;
    :cond_3
    invoke-static {v6, v8}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 680
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getFoundMenuH5Url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    goto :goto_2

    .line 687
    .end local v0           #bizParams:Ljava/lang/String;
    :cond_5
    const v4, 0x7f08047a

    if-ne v2, v4, :cond_6

    .line 689
    const-string v4, "menu_found_food_click"

    const-string v5, "[pager_id=2][channel_id=202][show_id=2]"

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getMenuBizFoodUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 691
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getMenuBizFoodTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 692
    const/16 v4, 0xca

    invoke-static {v6, v4}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 693
    iput-boolean v7, v3, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 694
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/didi/common/ui/fragment/MenuFragment$12;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v4}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_3

    .line 695
    :cond_6
    const v4, 0x7f080477

    if-ne v2, v4, :cond_2

    .line 697
    const-string v4, "menu_found_game_click"

    const-string v5, "[pager_id=2][channel_id=203][show_id=3]"

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getMenuBizGameUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 699
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getMenuBizGameTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 700
    const/16 v4, 0xcb

    invoke-static {v6, v4}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 701
    iput-boolean v7, v3, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 702
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/didi/common/ui/fragment/MenuFragment$12;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v4}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_3
.end method
