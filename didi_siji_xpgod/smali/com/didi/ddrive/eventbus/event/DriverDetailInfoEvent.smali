.class public Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;
.super Ljava/lang/Object;
.source "DriverDetailInfoEvent.java"


# instance fields
.field public detailInfo:Lcom/didi/ddrive/net/http/response/DriverDetailInfo;

.field public requestSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;->requestSuccess:Z

    return-void
.end method
