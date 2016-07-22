.class Lcom/didi/car/ui/activity/CarCouponsListActivity$2;
.super Ljava/lang/Object;
.source "CarCouponsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarCouponsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #getter for: Lcom/didi/car/ui/activity/CarCouponsListActivity;->from:I
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$100(Lcom/didi/car/ui/activity/CarCouponsListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_share_love_button_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #calls: Lcom/didi/car/ui/activity/CarCouponsListActivity;->showShareView()V
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$200(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #getter for: Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$300(Lcom/didi/car/ui/activity/CarCouponsListActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->MY_TICKET_RULES_WEB_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    goto :goto_0
.end method
