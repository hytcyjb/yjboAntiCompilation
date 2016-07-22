.class public Lcom/didi/common/download/Status;
.super Ljava/lang/Object;
.source "Status.java"


# instance fields
.field public mDownParam:Lcom/didi/common/download/DownloadParam;

.field public mMax:I

.field public mProgress:I

.field public mState:Lcom/didi/common/download/DownloadService$DownloadState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/didi/common/download/DownloadService$DownloadState;->IDLE:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v0, p0, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 14
    iput v1, p0, Lcom/didi/common/download/Status;->mMax:I

    .line 15
    iput v1, p0, Lcom/didi/common/download/Status;->mProgress:I

    return-void
.end method
