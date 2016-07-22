.class Lcom/didi/common/ui/webview/CancelOrderWebActivity$10;
.super Ljava/lang/Object;
.source "CancelOrderWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/CancelOrderWebActivity;->skipPage()V
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
    .line 409
    iput-object p1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$10;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 412
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 413
    return-void
.end method
