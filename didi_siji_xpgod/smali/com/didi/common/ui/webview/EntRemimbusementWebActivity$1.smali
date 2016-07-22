.class Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$1;
.super Ljava/lang/Object;
.source "EntRemimbusementWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$1;->this$0:Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$1;->this$0:Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    #calls: Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->remimbursementSuccess()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->access$000(Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;)V

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
