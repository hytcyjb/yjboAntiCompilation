.class public Lcom/didi/frame/endorder/EndOrderViewHelper;
.super Ljava/lang/Object;
.source "EndOrderViewHelper.java"


# static fields
.field private static endOrder:Lcom/didi/frame/endorder/EndOrderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReasonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndOrderView;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndOrderView;->getReasonContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReasonTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndOrderView;->getReasonTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndOrderView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    return-object v0
.end method

.method public static hideInptuMethod()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndOrderView;->hideInputMethod()V

    .line 49
    return-void
.end method

.method public static setEndOrderView(Lcom/didi/frame/endorder/EndOrderView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 16
    sput-object p0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    .line 17
    return-void
.end method

.method public static setNoticeText(Ljava/lang/String;)V
    .locals 1
    .parameter "notice"

    .prologue
    .line 28
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndOrderView;->setNoticeText(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static setReason([Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 24
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndOrderView;->setReason([Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static setReasonCode([Ljava/lang/String;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 20
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndOrderView;->setCode([Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static setViewListener(Lcom/didi/frame/endorder/EndOrderView$ViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 32
    sget-object v0, Lcom/didi/frame/endorder/EndOrderViewHelper;->endOrder:Lcom/didi/frame/endorder/EndOrderView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/endorder/EndOrderView;->setViewListener(Lcom/didi/frame/endorder/EndOrderView$ViewListener;)V

    .line 33
    return-void
.end method
