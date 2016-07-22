.class public Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;
.super Ljava/lang/Object;
.source "DrivePrePriceEvent.java"


# instance fields
.field public response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

.field public responseSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->responseSuccess:Z

    return-void
.end method
