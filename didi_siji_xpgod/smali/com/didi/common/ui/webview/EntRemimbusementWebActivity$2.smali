.class Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$2;
.super Ljava/lang/Object;
.source "EntRemimbusementWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$2;->this$0:Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 40
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 41
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v2, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$2;->this$0:Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    const v3, 0x7f0b042e

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 42
    sget-object v2, Lcom/didi/common/util/Constant;->ENTRIPRISE_REMIMBURSEMENT_RULES:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$2;->this$0:Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$2;->this$0:Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method
