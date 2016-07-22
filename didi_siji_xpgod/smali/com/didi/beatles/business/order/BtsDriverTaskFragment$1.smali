.class Lcom/didi/beatles/business/order/BtsDriverTaskFragment$1;
.super Ljava/lang/Object;
.source "BtsDriverTaskFragment.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JSBridgeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverTaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public hideEntrance()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public invokeEntrance()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V
    .locals 0
    .parameter "webViewModel"

    .prologue
    .line 125
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$000(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->reload()V

    .line 120
    return-void
.end method

.method public selectPic(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "qualtity"

    .prologue
    .line 130
    return-void
.end method

.method public setWebViewToolData(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "entranceIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    return-void
.end method

.method public showEntrance()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public showShareDialogEntrance()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 99
    return-void
.end method

.method public webRedirect(Lcom/didi/common/ui/webview/WebViewToolModel;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 94
    return-void
.end method
