.class Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc$1;
.super Ljava/lang/Object;
.source "BtsCancelOrderAc.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    const/4 v3, 0x0

    .line 29
    sget-object v0, Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOrderSuccess, execute, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;->setResult(ILandroid/content/Intent;)V

    .line 31
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/h5/BtsCancelOrderAc;->finish()V

    .line 33
    return-object v3
.end method
