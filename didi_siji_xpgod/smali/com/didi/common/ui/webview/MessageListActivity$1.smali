.class Lcom/didi/common/ui/webview/MessageListActivity$1;
.super Ljava/lang/Object;
.source "MessageListActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/MessageListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/MessageListActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/MessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/didi/common/ui/webview/MessageListActivity$1;->this$0:Lcom/didi/common/ui/webview/MessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 19
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setMessageHasNew(Z)V

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
