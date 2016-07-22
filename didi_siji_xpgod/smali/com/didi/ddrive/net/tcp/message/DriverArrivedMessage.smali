.class public Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;
.super Lcom/didi/ddrive/net/tcp/message/BaseMessage;
.source "DriverArrivedMessage.java"


# instance fields
.field public did:J

.field public driverLat:D

.field public driverLng:D

.field public oid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/message/BaseMessage;-><init>()V

    return-void
.end method
