.class Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$2;
.super Ljava/lang/Object;
.source "CommonBindFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$2;->this$2:Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-static {}, Lcom/didi/common/config/PhoneStatusConfig;->getInstance()Lcom/didi/common/config/PhoneStatusConfig;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/PhoneStatusConfig;->setPhoneBingWeiboStatus(Ljava/lang/String;Z)V

    .line 136
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const-string v1, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1$2;->this$2:Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonBindFragment$2;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonBindFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonBindFragment;->updateButtonState()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$000(Lcom/didi/common/ui/fragment/CommonBindFragment;)V

    .line 138
    return-void
.end method
