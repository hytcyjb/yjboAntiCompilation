.class Lcom/didi/common/helper/PopupHelper$2;
.super Ljava/lang/Object;
.source "PopupHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/PopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/PopupHelper;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/PopupHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/didi/common/helper/PopupHelper$2;->this$0:Lcom/didi/common/helper/PopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 508
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper$2;->this$0:Lcom/didi/common/helper/PopupHelper;

    iget-object v3, p0, Lcom/didi/common/helper/PopupHelper$2;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->oldPosition:I
    invoke-static {v3}, Lcom/didi/common/helper/PopupHelper;->access$600(Lcom/didi/common/helper/PopupHelper;)I

    move-result v3

    #calls: Lcom/didi/common/helper/PopupHelper;->getCurrentWebUrl(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/common/helper/PopupHelper;->access$800(Lcom/didi/common/helper/PopupHelper;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>(Z)V

    .line 510
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper$2;->this$0:Lcom/didi/common/helper/PopupHelper;

    iget-object v3, p0, Lcom/didi/common/helper/PopupHelper$2;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->oldPosition:I
    invoke-static {v3}, Lcom/didi/common/helper/PopupHelper;->access$600(Lcom/didi/common/helper/PopupHelper;)I

    move-result v3

    #calls: Lcom/didi/common/helper/PopupHelper;->getCurrentWebUrl(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/common/helper/PopupHelper;->access$800(Lcom/didi/common/helper/PopupHelper;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 511
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 514
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 516
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    return-void
.end method
