.class Lcom/didi/game/activity/GameActivity$7;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JSBridgeCallBack;


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
    .line 585
    iput-object p1, p0, Lcom/didi/game/activity/GameActivity$7;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 642
    return-void
.end method

.method public hideEntrance()V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method public invokeEntrance()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V
    .locals 0
    .parameter "webViewModel"

    .prologue
    .line 625
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public selectPic(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "qualtity"

    .prologue
    .line 630
    return-void
.end method

.method public setWebViewToolData(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "entranceIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    return-void
.end method

.method public showEntrance()V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public showShareDialogEntrance()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    .locals 3
    .parameter "model"

    .prologue
    const/4 v2, 0x0

    .line 593
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity$7;->this$0:Lcom/didi/game/activity/GameActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 594
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    iget-object v1, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    const-string v0, "h5game_share_wechatmoments"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    iget-object v1, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    const-string v0, "h5game_share_wechat"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_2
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    iget-object v1, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    const-string v0, "h5game_share_QQ"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_3
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    iget-object v1, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 601
    const-string v0, "h5game_share_qzone"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_4
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    iget-object v1, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const-string v0, "h5game_share_sinaweibo"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public webRedirect(Lcom/didi/common/ui/webview/WebViewToolModel;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 589
    return-void
.end method
