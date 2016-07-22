.class public Lcn/sharesdk/onekeyshare/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 5
    .parameter "context"
    .parameter "model"
    .parameter "listener"

    .prologue
    .line 23
    :try_start_0
    sget-object v3, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    iget-object v4, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 25
    .local v0, onekeyShare:Lcn/sharesdk/onekeyshare/OnekeyShare;
    invoke-virtual {v0, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 26
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V

    .line 106
    .end local v0           #onekeyShare:Lcn/sharesdk/onekeyshare/OnekeyShare;
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v2, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v2}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 31
    .local v2, sp:Lcn/sharesdk/framework/Platform$ShareParams;
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitle(Ljava/lang/String;)V

    .line 32
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 33
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 34
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitleUrl(Ljava/lang/String;)V

    .line 35
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    .line 36
    const/4 v1, 0x0

    .line 46
    .local v1, plat:Lcn/sharesdk/framework/Platform;
    sget-object v3, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    iget-object v4, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 47
    sget-object v3, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {p0, v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 59
    :cond_2
    :goto_1
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_a

    .line 60
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    .line 66
    :cond_4
    :goto_2
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 67
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 75
    :cond_5
    :goto_3
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 76
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    .line 81
    :cond_6
    if-eqz v1, :cond_0

    .line 82
    if-nez p2, :cond_d

    .line 83
    new-instance v3, Lcn/sharesdk/onekeyshare/ShareUtil$1;

    invoke-direct {v3}, Lcn/sharesdk/onekeyshare/ShareUtil$1;-><init>()V

    invoke-virtual {v1, v3}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 102
    :goto_4
    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_0

    .line 104
    .end local v1           #plat:Lcn/sharesdk/framework/Platform;
    .end local v2           #sp:Lcn/sharesdk/framework/Platform$ShareParams;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 48
    .restart local v1       #plat:Lcn/sharesdk/framework/Platform;
    .restart local v2       #sp:Lcn/sharesdk/framework/Platform$ShareParams;
    :cond_7
    sget-object v3, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    iget-object v4, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 49
    sget-object v3, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {p0, v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    goto :goto_1

    .line 50
    :cond_8
    sget-object v3, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    iget-object v4, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 51
    sget-object v3, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {p0, v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    goto :goto_1

    .line 52
    :cond_9
    sget-object v3, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    iget-object v4, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    sget-object v3, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {p0, v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    goto :goto_1

    .line 62
    :cond_a
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 63
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    goto :goto_2

    .line 68
    :cond_b
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 69
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setImagePath(Ljava/lang/String;)V

    goto :goto_3

    .line 70
    :cond_c
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 71
    iget-object v3, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageData(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 100
    :cond_d
    invoke-virtual {v1, p2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method
