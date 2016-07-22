.class Lcom/didi/common/ui/fragment/CommonBindFragment$2;
.super Ljava/lang/Object;
.source "CommonBindFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonBindFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonBindFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 108
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 109
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 110
    .local v0, platform:Lcn/sharesdk/framework/Platform;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080075

    if-ne v1, v2, :cond_0

    .line 111
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->removeAccount()V

    .line 113
    invoke-static {}, Lcom/didi/common/config/PhoneStatusConfig;->getInstance()Lcom/didi/common/config/PhoneStatusConfig;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/PhoneStatusConfig;->setPhoneBingWeiboStatus(Ljava/lang/String;Z)V

    .line 114
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonBindFragment;->updateButtonState()V
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$000(Lcom/didi/common/ui/fragment/CommonBindFragment;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v1, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;-><init>(Lcom/didi/common/ui/fragment/CommonBindFragment$2;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 154
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->authorize()V

    goto :goto_0
.end method
