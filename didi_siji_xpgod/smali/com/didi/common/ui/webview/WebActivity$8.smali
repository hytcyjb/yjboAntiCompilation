.class Lcom/didi/common/ui/webview/WebActivity$8;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/WebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity$8;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$8;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #calls: Lcom/didi/common/ui/webview/WebActivity;->goBack()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/WebActivity;->access$400(Lcom/didi/common/ui/webview/WebActivity;)V

    .line 738
    return-void
.end method
