.class Lcom/didi/common/ui/fragment/CommonUserAgreeFragment$1;
.super Ljava/lang/Object;
.source "CommonUserAgreeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 76
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 77
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void

    .line 82
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    const v2, 0x7f0b051c

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 83
    sget-object v2, Lcom/didi/common/util/Constant;->SPEICAL_TIPS_WEB_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_2
    const v2, 0x7f0b0424

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 90
    sget-object v2, Lcom/didi/common/util/Constant;->NOUN_DEFINED_WEB_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_3
    const v2, 0x7f0b04bf

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 97
    sget-object v2, Lcom/didi/common/util/Constant;->RISK_NOTIFY_WEB_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    goto :goto_0

    .line 104
    :pswitch_4
    const v2, 0x7f0b051b

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 105
    sget-object v2, Lcom/didi/common/util/Constant;->SPECIAL_STATEMENT_WEB_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f08024e
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
