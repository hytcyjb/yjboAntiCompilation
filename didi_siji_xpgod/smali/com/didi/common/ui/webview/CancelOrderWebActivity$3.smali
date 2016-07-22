.class Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;
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
    .line 111
    iput-object p1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->getResult(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$100(Lcom/didi/common/ui/webview/CancelOrderWebActivity;Lorg/json/JSONObject;)V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/taxi/helper/TaxiPushHelper;->sendLocation(Z)V

    .line 118
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterDriversLocationMessageListener()V

    .line 119
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriverArrivalMarker()V

    .line 121
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #getter for: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reSend:Z
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$200(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->showRecallDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$300(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #getter for: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$500(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Lcom/didi/taxi/model/TaxiOrder;->trip_friend_status:I

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->skipPage()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$400(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    goto :goto_0
.end method
