.class Lcom/didi/common/ui/webview/WalletWebActivity$2;
.super Ljava/lang/Object;
.source "WalletWebActivity.java"

# interfaces
.implements Lcom/didi/pay/common/bean/CommonPayRespListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/WalletWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/pay/common/bean/CommonPayRespListener",
        "<",
        "Lcom/tencent/mm/sdk/modelbase/BaseResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/WalletWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WalletWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/common/ui/webview/WalletWebActivity$2;->this$0:Lcom/didi/common/ui/webview/WalletWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayResopnse(Lcom/didi/pay/common/bean/CommonPayResp;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/pay/common/bean/CommonPayResp",
            "<",
            "Lcom/tencent/mm/sdk/modelbase/BaseResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, cResp:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    if-nez p1, :cond_0

    .line 75
    const v3, 0x7f0b017d

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 109
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/didi/pay/common/bean/CommonPayResp;->getResp()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .line 79
    .local v1, resp:Lcom/tencent/mm/sdk/modelbase/BaseResp;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v2, retJson:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "errno"

    invoke-virtual {p1}, Lcom/didi/pay/common/bean/CommonPayResp;->getErrno()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v3, "wxVersion"

    invoke-virtual {p1}, Lcom/didi/pay/common/bean/CommonPayResp;->getWxVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    if-eqz v1, :cond_1

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPayResopnse errCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",errMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",openId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",transaction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    const-string v3, "errCode"

    iget v4, v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v3, "errStr"

    iget-object v4, v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v3, "type"

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v3, "returnKey"

    iget-object v4, v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget v3, v1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    .line 108
    :cond_1
    :goto_1
    sget-object v3, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v4, "paybackWXA"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/didi/common/ui/webview/JavascriptBridge;->callH5Method(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :pswitch_0
    const v3, 0x7f0b0130

    :try_start_1
    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPayResopnse err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_1
    const v3, 0x7f0b012f

    :try_start_2
    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_1

    .line 100
    :pswitch_2
    const v3, 0x7f0b012e

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
