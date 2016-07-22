.class Lcom/didi/common/ui/webview/CancelOrderWebActivity$2;
.super Ljava/lang/Object;
.source "CancelOrderWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/CancelOrderWebActivity;->addJavaScriptInterfaces()V
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
    .line 101
    iput-object p1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$2;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$2;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->checkPmOrGpsSettings()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$000(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
