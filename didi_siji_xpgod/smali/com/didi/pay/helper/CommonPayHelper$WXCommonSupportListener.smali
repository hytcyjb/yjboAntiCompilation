.class Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;
.super Ljava/lang/Object;
.source "CommonPayHelper.java"

# interfaces
.implements Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/pay/helper/CommonPayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WXCommonSupportListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/pay/helper/CommonPayHelper;


# direct methods
.method constructor <init>(Lcom/didi/pay/helper/CommonPayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginCheckState()I
    .locals 1

    .prologue
    .line 389
    const/16 v0, 0xe

    return v0
.end method

.method public doCheck(Lcom/didi/game/model/DiDiResult;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 397
    iget-object v2, p0, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    #getter for: Lcom/didi/pay/helper/CommonPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v2}, Lcom/didi/pay/helper/CommonPayHelper;->access$200(Lcom/didi/pay/helper/CommonPayHelper;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->onNotInstalled(Lcom/didi/game/model/DiDiResult;)V

    .line 408
    :goto_0
    return v0

    .line 402
    :cond_0
    invoke-static {}, Lcom/didi/pay/helper/CommonPayHelper;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/didi/game/model/DiDiResult;->setResult(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/didi/pay/helper/CommonPayHelper;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5.3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 404
    invoke-virtual {p0, p1}, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->onLowVersion(Lcom/didi/game/model/DiDiResult;)V

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->onSupported(Lcom/didi/game/model/DiDiResult;Z)V

    move v0, v1

    .line 408
    goto :goto_0
.end method

.method public onLowVersion(Lcom/didi/game/model/DiDiResult;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 441
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lcom/didi/game/model/DiDiResult;->setResponseFlag(I)V

    .line 443
    :cond_0
    new-instance v0, Lcom/didi/pay/common/bean/CommonPayResp;

    invoke-direct {v0}, Lcom/didi/pay/common/bean/CommonPayResp;-><init>()V

    .line 444
    .local v0, cPayResp:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrno(I)V

    .line 445
    invoke-virtual {p1}, Lcom/didi/game/model/DiDiResult;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/pay/common/bean/CommonPayResp;->setWxVersion(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    invoke-virtual {v1, v0}, Lcom/didi/pay/helper/CommonPayHelper;->onWXPayResponse(Lcom/didi/pay/common/bean/CommonPayResp;)V

    .line 447
    return-void
.end method

.method public onNotInstalled(Lcom/didi/game/model/DiDiResult;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 430
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/didi/game/model/DiDiResult;->setResponseFlag(I)V

    .line 432
    :cond_0
    new-instance v0, Lcom/didi/pay/common/bean/CommonPayResp;

    invoke-direct {v0}, Lcom/didi/pay/common/bean/CommonPayResp;-><init>()V

    .line 433
    .local v0, cPayResp:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrno(I)V

    .line 434
    invoke-virtual {p1}, Lcom/didi/game/model/DiDiResult;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/pay/common/bean/CommonPayResp;->setWxVersion(Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    invoke-virtual {v1, v0}, Lcom/didi/pay/helper/CommonPayHelper;->onWXPayResponse(Lcom/didi/pay/common/bean/CommonPayResp;)V

    .line 436
    return-void
.end method

.method public onSupported(Lcom/didi/game/model/DiDiResult;Z)V
    .locals 4
    .parameter
    .parameter "isDoPay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 414
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Lcom/didi/game/model/DiDiResult;->setResponseFlag(I)V

    .line 416
    :cond_0
    if-eqz p2, :cond_1

    .line 417
    invoke-virtual {p1}, Lcom/didi/game/model/DiDiResult;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 419
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    invoke-static {v1}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setCommonPayHelper(Lcom/didi/pay/helper/CommonPayHelper;)V

    .line 423
    :goto_0
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    iget-object v2, p0, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    #getter for: Lcom/didi/pay/helper/CommonPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v2}, Lcom/didi/pay/helper/CommonPayHelper;->access$200(Lcom/didi/pay/helper/CommonPayHelper;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    #getter for: Lcom/didi/pay/helper/CommonPayHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/didi/pay/helper/CommonPayHelper;->access$400(Lcom/didi/pay/helper/CommonPayHelper;)Landroid/content/Context;

    move-result-object v3

    check-cast v0, Lcom/didi/pay/common/bean/PrePayParam;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v1, v2, v3, v0}, Lcom/didi/pay/helper/CommonPayHelper;->sendWXPayRequest(Lcom/tencent/mm/sdk/openapi/IWXAPI;Landroid/content/Context;Lcom/didi/pay/common/bean/PrePayParam;)V

    .line 425
    :cond_1
    return-void

    .line 421
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setCommonPayHelper(Lcom/didi/pay/helper/CommonPayHelper;)V

    goto :goto_0
.end method
