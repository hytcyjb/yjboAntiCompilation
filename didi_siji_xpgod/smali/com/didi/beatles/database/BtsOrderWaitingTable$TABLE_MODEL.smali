.class public Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;
.super Ljava/lang/Object;
.source "BtsOrderWaitingTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/database/BtsOrderWaitingTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TABLE_MODEL"
.end annotation


# instance fields
.field public mCreateTime:J

.field public mOrderId:Ljava/lang/String;

.field public mStatus:I

.field public mTimeOut:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
