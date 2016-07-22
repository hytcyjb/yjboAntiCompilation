.class public Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;
.super Lcom/didi/ddrive/net/tcp/message/BaseMessage;
.source "OrderAcceptMessage.java"


# instance fields
.field public did:J

.field public driverLat:D

.field public driverLng:D

.field public oid:J

.field public pid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/message/BaseMessage;-><init>()V

    return-void
.end method
