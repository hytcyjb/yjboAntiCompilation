.class Lcom/didi/common/ui/webview/WebActivity$6$3;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/WebActivity$6;->showShareDialogEntrance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/webview/WebActivity$6;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity$6$3;->this$1:Lcom/didi/common/ui/webview/WebActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6$3;->this$1:Lcom/didi/common/ui/webview/WebActivity$6;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #calls: Lcom/didi/common/ui/webview/WebActivity;->showShareDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/WebActivity;->access$1400(Lcom/didi/common/ui/webview/WebActivity;)V

    .line 554
    return-void
.end method
