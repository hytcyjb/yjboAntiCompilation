.class public Lcom/didi/common/helper/TimeHelper;
.super Ljava/lang/Object;
.source "TimeHelper.java"


# static fields
.field private static orderTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/didi/common/helper/TimeHelper;->orderTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrderTime()J
    .locals 4

    .prologue
    .line 31
    sget-wide v0, Lcom/didi/common/helper/TimeHelper;->orderTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/didi/common/helper/TimeHelper;->orderTime:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static setOrderTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 22
    sput-wide p0, Lcom/didi/common/helper/TimeHelper;->orderTime:J

    .line 23
    return-void
.end method
