.class Lcom/didi/common/ui/webview/CancelOrderWebActivity$5;
.super Ljava/lang/Object;
.source "CancelOrderWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/CancelOrderWebActivity;->checkPmOrGpsSettings()V
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
    .line 212
    iput-object p1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$5;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$5;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->performOpenSetting()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$600(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    .line 218
    return-void
.end method
