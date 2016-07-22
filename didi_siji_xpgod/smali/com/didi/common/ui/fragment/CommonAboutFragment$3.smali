.class Lcom/didi/common/ui/fragment/CommonAboutFragment$3;
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
    .line 103
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;

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

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 110
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 111
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const v2, 0x7f0b0296

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 112
    sget-object v2, Lcom/didi/common/util/Constant;->TAXI_USER_ITEMS_WEB_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/fragment/CommonAboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
