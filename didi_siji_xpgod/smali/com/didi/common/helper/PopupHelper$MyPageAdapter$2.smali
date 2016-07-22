.class Lcom/didi/common/helper/PopupHelper$MyPageAdapter$2;
.super Ljava/lang/Object;
.source "PopupHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/PopupHelper$MyPageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$2;->this$1:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 359
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 360
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const v2, 0x7f0b0557

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 361
    sget-object v2, Lcom/didi/common/util/Constant;->USE_ITEMS_WEB_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 365
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 367
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$2;->this$1:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    iget-object v2, v2, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/didi/common/helper/PopupHelper;->access$400(Lcom/didi/common/helper/PopupHelper;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$2;->this$1:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    iget-object v2, v2, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/didi/common/helper/PopupHelper;->access$400(Lcom/didi/common/helper/PopupHelper;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$2;->this$1:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    iget-object v2, v2, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/didi/common/helper/PopupHelper;->access$400(Lcom/didi/common/helper/PopupHelper;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 371
    :cond_0
    return-void
.end method
