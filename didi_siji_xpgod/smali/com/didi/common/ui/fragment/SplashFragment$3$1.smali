.class Lcom/didi/common/ui/fragment/SplashFragment$3$1;
.super Lcom/didi/common/net/ResponseListener;
.source "SplashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/SplashFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/im/model/IMCommons;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/SplashFragment$3;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SplashFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SplashFragment$3$1;->this$1:Lcom/didi/common/ui/fragment/SplashFragment$3;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    check-cast p1, Lcom/didi/im/model/IMCommons;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/SplashFragment$3$1;->onFinish(Lcom/didi/im/model/IMCommons;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMCommons;)V
    .locals 2
    .parameter "imCommons"

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/didi/im/model/IMCommons;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 111
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/im/model/IMCommons;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCommonVresion(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/didi/im/db/IMDBDataHelper;->insertCommonSentence(Lcom/didi/im/model/IMCommons;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 115
    return-void
.end method
