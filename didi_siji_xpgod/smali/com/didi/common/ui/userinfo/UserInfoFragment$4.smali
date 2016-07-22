.class Lcom/didi/common/ui/userinfo/UserInfoFragment$4;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/didi/common/ui/component/VerticalViewContainer;Landroid/view/View;I)V
    .locals 11
    .parameter "parant"
    .parameter "view"
    .parameter "positionTag"

    .prologue
    const/16 v10, 0x3f0

    .line 304
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 363
    .end local p2
    :goto_0
    return-void

    .line 307
    .restart local p2
    :cond_0
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 321
    :sswitch_0
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    check-cast p2, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    .end local p2
    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->selectAge(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    invoke-static {v8, p2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$500(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    goto :goto_0

    .line 309
    .restart local p2
    :sswitch_1
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->editAvatar()V
    invoke-static {v8}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$100(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V

    goto :goto_0

    .line 312
    :sswitch_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v5, nickData:Landroid/os/Bundle;
    const-string v8, "nickname"

    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/ui/userinfo/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const/16 v9, 0x3e9

    const/4 v10, 0x1

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->toContainerActivityForResult(IILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10, v5}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$300(Lcom/didi/common/ui/userinfo/UserInfoFragment;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 318
    .end local v5           #nickData:Landroid/os/Bundle;
    :sswitch_3
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    check-cast p2, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    .end local p2
    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->selectSex(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    invoke-static {v8, p2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$400(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    goto :goto_0

    .line 324
    .restart local p2
    :sswitch_4
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v6, signData:Landroid/os/Bundle;
    const-string v8, "usersign"

    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/ui/userinfo/UserInfo;->getSign()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const/16 v9, 0x3ea

    const/4 v10, 0x2

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->toContainerActivityForResult(IILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10, v6}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$300(Lcom/didi/common/ui/userinfo/UserInfoFragment;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 330
    .end local v6           #signData:Landroid/os/Bundle;
    :sswitch_5
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->openUserLevelWeb()V
    invoke-static {v8}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$600(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V

    goto :goto_0

    .line 333
    :sswitch_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v7, tradeData:Landroid/os/Bundle;
    const-string v8, "trade"

    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/ui/userinfo/UserInfo;->getTrade()Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 335
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const/16 v9, 0x3eb

    const/4 v10, 0x3

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->toContainerActivityForResult(IILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10, v7}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$300(Lcom/didi/common/ui/userinfo/UserInfoFragment;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 339
    .end local v7           #tradeData:Landroid/os/Bundle;
    :sswitch_7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v3, jobData:Landroid/os/Bundle;
    const-string v8, "corp"

    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/ui/userinfo/UserInfo;->getCrop()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v8, "employ"

    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/ui/userinfo/UserInfo;->getEmploy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const/16 v9, 0x3ec

    const/4 v10, 0x4

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->toContainerActivityForResult(IILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10, v3}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$300(Lcom/didi/common/ui/userinfo/UserInfoFragment;IILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 346
    .end local v3           #jobData:Landroid/os/Bundle;
    :sswitch_8
    new-instance v4, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v4}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 347
    .local v4, model:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getUserAuthUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 348
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const v9, 0x7f0b023f

    invoke-virtual {v8, v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 349
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    invoke-virtual {v8}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "data_model"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 351
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    invoke-virtual {v8, v2, v10}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 354
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #model:Lcom/didi/common/ui/webview/WebViewModel;
    :sswitch_9
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 355
    .local v1, carInfoModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getCarAuthUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 356
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const v9, 0x7f0b022d

    invoke-virtual {v8, v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 357
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    invoke-virtual {v8}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, carInfoIntent:Landroid/content/Intent;
    const-string v8, "data_model"

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 359
    iget-object v8, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    invoke-virtual {v8, v0, v10}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b01d8 -> :sswitch_0
        0x7f0b01ea -> :sswitch_1
        0x7f0b0203 -> :sswitch_6
        0x7f0b022d -> :sswitch_9
        0x7f0b023f -> :sswitch_8
        0x7f0b0265 -> :sswitch_7
        0x7f0b03d9 -> :sswitch_5
        0x7f0b0409 -> :sswitch_4
        0x7f0b0419 -> :sswitch_2
        0x7f0b04f4 -> :sswitch_3
    .end sparse-switch
.end method
