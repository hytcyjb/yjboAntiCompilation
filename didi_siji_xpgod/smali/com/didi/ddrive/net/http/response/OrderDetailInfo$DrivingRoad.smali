.class public Lcom/didi/ddrive/net/http/response/OrderDetailInfo$DrivingRoad;
.super Ljava/lang/Object;
.source "OrderDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/OrderDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrivingRoad"
.end annotation


# instance fields
.field public lat:D

.field public lng:D

.field public stime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
