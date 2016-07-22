.class Lcom/didi/beatles/business/login/BtsLoginActivity$23;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$23;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1096
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1097
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const v2, 0x7f0b04ea

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1098
    sget-object v2, Lcom/didi/common/util/Constant;->TAXI_SERVICE_TERM_WEB_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1099
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$23;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1101
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$23;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-virtual {v2, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 1102
    return-void
.end method
