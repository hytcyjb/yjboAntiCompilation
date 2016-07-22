.class public Lcom/didi/frame/endorder/EndedOrderViewHelper;
.super Ljava/lang/Object;
.source "EndedOrderViewHelper.java"


# static fields
.field private static ended:Lcom/didi/frame/endorder/EndedOrderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndedOrderView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    return-object v0
.end method

.method public static setDriver(Lcom/didi/car/model/CarDriver;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 45
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndedOrderView;->setDriver(Lcom/didi/car/model/CarDriver;)V

    goto :goto_0
.end method

.method public static setDriver(Lcom/didi/taxi/model/TaxiDriver;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 35
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndedOrderView;->setDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    goto :goto_0
.end method

.method public static setDriverBarLisenter(Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 41
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndedOrderView;->setListener(Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;)V

    .line 42
    return-void
.end method

.method public static setEndedOrderView(Lcom/didi/frame/endorder/EndedOrderView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 19
    sput-object p0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    .line 20
    return-void
.end method

.method public static setIcon(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 23
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndedOrderView;->setIcon(I)V

    goto :goto_0
.end method

.method public static setReason(Ljava/lang/String;)V
    .locals 1
    .parameter "re"

    .prologue
    .line 29
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndedOrderView;->setReason(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTipLineLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 51
    sget-object v0, Lcom/didi/frame/endorder/EndedOrderViewHelper;->ended:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndedOrderView;->setTip(Ljava/lang/String;)V

    .line 52
    return-void
.end method
