.class Lcom/didi/common/ui/webview/WebViewToolDialog$2;
.super Ljava/lang/Object;
.source "WebViewToolDialog.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

.field final synthetic val$linearLayoutPoints:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebViewToolDialog;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$2;->this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;

    iput-object p2, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$2;->val$linearLayoutPoints:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 106
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 101
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$2;->this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$2;->val$linearLayoutPoints:Landroid/widget/LinearLayout;

    #calls: Lcom/didi/common/ui/webview/WebViewToolDialog;->setSelectedPoi(ILandroid/widget/LinearLayout;)V
    invoke-static {v0, p1, v1}, Lcom/didi/common/ui/webview/WebViewToolDialog;->access$100(Lcom/didi/common/ui/webview/WebViewToolDialog;ILandroid/widget/LinearLayout;)V

    .line 96
    return-void
.end method
