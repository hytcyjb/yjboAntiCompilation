.class Lcom/didi/common/ui/fragment/SetupFragment$4;
.super Ljava/lang/Object;
.source "SetupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/SetupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SetupFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SetupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 264
    :sswitch_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v12

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/didi/frame/FragmentMgr;->showCommonAddrFragment(II)V

    goto :goto_0

    .line 267
    :sswitch_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/didi/frame/FragmentMgr;->showBindFragment()V

    goto :goto_0

    .line 273
    :sswitch_2
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v9

    .line 274
    .local v9, userInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    const-string v8, ""

    .line 275
    .local v8, nickName:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 276
    const-string v12, ""

    invoke-virtual {v9}, Lcom/didi/common/ui/userinfo/UserInfo;->getUserNickname()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 277
    invoke-virtual {v9}, Lcom/didi/common/ui/userinfo/UserInfo;->getPhone()Ljava/lang/String;

    move-result-object v8

    .line 283
    :cond_1
    :goto_1
    new-instance v11, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v11}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 284
    .local v11, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0344

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 285
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://static.xiaojukeji.com/webapp/pages/didi-pasger-feedback/home.html?customer_name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 286
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 287
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/webview/FeekBackWebActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v2, intent:Landroid/content/Intent;
    const-string v12, "data_model"

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v2}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 279
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_2
    invoke-virtual {v9}, Lcom/didi/common/ui/userinfo/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 293
    .end local v8           #nickName:Ljava/lang/String;
    .end local v9           #userInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    :sswitch_3
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/didi/frame/FragmentMgr;->showAboutFragment()V

    goto/16 :goto_0

    .line 296
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;

    invoke-direct {v3, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v3, intent0:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v3}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 300
    .end local v3           #intent0:Landroid/content/Intent;
    :sswitch_5
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v12

    const v13, 0x7f05000c

    invoke-virtual {v12, v13}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 301
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    const v15, 0x7f0b0340

    invoke-virtual {v14, v15}, Lcom/didi/common/ui/fragment/SetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v12

    sget-object v13, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v12, v13}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v12

    const v13, 0x7f0b0276

    invoke-static {v13}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v12

    const v13, 0x7f0b0132

    invoke-static {v13}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    invoke-static {v13}, Lcom/didi/common/ui/fragment/SetupFragment;->access$600(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto/16 :goto_0

    .line 312
    :sswitch_6
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v12

    invoke-virtual {v12}, Lcom/didi/common/config/Preferences;->isNewServerManageMent()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v1, "1"

    .line 313
    .local v1, customParams:Ljava/lang/String;
    :goto_2
    new-instance v10, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v10}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 314
    .local v10, webViewMode0:Lcom/didi/common/ui/webview/WebViewModel;
    const v12, 0x7f0b036a

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 315
    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getNoticeUrl()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 316
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 317
    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 318
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "guankong="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "notice"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=notice1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 319
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v12

    invoke-virtual {v12}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 320
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&is_join=1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 322
    :cond_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v12, "data_model"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v2}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 312
    .end local v1           #customParams:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v10           #webViewMode0:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_4
    const-string v1, "0"

    goto/16 :goto_2

    .line 329
    :sswitch_7
    new-instance v10, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v10}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 330
    .restart local v10       #webViewMode0:Lcom/didi/common/ui/webview/WebViewModel;
    const v12, 0x7f0b0364

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 331
    sget-object v12, Lcom/didi/common/util/Constant;->SETUP_GUIDEBOOK_CAR:Ljava/lang/String;

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 332
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 333
    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 334
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "&flier=0&version="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 335
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v12, "data_model"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v2}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 342
    .end local v2           #intent:Landroid/content/Intent;
    .end local v10           #webViewMode0:Lcom/didi/common/ui/webview/WebViewModel;
    :sswitch_8
    new-instance v10, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v10}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 343
    .restart local v10       #webViewMode0:Lcom/didi/common/ui/webview/WebViewModel;
    const v12, 0x7f0b0363

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 344
    const-string v12, "http://static.xiaojukeji.com/didialift/hybrid/pages/help/help-homePage.html"

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 345
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 346
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 347
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v12, "data_model"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v2}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    .end local v2           #intent:Landroid/content/Intent;
    .end local v10           #webViewMode0:Lcom/didi/common/ui/webview/WebViewModel;
    :sswitch_9
    new-instance v10, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v10}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 354
    .restart local v10       #webViewMode0:Lcom/didi/common/ui/webview/WebViewModel;
    const v12, 0x7f0b0366

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 355
    sget-object v12, Lcom/didi/common/util/Constant;->SETUP_GUIDEBOOK_FLIER:Ljava/lang/String;

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 356
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 357
    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 358
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "&flier=1&version="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 359
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v12, "data_model"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 361
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v2}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 364
    .end local v2           #intent:Landroid/content/Intent;
    .end local v10           #webViewMode0:Lcom/didi/common/ui/webview/WebViewModel;
    :sswitch_a
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/didi/frame/FragmentMgr;->showCarWxAgentFragment()V

    goto/16 :goto_0

    .line 369
    :sswitch_b
    new-instance v7, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v7}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 370
    .local v7, model:Lcom/didi/common/ui/webview/WebViewModel;
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 371
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 372
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 373
    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getRefundUrl()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    const v13, 0x7f0b042c

    invoke-virtual {v12, v13}, Lcom/didi/common/ui/fragment/SetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 375
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v4, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v4, intent2:Landroid/content/Intent;
    const-string v12, "data_model"

    invoke-virtual {v4, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v4}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 382
    .end local v4           #intent2:Landroid/content/Intent;
    .end local v7           #model:Lcom/didi/common/ui/webview/WebViewModel;
    :sswitch_c
    new-instance v7, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v7}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 383
    .restart local v7       #model:Lcom/didi/common/ui/webview/WebViewModel;
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 384
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 385
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/didi/ddrive/util/DDriveH5Util;->getUserGuideUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    const v13, 0x7f0b0365

    invoke-virtual {v12, v13}, Lcom/didi/common/ui/fragment/SetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 387
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v4, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .restart local v4       #intent2:Landroid/content/Intent;
    const-string v12, "data_model"

    invoke-virtual {v4, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v4}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 393
    .end local v4           #intent2:Landroid/content/Intent;
    .end local v7           #model:Lcom/didi/common/ui/webview/WebViewModel;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v13}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;
    invoke-static {v15}, Lcom/didi/common/ui/fragment/SetupFragment;->access$800(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/didi/common/download/UpdateHelper;->update(Landroid/app/Activity;ZLcom/didi/common/download/UpdateHelper$UpdatedListener;Z)Lthread/Job;

    move-result-object v13

    #setter for: Lcom/didi/common/ui/fragment/SetupFragment;->updatejob:Lthread/Job;
    invoke-static {v12, v13}, Lcom/didi/common/ui/fragment/SetupFragment;->access$702(Lcom/didi/common/ui/fragment/SetupFragment;Lthread/Job;)Lthread/Job;

    goto/16 :goto_0

    .line 396
    :sswitch_e
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-class v13, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v5, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v5, lawIntent:Landroid/content/Intent;
    new-instance v6, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v6}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 398
    .local v6, lawWebModel:Lcom/didi/common/ui/webview/WebViewModel;
    const v12, 0x7f0b03d0

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 399
    sget-object v12, Lcom/didi/common/util/Constant;->LAW_ITEMS_WEB_URL:Ljava/lang/String;

    iput-object v12, v6, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 400
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 401
    const-string v12, "data_model"

    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/common/ui/fragment/SetupFragment$4;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v12, v5}, Lcom/didi/common/ui/fragment/SetupFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x7f080306 -> :sswitch_4
        0x7f080447 -> :sswitch_0
        0x7f08050d -> :sswitch_1
        0x7f080517 -> :sswitch_a
        0x7f08051b -> :sswitch_d
        0x7f080521 -> :sswitch_6
        0x7f080524 -> :sswitch_7
        0x7f080527 -> :sswitch_9
        0x7f08052b -> :sswitch_8
        0x7f08052e -> :sswitch_c
        0x7f080535 -> :sswitch_b
        0x7f080538 -> :sswitch_2
        0x7f08053b -> :sswitch_e
        0x7f08053f -> :sswitch_3
        0x7f080543 -> :sswitch_5
    .end sparse-switch
.end method
