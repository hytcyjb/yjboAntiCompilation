.class public Lcom/didi/ddrive/eventbus/event/DriveOrderPaymentResultEvent;
.super Ljava/lang/Object;
.source "DriveOrderPaymentResultEvent.java"


# instance fields
.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/didi/ddrive/eventbus/event/DriveOrderPaymentResultEvent;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/didi/ddrive/eventbus/event/DriveOrderPaymentResultEvent;->success:Z

    .line 13
    return-void
.end method
