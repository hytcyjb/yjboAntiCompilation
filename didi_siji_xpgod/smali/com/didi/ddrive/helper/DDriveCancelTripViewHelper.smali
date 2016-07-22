.class public Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;
.super Ljava/lang/Object;
.source "DDriveCancelTripViewHelper.java"


# static fields
.field private static view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentResonIndex()I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->getCurrentSelectedIndex()I

    move-result v0

    return v0
.end method

.method public static getReasonTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->getReasonTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemarkContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->getRemarkContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    return-object v0
.end method

.method public static hideInptuMethod()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->hideInputMethod()V

    .line 21
    return-void
.end method

.method public static setCancelTripNotice(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 44
    sget-object v0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->setCancelTripNotice(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static setCancelTripReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;)V
    .locals 1
    .parameter "iconArray"
    .parameter "textArray"
    .parameter "listener"

    .prologue
    .line 16
    sget-object v0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->setReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;)V

    .line 17
    return-void
.end method

.method public static setCarCancelTripView(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 12
    sput-object p0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    .line 13
    return-void
.end method

.method public static showInputMethod()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->view:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->showInputMethod()V

    .line 25
    return-void
.end method
