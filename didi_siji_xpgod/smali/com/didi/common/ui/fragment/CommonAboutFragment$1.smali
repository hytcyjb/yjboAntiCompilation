.class Lcom/didi/common/ui/fragment/CommonAboutFragment$1;
.super Ljava/lang/Object;
.source "CommonAboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonAboutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 83
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 84
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b055d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/common/util/Constant;->VERSION_INTRODUCTION_WEB_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/fragment/CommonAboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method
