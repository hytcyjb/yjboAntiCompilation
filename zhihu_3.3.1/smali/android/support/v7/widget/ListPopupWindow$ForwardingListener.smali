.class public abstract Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$b;,
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:I

.field private final c:I

.field private final d:Landroid/view/View;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:Z

.field private i:I

.field private final j:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->j:[I

    .line 1282
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d:Landroid/view/View;

    .line 1283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->a:F

    .line 1284
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->b:I

    .line 1286
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->c:I

    .line 1287
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1367
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d:Landroid/view/View;

    .line 1368
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return v0

    .line 1372
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1373
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1375
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->i:I

    .line 1376
    iput-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->h:Z

    .line 1378
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->e:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 1379
    new-instance v1, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$a;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$a;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->e:Ljava/lang/Runnable;

    .line 1381
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->e:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->b:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1382
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->f:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 1383
    new-instance v1, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$b;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$b;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->f:Ljava/lang/Runnable;

    .line 1385
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->f:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->c:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1388
    :pswitch_1
    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->i:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1389
    if-ltz v3, :cond_0

    .line 1390
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1391
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1392
    iget v5, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->a:F

    invoke-static {v2, v4, v3, v5}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->a(Landroid/view/View;FFF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1393
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d()V

    .line 1396
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 1397
    goto :goto_0

    .line 1403
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d()V

    goto :goto_0

    .line 1373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/view/View;FFF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1483
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1493
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->j:[I

    .line 1494
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1495
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1496
    return v2
.end method

.method static synthetic b(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1248
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->e()V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1454
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d:Landroid/view/View;

    .line 1455
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->a()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v3

    .line 1456
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->k()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return v1

    .line 1460
    :cond_1
    invoke-static {v3}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$a;

    move-result-object v3

    .line 1461
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow$a;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1466
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1467
    invoke-direct {p0, v2, v4}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1468
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1471
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->i:I

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/ListPopupWindow$a;->a(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 1472
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 1475
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1476
    if-eq v2, v0, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    move v2, v0

    .line 1479
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 1476
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1479
    goto :goto_2
.end method

.method private b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1504
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->j:[I

    .line 1505
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1506
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1507
    return v2
.end method

.method private d()V
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1415
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1418
    :cond_1
    return-void
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1421
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d()V

    .line 1423
    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d:Landroid/view/View;

    .line 1424
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1439
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1440
    invoke-virtual {v8, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1441
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1443
    iput-boolean v9, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->g:Z

    .line 1444
    iput-boolean v9, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->h:Z

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/widget/ListPopupWindow;
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 1339
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->a()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 1340
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1341
    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->c()V

    .line 1343
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->a()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->i()V

    .line 1357
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1303
    iget-boolean v10, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->g:Z

    .line 1305
    if-eqz v10, :cond_5

    .line 1306
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->h:Z

    if-eqz v0, :cond_2

    .line 1310
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1327
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->g:Z

    .line 1328
    if-nez v0, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    move v7, v8

    :cond_1
    return v7

    .line 1312
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->c()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_0

    .line 1315
    :cond_5
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    move v9, v8

    .line 1317
    :goto_1
    if-eqz v9, :cond_6

    .line 1319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1320
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1322
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1323
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_6
    move v0, v9

    goto :goto_0

    :cond_7
    move v9, v7

    .line 1315
    goto :goto_1
.end method
