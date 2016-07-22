.class public Lcom/didi/frame/complaint/ComplaintedViewHelper;
.super Ljava/lang/Object;
.source "ComplaintedViewHelper.java"


# static fields
.field private static view:Lcom/didi/frame/complaint/ComplaintedView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/didi/frame/complaint/ComplaintedViewHelper;->view:Lcom/didi/frame/complaint/ComplaintedView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintedView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    return-object v0
.end method

.method public static setComplaintedContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 24
    sget-object v0, Lcom/didi/frame/complaint/ComplaintedViewHelper;->view:Lcom/didi/frame/complaint/ComplaintedView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/complaint/ComplaintedView;->setContent(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static setComplaintedView(Lcom/didi/frame/complaint/ComplaintedView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 16
    sput-object p0, Lcom/didi/frame/complaint/ComplaintedViewHelper;->view:Lcom/didi/frame/complaint/ComplaintedView;

    .line 17
    return-void
.end method
