.class public Lcom/didi/frame/recovery/RecoveryBusinessCreator;
.super Ljava/lang/Object;
.source "RecoveryBusinessCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRecoveryBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/recovery/RecoveryBusiness;
    .locals 1
    .parameter "business"

    .prologue
    .line 12
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_0

    .line 13
    new-instance v0, Lcom/didi/frame/recovery/RecoveryTaxi;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryTaxi;-><init>(Lcom/didi/frame/business/Business;)V

    .line 21
    :goto_0
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_1

    .line 15
    new-instance v0, Lcom/didi/frame/recovery/RecoveryCar;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryCar;-><init>(Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 16
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_2

    .line 17
    new-instance v0, Lcom/didi/frame/recovery/RecoveryFlier;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryFlier;-><init>(Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_3

    .line 19
    new-instance v0, Lcom/didi/frame/recovery/RecoveryDDrive;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryDDrive;-><init>(Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 21
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
