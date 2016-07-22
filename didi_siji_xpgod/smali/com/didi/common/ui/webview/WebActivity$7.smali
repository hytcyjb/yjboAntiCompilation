.class Lcom/didi/common/ui/webview/WebActivity$7;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/ShareView$ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/WebActivity;->showShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/WebActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity$7;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    iput-object p2, p0, Lcom/didi/common/ui/webview/WebActivity$7;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$7;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 693
    return-void
.end method
