.class public Lcom/didi/taxi/helper/TaxiOrderResendHelper;
.super Ljava/lang/Object;
.source "TaxiOrderResendHelper.java"


# static fields
.field private static count:I

.field private static timeTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    sget v1, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->count:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 23
    sget v1, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->count:I

    .line 27
    :goto_0
    return v0

    .line 26
    :cond_0
    sput v0, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->count:I

    .line 27
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getTimeTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->timeTemp:Ljava/lang/String;

    return-object v0
.end method

.method public static start()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->timeTemp:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    sput v0, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->count:I

    .line 10
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 13
    const-string v0, ""

    sput-object v0, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->timeTemp:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->count:I

    .line 15
    return-void
.end method
