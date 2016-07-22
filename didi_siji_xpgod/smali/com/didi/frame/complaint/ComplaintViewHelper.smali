.class public Lcom/didi/frame/complaint/ComplaintViewHelper;
.super Ljava/lang/Object;
.source "ComplaintViewHelper.java"


# static fields
.field private static view:Lcom/didi/frame/complaint/ComplaintView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReasonNumber()I
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/didi/frame/complaint/ComplaintViewHelper;->view:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintView;->getCheckNum()I

    move-result v0

    return v0
.end method

.method public static getReasonTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/didi/frame/complaint/ComplaintViewHelper;->view:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintView;->getReasonTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/didi/frame/complaint/ComplaintViewHelper;->view:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    return-object v0
.end method

.method public static hideInptuMethod()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/didi/frame/complaint/ComplaintViewHelper;->view:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintView;->hideInputMethod()V

    .line 20
    return-void
.end method

.method public static setCompNotice(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 39
    sget-object v0, Lcom/didi/frame/complaint/ComplaintViewHelper;->view:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/complaint/ComplaintView;->setCompNotice(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static setComplaintReasons([Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;)V
    .locals 1
    .parameter "str"
    .parameter "listener"

    .prologue
    .line 15
    sget-object v0, Lcom/didi/frame/complaint/ComplaintViewHelper;->view:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/complaint/ComplaintView;->setReasons([Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;)V

    .line 16
    return-void
.end method

.method public static setComplaintView(Lcom/didi/frame/complaint/ComplaintView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 11
    sput-object p0, Lcom/didi/frame/complaint/ComplaintViewHelper;->view:Lcom/didi/frame/complaint/ComplaintView;

    .line 12
    return-void
.end method

.method public static showInputMethod()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/didi/frame/complaint/ComplaintViewHelper;->view:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintView;->showInputMethod()V

    .line 24
    return-void
.end method
