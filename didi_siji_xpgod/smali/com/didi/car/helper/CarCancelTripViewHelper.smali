.class public Lcom/didi/car/helper/CarCancelTripViewHelper;
.super Ljava/lang/Object;
.source "CarCancelTripViewHelper.java"


# static fields
.field private static view:Lcom/didi/car/ui/component/CarCancelTripView;


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
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->getCurrentSelectedIndex()I

    move-result v0

    return v0
.end method

.method public static getReasonTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->getReasonTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemarkContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->getRemarkContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    return-object v0
.end method

.method public static hideInptuMethod()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->hideInputMethod()V

    .line 21
    return-void
.end method

.method public static setCancelTripNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tip"
    .parameter "estimateDesc"
    .parameter "subDesc"

    .prologue
    .line 44
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/didi/car/ui/component/CarCancelTripView;->setCancelTripNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static setCancelTripReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;)V
    .locals 1
    .parameter "iconArray"
    .parameter "textArray"
    .parameter "listener"

    .prologue
    .line 16
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/didi/car/ui/component/CarCancelTripView;->setReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;)V

    .line 17
    return-void
.end method

.method public static setCarAnimView(I)V
    .locals 1
    .parameter "step"

    .prologue
    .line 56
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView;->setCarAnimView(I)V

    .line 57
    return-void
.end method

.method public static setCarCancelTripView(Lcom/didi/car/ui/component/CarCancelTripView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 12
    sput-object p0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    .line 13
    return-void
.end method

.method public static showInputMethod()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->showInputMethod()V

    .line 25
    return-void
.end method

.method public static startCarImgAnim()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->startCarAnim()V

    .line 49
    return-void
.end method

.method public static stopCarImgAnim()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/didi/car/helper/CarCancelTripViewHelper;->view:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->stopCarAnim()V

    .line 53
    return-void
.end method
