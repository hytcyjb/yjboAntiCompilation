.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$2;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsWeixinLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsWeixinUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    check-cast p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$2;->onFinish(Lcom/didi/beatles/model/BtsWeixinUserInfo;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/BtsWeixinUserInfo;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WxMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 157
    const-string v0, "BtsWeixinUserInfo recv."

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsWeixinUserInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtsWeixinUserInfo recv. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->headUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->onGotWeixinUserInfo(Lcom/didi/beatles/model/BtsWeixinUserInfo;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$100(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Lcom/didi/beatles/model/BtsWeixinUserInfo;)V

    .line 173
    :goto_1
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, "BtsWeixinUserInfo recv failed."

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->onWeixinAuthFailed()V
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$000(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    goto :goto_1
.end method
