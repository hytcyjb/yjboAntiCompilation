.class Lcom/didi/common/ui/webview/WebViewToolDialog$3;
.super Ljava/lang/Object;
.source "WebViewToolDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/WebViewToolDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/didi/common/ui/webview/JSBridgeCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebViewToolDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$3;->this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;

    iput-object p2, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$3;->this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    #calls: Lcom/didi/common/ui/webview/WebViewToolDialog;->dissmiss(Landroid/app/AlertDialog;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/common/ui/webview/WebViewToolDialog;->access$000(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 123
    return-void
.end method
