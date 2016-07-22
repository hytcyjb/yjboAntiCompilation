.class public Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;
.super Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;


# instance fields
.field private a:Ljava/lang/String;

.field public callbackUrl:Ljava/lang/String;

.field public payTime:Ljava/lang/String;

.field public serialNumber:Ljava/lang/String;

.field public spData:Ljava/lang/String;

.field public totalFee:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public checkParams()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retCode:I

    const v2, -0x98967f

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isPayByWeChat()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->transactionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->payTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->totalFee:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "_mqqpay_payresp_paychanneltype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->a:Ljava/lang/String;

    const-string v0, "_mqqpay_payresp_transactionid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->transactionId:Ljava/lang/String;

    const-string v0, "_mqqpay_payresp_paytime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->payTime:Ljava/lang/String;

    const-string v0, "_mqqpay_payresp_totalfee"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->totalFee:Ljava/lang/String;

    const-string v0, "_mqqpay_payresp_callbackurl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->callbackUrl:Ljava/lang/String;

    const-string v0, "_mqqpay_payresp_spdata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->spData:Ljava/lang/String;

    const-string v0, "_mqqpay_payapi_serialnumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public isPayByWeChat()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->a:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_mqqpay_payresp_paychanneltype"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_payresp_transactionid"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_payresp_paytime"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->payTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_payresp_totalfee"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->totalFee:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_payresp_callbackurl"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->callbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_payresp_spdata"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->spData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_payapi_serialnumber"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
