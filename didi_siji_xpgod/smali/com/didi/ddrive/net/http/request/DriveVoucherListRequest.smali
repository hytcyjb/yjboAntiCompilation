.class public Lcom/didi/ddrive/net/http/request/DriveVoucherListRequest;
.super Ljava/lang/Object;
.source "DriveVoucherListRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.vm.availableVoucherList"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public source:I

.field public userId:J

.field public voucherType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/ddrive/net/http/request/DriveVoucherListRequest;->voucherType:I

    return-void
.end method
