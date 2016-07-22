.class Lcom/didi/common/ui/webview/FeekBackWebActivity$1;
.super Ljava/lang/Object;
.source "FeekBackWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/FeekBackWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/FeekBackWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/FeekBackWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/didi/common/ui/webview/FeekBackWebActivity$1;->this$0:Lcom/didi/common/ui/webview/FeekBackWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/common/ui/webview/FeekBackWebActivity$1;->this$0:Lcom/didi/common/ui/webview/FeekBackWebActivity;

    #calls: Lcom/didi/common/ui/webview/FeekBackWebActivity;->uploadNetLog()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/FeekBackWebActivity;->access$000(Lcom/didi/common/ui/webview/FeekBackWebActivity;)V

    .line 40
    iget-object v0, p0, Lcom/didi/common/ui/webview/FeekBackWebActivity$1;->this$0:Lcom/didi/common/ui/webview/FeekBackWebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/FeekBackWebActivity;->finish()V

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
