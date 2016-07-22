.class Lcom/didi/common/ui/webview/OldWebActivity$6;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/ShareView$ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/OldWebActivity;->showShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/OldWebActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldWebActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$6;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iput-object p2, p0, Lcom/didi/common/ui/webview/OldWebActivity$6;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$6;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 594
    return-void
.end method
