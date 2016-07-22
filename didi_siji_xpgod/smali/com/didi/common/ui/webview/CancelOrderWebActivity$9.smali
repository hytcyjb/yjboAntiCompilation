.class Lcom/didi/common/ui/webview/CancelOrderWebActivity$9;
.super Ljava/lang/Object;
.source "CancelOrderWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/CancelOrderWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$9;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public submitOnly()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$9;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->skipPage()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$400(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    .line 390
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method
