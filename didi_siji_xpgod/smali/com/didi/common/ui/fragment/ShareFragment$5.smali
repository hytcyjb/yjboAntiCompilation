.class Lcom/didi/common/ui/fragment/ShareFragment$5;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$5;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 328
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 329
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$5;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mTabGroup:Lcom/didi/common/ui/component/TabGroup;
    invoke-static {v4}, Lcom/didi/common/ui/fragment/ShareFragment;->access$100(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/component/TabGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/ui/component/TabGroup;->getCheckedTabButtonId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 357
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 331
    :pswitch_1
    sget-object v4, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v4}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 332
    .local v2, platform:Lcn/sharesdk/framework/Platform;
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$5;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    iget-object v4, v4, Lcom/didi/common/ui/fragment/ShareFragment;->mPlatformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 333
    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->authorize()V

    goto :goto_0

    .line 342
    .end local v2           #platform:Lcn/sharesdk/framework/Platform;
    :pswitch_2
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    const v5, 0x7f0b0535

    invoke-virtual {v4, v5}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, content:Ljava/lang/String;
    new-instance v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v4, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v4}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v4

    invoke-direct {v1, v4}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 344
    .local v1, model:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$5;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-virtual {v4}, Lcom/didi/common/ui/fragment/ShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 345
    iput-object v0, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 346
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$5;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-virtual {v4}, Lcom/didi/common/ui/fragment/ShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c1

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/didi/common/util/Constant;->URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "share"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, url:Ljava/lang/String;
    iput-object v3, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 351
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$5;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-virtual {v4}, Lcom/didi/common/ui/fragment/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/common/ui/fragment/ShareFragment$5;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/ShareFragment;->mPlatformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v4, v1, v5}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x7f08054f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
