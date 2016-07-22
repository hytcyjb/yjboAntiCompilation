.class public Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;
.super Ljava/lang/Object;
.source "DriverBriefInfoEvent.java"


# instance fields
.field public driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

.field public requestSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;->requestSuccess:Z

    return-void
.end method
