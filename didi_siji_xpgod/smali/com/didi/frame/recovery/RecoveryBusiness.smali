.class public abstract Lcom/didi/frame/recovery/RecoveryBusiness;
.super Ljava/lang/Object;
.source "RecoveryBusiness.java"


# instance fields
.field private mBusiness:Lcom/didi/frame/business/Business;


# direct methods
.method public constructor <init>(Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "business"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryBusiness;->mBusiness:Lcom/didi/frame/business/Business;

    .line 18
    return-void
.end method


# virtual methods
.method public getmBusiness()Lcom/didi/frame/business/Business;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryBusiness;->mBusiness:Lcom/didi/frame/business/Business;

    return-object v0
.end method

.method public abstract recovery(Landroid/content/Context;Lcom/didi/common/model/RecoveryConfig;)V
.end method
