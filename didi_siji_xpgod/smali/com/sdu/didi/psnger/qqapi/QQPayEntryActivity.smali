.class public Lcom/sdu/didi/psnger/qqapi/QQPayEntryActivity;
.super Landroid/app/Activity;
.source "QQPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/sdu/didi/psnger/qqapi/QQPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)V

    .line 22
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/sdu/didi/psnger/qqapi/QQPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 28
    invoke-virtual {p0}, Lcom/sdu/didi/psnger/qqapi/QQPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)V

    .line 29
    return-void
.end method

.method public onOpenResponse(Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 34
    const/4 v2, 0x0

    .local v2, success:Z
    move-object v1, p1

    .line 35
    check-cast v1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    .line 37
    .local v1, payResponse:Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    if-eqz v3, :cond_0

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " apiName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->apiName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " serialnumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->serialNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSucess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, message:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const/4 v2, 0x1

    .line 52
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    iget v3, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retCode:I

    invoke-virtual {p0, v3, v2, p1}, Lcom/sdu/didi/psnger/qqapi/QQPayEntryActivity;->onResp(IZLcom/tencent/mobileqq/openpay/data/base/BaseResponse;)V

    .line 53
    invoke-virtual {p0}, Lcom/sdu/didi/psnger/qqapi/QQPayEntryActivity;->finish()V

    .line 54
    return-void
.end method

.method public onResp(IZLcom/tencent/mobileqq/openpay/data/base/BaseResponse;)V
    .locals 6
    .parameter "retCode"
    .parameter "success"
    .parameter "response"

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v2

    .line 66
    .local v2, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    instance-of v5, v2, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    if-eqz v5, :cond_1

    .line 67
    move-object v0, v2

    check-cast v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    move-object v3, v0

    .line 68
    .local v3, payFragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    invoke-virtual {v3, p1, p2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onQQPay(IZ)V

    .line 80
    .end local v2           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    .end local v3           #payFragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v2       #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_1
    instance-of v5, v2, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    if-eqz v5, :cond_0

    .line 70
    move-object v0, v2

    check-cast v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    move-object v3, v0

    .line 71
    .local v3, payFragment:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
    new-instance v4, Lcom/didi/pay/common/bean/CommonPayResp;

    invoke-direct {v4}, Lcom/didi/pay/common/bean/CommonPayResp;-><init>()V

    .line 72
    .local v4, payResp:Lcom/didi/pay/common/bean/CommonPayResp;
    iget v5, p3, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    invoke-virtual {v4, v5}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrno(I)V

    .line 73
    iget-object v5, p3, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrmsg(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, v4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPay(Lcom/didi/pay/common/bean/CommonPayResp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v2           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    .end local v3           #payFragment:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
    .end local v4           #payResp:Lcom/didi/pay/common/bean/CommonPayResp;
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
