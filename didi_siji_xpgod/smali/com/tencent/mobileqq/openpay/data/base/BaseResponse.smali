.class public abstract Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;
.super Ljava/lang/Object;


# instance fields
.field protected final RET_CODE_SUCESS:I

.field protected final RET_CODE_UNKNOW:I

.field public apiMark:I

.field public apiName:Ljava/lang/String;

.field public retCode:I

.field public retMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v1, -0x98967f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->RET_CODE_UNKNOW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->RET_CODE_SUCESS:I

    iput v1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    return-void
.end method


# virtual methods
.method public abstract checkParams()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_mqqpay_baseresp_retcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    const-string v0, "_mqqpay_baseresp_retmsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retMsg:Ljava/lang/String;

    const-string v0, "_mqqpay_baseapi_apiname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiName:Ljava/lang/String;

    const-string v0, "_mqqpay_baseapi_apimark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiMark:I

    return-void
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_mqqpay_baseresp_retcode"

    iget v1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "_mqqpay_baseresp_retmsg"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_apiname"

    iget-object v1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_apimark"

    iget v1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiMark:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
