.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;
.super Landroid/os/AsyncTask;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
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
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/a/b",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/a/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/net/Uri;

.field private e:Lcom/davemorrissey/labs/subscaleview/a/d;

.field private f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/a/b;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;",
            "Landroid/content/Context;",
            "Lcom/davemorrissey/labs/subscaleview/a/b",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/a/d;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1418
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1419
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->a:Ljava/lang/ref/WeakReference;

    .line 1420
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->b:Ljava/lang/ref/WeakReference;

    .line 1421
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->c:Ljava/lang/ref/WeakReference;

    .line 1422
    iput-object p4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->d:Landroid/net/Uri;

    .line 1423
    return-void
.end method


# virtual methods
.method protected a([I)V
    .locals 5
    .parameter

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 1454
    if-eqz v0, :cond_0

    .line 1455
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->e:Lcom/davemorrissey/labs/subscaleview/a/d;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1456
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->e:Lcom/davemorrissey/labs/subscaleview/a/d;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/a/d;III)V

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->f:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1458
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    move-result-object v0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->f:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Void;)[I
    .locals 5
    .parameter

    .prologue
    .line 1428
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1429
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1430
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/a/b;

    .line 1431
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 1432
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1433
    invoke-interface {v1}, Lcom/davemorrissey/labs/subscaleview/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/a/d;

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->e:Lcom/davemorrissey/labs/subscaleview/a/d;

    .line 1434
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->e:Lcom/davemorrissey/labs/subscaleview/a/d;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->d:Landroid/net/Uri;

    invoke-interface {v1, v0, v4}, Lcom/davemorrissey/labs/subscaleview/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v0

    .line 1435
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 1436
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1437
    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Ljava/lang/String;)I

    move-result v3

    .line 1438
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1439
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1440
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    move v2, v1

    move v1, v0

    .line 1442
    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v2, v0, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    :goto_1
    return-object v0

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to initialise bitmap decoder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1446
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->f:Ljava/lang/Exception;

    .line 1448
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1410
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->a([Ljava/lang/Void;)[I

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1410
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;->a([I)V

    return-void
.end method
