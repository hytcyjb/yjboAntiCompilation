.class Lcom/didi/common/ui/webview/WebActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WebActivity.java"


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
    .line 125
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity$1;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$1;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 130
    return-void
.end method
