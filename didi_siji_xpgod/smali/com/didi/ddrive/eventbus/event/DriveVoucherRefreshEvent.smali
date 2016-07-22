.class public Lcom/didi/ddrive/eventbus/event/DriveVoucherRefreshEvent;
.super Ljava/lang/Object;
.source "DriveVoucherRefreshEvent.java"


# instance fields
.field private succeed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSucceed()Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/didi/ddrive/eventbus/event/DriveVoucherRefreshEvent;->succeed:Z

    return v0
.end method

.method public setSucceed(Z)V
    .locals 0
    .parameter "succeed"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/didi/ddrive/eventbus/event/DriveVoucherRefreshEvent;->succeed:Z

    .line 13
    return-void
.end method
