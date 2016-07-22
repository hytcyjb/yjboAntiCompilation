.class Lcom/didi/common/ui/webview/WebActivity$4;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/WebActivity;->setTitleBarRightCloseTxt()V
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
    .line 329
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity$4;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$4;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 333
    return-void
.end method
