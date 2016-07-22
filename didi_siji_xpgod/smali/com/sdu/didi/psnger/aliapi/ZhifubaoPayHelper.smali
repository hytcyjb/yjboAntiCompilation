.class public Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;
.super Ljava/lang/Object;
.source "ZhifubaoPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;->onResp(Ljava/lang/String;)V

    return-void
.end method

.method public static checkZhifubaoPaySupport(Landroid/app/Activity;Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;)V
    .locals 1
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 24
    new-instance v0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;-><init>(Landroid/app/Activity;Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;)V

    invoke-virtual {v0}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;->start()Lthread/Job;

    .line 44
    return-void
.end method

.method public static getSDKVersion(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .parameter "activity"

    .prologue
    .line 50
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 51
    .local v0, payTask:Lcom/alipay/sdk/app/PayTask;
    invoke-virtual {v0}, Lcom/alipay/sdk/app/PayTask;->getVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static onResp(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 110
    new-instance v5, Lcom/sdu/didi/psnger/aliapi/PayResult;

    invoke-direct {v5, p0}, Lcom/sdu/didi/psnger/aliapi/PayResult;-><init>(Ljava/lang/String;)V

    .line 113
    .local v5, payResult:Lcom/sdu/didi/psnger/aliapi/PayResult;
    :try_start_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v2

    .line 115
    .local v2, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    instance-of v6, v2, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    if-eqz v6, :cond_1

    .line 116
    move-object v0, v2

    check-cast v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    move-object v3, v0

    .line 117
    .local v3, payFragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    invoke-virtual {v3, v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onZhifubaoPay(Lcom/sdu/didi/psnger/aliapi/PayResult;)V

    .line 134
    .end local v2           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    .end local v3           #payFragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v2       #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_1
    instance-of v6, v2, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    if-eqz v6, :cond_0

    .line 119
    move-object v0, v2

    check-cast v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    move-object v3, v0

    .line 120
    .local v3, payFragment:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
    new-instance v4, Lcom/didi/pay/common/bean/CommonPayResp;

    invoke-direct {v4}, Lcom/didi/pay/common/bean/CommonPayResp;-><init>()V

    .line 121
    .local v4, payResp:Lcom/didi/pay/common/bean/CommonPayResp;
    iget-object v6, v5, Lcom/sdu/didi/psnger/aliapi/PayResult;->resultStatus:Ljava/lang/String;

    const-string v7, "9000"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v5, Lcom/sdu/didi/psnger/aliapi/PayResult;->resultStatus:Ljava/lang/String;

    const-string v7, "8000"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrno(I)V

    .line 127
    :goto_1
    iget-object v6, v5, Lcom/sdu/didi/psnger/aliapi/PayResult;->result:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrmsg(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPay(Lcom/didi/pay/common/bean/CommonPayResp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v2           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    .end local v3           #payFragment:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
    .end local v4           #payResp:Lcom/didi/pay/common/bean/CommonPayResp;
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    .restart local v3       #payFragment:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
    .restart local v4       #payResp:Lcom/didi/pay/common/bean/CommonPayResp;
    :cond_3
    const/4 v6, -0x2

    :try_start_1
    invoke-virtual {v4, v6}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrno(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static sendZhifubaoPayRequest(Landroid/app/Activity;Lcom/didi/common/model/PayParams;)V
    .locals 2
    .parameter "activity"
    .parameter "payParams"

    .prologue
    .line 60
    new-instance v0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;-><init>(Landroid/app/Activity;Lcom/didi/common/model/PayParams;)V

    .line 77
    .local v0, run:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method public static sendZhifubaoPayRequest(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "payParams"

    .prologue
    .line 87
    new-instance v0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 104
    .local v0, run:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method
