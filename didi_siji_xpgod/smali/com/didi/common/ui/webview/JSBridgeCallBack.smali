.class public interface abstract Lcom/didi/common/ui/webview/JSBridgeCallBack;
.super Ljava/lang/Object;
.source "JSBridgeCallBack.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract hideEntrance()V
.end method

.method public abstract invokeEntrance()V
.end method

.method public abstract onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V
.end method

.method public abstract refresh()V
.end method

.method public abstract selectPic(III)V
.end method

.method public abstract setWebViewToolData(Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract showEntrance()V
.end method

.method public abstract showShareDialogEntrance()V
.end method

.method public abstract showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
.end method

.method public abstract webRedirect(Lcom/didi/common/ui/webview/WebViewToolModel;)V
.end method
