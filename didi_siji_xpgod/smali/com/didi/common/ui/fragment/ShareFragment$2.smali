.class Lcom/didi/common/ui/fragment/ShareFragment$2;
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
    .line 191
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$2;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 196
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 197
    sget-object v2, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 198
    .local v0, platform:Lcn/sharesdk/framework/Platform;
    iget-object v2, p0, Lcom/didi/common/ui/fragment/ShareFragment$2;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    iget-object v2, v2, Lcom/didi/common/ui/fragment/ShareFragment;->mPlatformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 200
    iget-object v2, p0, Lcom/didi/common/ui/fragment/ShareFragment$2;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mTabGroup:Lcom/didi/common/ui/component/TabGroup;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/ShareFragment;->access$100(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/component/TabGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/component/TabGroup;->getCheckedTabButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 223
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    const/4 v1, 0x0

    .line 205
    .local v1, site:I
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->authorize()V

    .line 208
    const v2, 0x7f0b03a8

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/fragment/ShareFragment$2;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #calls: Lcom/didi/common/ui/fragment/ShareFragment;->invite(I)V
    invoke-static {v2, v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$200(Lcom/didi/common/ui/fragment/ShareFragment;I)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x7f08054f
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
