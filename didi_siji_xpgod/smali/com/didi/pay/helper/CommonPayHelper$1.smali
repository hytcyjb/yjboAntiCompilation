.class Lcom/didi/pay/helper/CommonPayHelper$1;
.super Ljava/lang/Object;
.source "CommonPayHelper.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/pay/helper/CommonPayHelper;->addJsPayByWX(Lcom/didi/common/ui/webview/JavascriptBridge;Ljava/lang/String;Lcom/didi/pay/common/bean/CommonPayRespListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/pay/helper/CommonPayHelper;

.field final synthetic val$payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;


# direct methods
.method constructor <init>(Lcom/didi/pay/helper/CommonPayHelper;Lcom/didi/pay/common/bean/CommonPayRespListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/didi/pay/helper/CommonPayHelper$1;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    iput-object p2, p0, Lcom/didi/pay/helper/CommonPayHelper$1;->val$payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    const/4 v3, 0x0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addJsPayByWX execute jsonObject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addJsPayByWX jsonObject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-object v3

    .line 112
    :cond_0
    new-instance v0, Lcom/didi/pay/common/bean/PrePayParam;

    invoke-direct {v0}, Lcom/didi/pay/common/bean/PrePayParam;-><init>()V

    .line 113
    .local v0, param:Lcom/didi/pay/common/bean/PrePayParam;
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/pay/common/bean/PrePayParam;->appid:Ljava/lang/String;

    .line 114
    const-string v1, "partnerid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/pay/common/bean/PrePayParam;->partnerid:Ljava/lang/String;

    .line 115
    const-string v1, "prepayid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/pay/common/bean/PrePayParam;->prepayId:Ljava/lang/String;

    .line 116
    const-string v1, "noncestr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/pay/common/bean/PrePayParam;->nonceStr:Ljava/lang/String;

    .line 117
    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/pay/common/bean/PrePayParam;->timestamp:Ljava/lang/String;

    .line 118
    const-string v1, "package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/pay/common/bean/PrePayParam;->packageStr:Ljava/lang/String;

    .line 119
    const-string v1, "sign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/pay/common/bean/PrePayParam;->sign:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper$1;->this$0:Lcom/didi/pay/helper/CommonPayHelper;

    iget-object v2, p0, Lcom/didi/pay/helper/CommonPayHelper$1;->val$payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    invoke-virtual {v1, v0, v2}, Lcom/didi/pay/helper/CommonPayHelper;->payByWX(Lcom/didi/pay/common/bean/PrePayParam;Lcom/didi/pay/common/bean/CommonPayRespListener;)V

    goto :goto_0
.end method
