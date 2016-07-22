.class public interface abstract Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
.super Ljava/lang/Object;
.source "CommonWebViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/CommonWebViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebViewCallBack"
.end annotation


# virtual methods
.method public abstract changeTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onGoBack()V
.end method

.method public abstract onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onReceiveError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method
