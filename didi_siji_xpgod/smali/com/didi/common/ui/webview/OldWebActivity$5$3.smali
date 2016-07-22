.class Lcom/didi/common/ui/webview/OldWebActivity$5$3;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/OldWebActivity$5;->showShareDialogEntrance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldWebActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$3;->this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$3;->this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->showShareDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1400(Lcom/didi/common/ui/webview/OldWebActivity;)V

    .line 466
    return-void
.end method
