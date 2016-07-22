.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$1;
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
        "Lcom/didi/beatles/model/BtsWeixinToken;",
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
    .line 128
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    check-cast p1, Lcom/didi/beatles/model/BtsWeixinToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$1;->onFinish(Lcom/didi/beatles/model/BtsWeixinToken;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/BtsWeixinToken;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsWeixinToken;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weixin access_token recv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsWeixinToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 138
    const-string v1, "https://api.weixin.qq.com/sns/userinfo?access_token=%s&openid=%s&lang=zh_CN"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/didi/beatles/model/BtsWeixinToken;->access_token:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/didi/beatles/model/BtsWeixinToken;->openid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    iget-object v1, v1, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->userInfoListener:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v0, v1}, Lcom/didi/beatles/net/BtsRequest;->getWeixinUserInfo(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weixin getToken success. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 150
    .end local v0           #url:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    goto :goto_0

    .line 146
    :cond_1
    const-string v1, "weixin broadcast recv failed. "

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->onWeixinAuthFailed()V
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$000(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    goto :goto_1
.end method
