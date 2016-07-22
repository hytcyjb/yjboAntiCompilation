.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;
.super Landroid/os/AsyncTask;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/a/d;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1499
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1500
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->a:Ljava/lang/ref/WeakReference;

    .line 1501
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->b:Ljava/lang/ref/WeakReference;

    .line 1502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->c:Ljava/lang/ref/WeakReference;

    .line 1503
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z

    .line 1504
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 1510
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/a/d;

    .line 1511
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    .line 1512
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lcom/davemorrissey/labs/subscaleview/a/d;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1513
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->p(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1515
    :try_start_1
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1516
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1517
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Rect;->offset(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1520
    :cond_0
    :goto_0
    const/4 v0, 0x3

    if-ge v4, v0, :cond_2

    .line 1524
    :try_start_2
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)I

    move-result v6

    invoke-interface {v1, v0, v6}, Lcom/davemorrissey/labs/subscaleview/a/d;->a(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :try_start_3
    monitor-exit v5

    .line 1542
    :goto_1
    return-object v0

    .line 1525
    :catch_0
    move-exception v0

    .line 1527
    add-int/lit8 v4, v4, 0x1

    .line 1528
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1529
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OOM occur"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 1534
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1538
    :catch_1
    move-exception v0

    .line 1539
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to decode tile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->d:Ljava/lang/Exception;

    :cond_1
    :goto_2
    move-object v0, v3

    .line 1542
    goto :goto_1

    .line 1533
    :cond_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v3

    goto :goto_1

    .line 1535
    :cond_3
    if-eqz v2, :cond_1

    .line 1536
    const/4 v0, 0x0

    :try_start_6
    invoke-static {v2, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 1548
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    .line 1549
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1550
    if-eqz p1, :cond_1

    .line 1551
    invoke-static {v1, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1552
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z

    .line 1553
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->q(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->d:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1555
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    move-result-object v0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->d:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1493
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1493
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
