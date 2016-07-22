.class public Lcom/didi/ddrive/net/http/response/DriveVoucherList$Voucher;
.super Ljava/lang/Object;
.source "DriveVoucherList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/DriveVoucherList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Voucher"
.end annotation


# instance fields
.field public effecEndTime:J

.field public gmtCreate:J

.field public money:D

.field public name:Ljava/lang/String;

.field public status:I

.field public voucherId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
