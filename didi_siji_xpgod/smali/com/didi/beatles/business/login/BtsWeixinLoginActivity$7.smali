.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$7;
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
        "Lcom/didi/beatles/model/BtsBaseObject;",
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
    .line 306
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$7;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "save weixin role sucess!"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 314
    :goto_0
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    .line 315
    return-void

    .line 311
    :cond_0
    const-string v0, "save weixin role failed!"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method
