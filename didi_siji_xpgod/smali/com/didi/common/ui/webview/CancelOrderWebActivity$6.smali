.class Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;
.super Lcom/didi/common/net/ResponseListener;
.source "CancelOrderWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/CancelOrderWebActivity;->createRealtimeOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 263
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;->onError(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onError(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 279
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$800(Lcom/didi/common/ui/webview/CancelOrderWebActivity;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 280
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 263
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;->onFail(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 273
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$800(Lcom/didi/common/ui/webview/CancelOrderWebActivity;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 274
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 263
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;->onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;->this$0:Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    #calls: Lcom/didi/common/ui/webview/CancelOrderWebActivity;->onOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->access$700(Lcom/didi/common/ui/webview/CancelOrderWebActivity;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 268
    return-void
.end method
