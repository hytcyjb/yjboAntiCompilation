.class Lcom/didi/common/ui/webview/WalletWebActivity$1;
.super Ljava/lang/Object;
.source "WalletWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/WalletWebActivity;->addCallToDriver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/WalletWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WalletWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/didi/common/ui/webview/WalletWebActivity$1;->this$0:Lcom/didi/common/ui/webview/WalletWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 59
    invoke-static {}, Lcom/didi/o2o/model/WebBusinessProcessor;->getInstance()Lcom/didi/o2o/model/WebBusinessProcessor;

    move-result-object v0

    .line 60
    .local v0, webBusinessProcessor:Lcom/didi/o2o/model/WebBusinessProcessor;
    iget-object v1, p0, Lcom/didi/common/ui/webview/WalletWebActivity$1;->this$0:Lcom/didi/common/ui/webview/WalletWebActivity;

    invoke-virtual {v0, v1}, Lcom/didi/o2o/model/WebBusinessProcessor;->setCurrentWebContext(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/didi/o2o/model/WebBusinessProcessor;->processBusiness(Lorg/json/JSONObject;)V

    .line 62
    const/4 v1, 0x0

    return-object v1
.end method
