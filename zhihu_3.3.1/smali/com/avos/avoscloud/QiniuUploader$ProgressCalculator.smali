.class Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;
.super Ljava/lang/Object;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/QiniuUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressCalculator"
.end annotation


# instance fields
.field blockProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field callback:Lcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;

.field fileBlockCount:I


# direct methods
.method public constructor <init>(ILcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->blockProgress:Landroid/util/SparseArray;

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->fileBlockCount:I

    .line 549
    iput-object p2, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->callback:Lcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;

    .line 550
    iput p1, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->fileBlockCount:I

    .line 551
    return-void
.end method


# virtual methods
.method public declared-synchronized publishProgress(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 554
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->blockProgress:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 555
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->callback:Lcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;

    if-eqz v1, :cond_1

    move v1, v0

    move v2, v0

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->blockProgress:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->blockProgress:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    .line 557
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->callback:Lcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;

    mul-int/lit8 v1, v2, 0x50

    iget v2, p0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->fileBlockCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;->onProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_1
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
