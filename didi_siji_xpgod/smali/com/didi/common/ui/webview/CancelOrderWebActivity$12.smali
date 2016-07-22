.class Lcom/didi/common/ui/webview/CancelOrderWebActivity$12;
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
    .line 446
    iput-object p1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$12;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$12;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->skipPage()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$400(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    .line 461
    const-string v0, "choose_didi_again_notit"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 450
    const-string v0, "choose_didi_again_now_send"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$12;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    const v1, 0x7f0b04bd

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 454
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->start()V

    .line 455
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$12;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reSendOrder()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$900(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    .line 456
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method
