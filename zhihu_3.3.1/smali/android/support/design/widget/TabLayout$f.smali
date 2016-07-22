.class Landroid/support/design/widget/TabLayout$f;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TabLayout;

.field private b:Landroid/support/design/widget/TabLayout$d;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1342
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    .line 1343
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1340
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$f;->h:I

    .line 1344
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1348
    :cond_0
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->d(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->e(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ah;->b(Landroid/view/View;IIII)V

    .line 1350
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->setGravity(I)V

    .line 1351
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$f;->setOrientation(I)V

    .line 1352
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$f;->setClickable(Z)V

    .line 1353
    return-void
.end method

.method private a(Landroid/text/Layout;IF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1619
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/support/design/widget/TabLayout$d;)V
    .locals 1
    .parameter

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    if-eq p1, v0, :cond_0

    .line 1466
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    .line 1467
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->a()V

    .line 1469
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$f;)V
    .locals 0
    .parameter

    .prologue
    .line 1331
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$f;->b()V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$f;Landroid/support/design/widget/TabLayout$d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1331
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/support/design/widget/TabLayout$d;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1541
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1542
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$d;->d()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1543
    :goto_1
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$d;->f()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v4

    .line 1545
    :goto_2
    if-eqz p2, :cond_0

    .line 1546
    if-eqz v0, :cond_6

    .line 1547
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1548
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1549
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$f;->setVisibility(I)V

    .line 1554
    :goto_3
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1557
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    move v4, v0

    .line 1558
    :goto_4
    if-eqz p1, :cond_1

    .line 1559
    if-eqz v4, :cond_8

    .line 1560
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1562
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$f;->setVisibility(I)V

    .line 1567
    :goto_5
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1570
    :cond_1
    if-eqz p2, :cond_2

    .line 1571
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1573
    if-eqz v4, :cond_a

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 1575
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v2, v6}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;I)I

    move-result v2

    .line 1577
    :goto_6
    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v6, :cond_2

    .line 1578
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1579
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1583
    :cond_2
    if-nez v4, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1584
    invoke-virtual {p0, p0}, Landroid/support/design/widget/TabLayout$f;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1589
    :goto_7
    return-void

    :cond_3
    move-object v0, v1

    .line 1541
    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 1542
    goto :goto_1

    :cond_5
    move-object v5, v1

    .line 1543
    goto :goto_2

    .line 1551
    :cond_6
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1552
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    move v4, v3

    .line 1557
    goto :goto_4

    .line 1564
    :cond_8
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1565
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1586
    :cond_9
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$f;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1587
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$f;->setLongClickable(Z)V

    goto :goto_7

    :cond_a
    move v2, v3

    goto :goto_6
.end method

.method private b()V
    .locals 1

    .prologue
    .line 1472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/support/design/widget/TabLayout$d;)V

    .line 1473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->setSelected(Z)V

    .line 1474
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1477
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    .line 1478
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->a()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 1479
    :goto_0
    if-eqz v1, :cond_a

    .line 1480
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1481
    if-eq v0, p0, :cond_1

    .line 1482
    if-eqz v0, :cond_0

    .line 1483
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1485
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$f;->addView(Landroid/view/View;)V

    .line 1487
    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$f;->e:Landroid/view/View;

    .line 1488
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1489
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1491
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1492
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1496
    :cond_3
    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Landroid/widget/TextView;

    .line 1497
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1498
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/aa;->a(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$f;->h:I

    .line 1500
    :cond_4
    const v0, 0x1020006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->g:Landroid/widget/ImageView;

    .line 1511
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->e:Landroid/view/View;

    if-nez v0, :cond_c

    .line 1513
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 1514
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/a$f;->design_layout_tab_icon:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1516
    invoke-virtual {p0, v0, v3}, Landroid/support/design/widget/TabLayout$f;->addView(Landroid/view/View;I)V

    .line 1517
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    .line 1519
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 1520
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/a$f;->design_layout_tab_text:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1522
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->addView(Landroid/view/View;)V

    .line 1523
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    .line 1524
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/aa;->a(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$f;->h:I

    .line 1526
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->k(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1527
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->l(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1528
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->l(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1530
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1537
    :cond_8
    :goto_2
    return-void

    :cond_9
    move-object v1, v2

    .line 1478
    goto/16 :goto_0

    .line 1503
    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->e:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1504
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->removeView(Landroid/view/View;)V

    .line 1505
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$f;->e:Landroid/view/View;

    .line 1507
    :cond_b
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$f;->f:Landroid/widget/TextView;

    .line 1508
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$f;->g:Landroid/widget/ImageView;

    goto :goto_1

    .line 1533
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Landroid/widget/TextView;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1534
    :cond_d
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->f:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$f;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1386
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1388
    const-class v0, Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1389
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1394
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1396
    const-class v0, Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1397
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1593
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1594
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->getLocationOnScreen([I)V

    .line 1596
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1597
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->getWidth()I

    move-result v2

    .line 1598
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->getHeight()I

    move-result v3

    .line 1599
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1601
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$d;->f()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1604
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1607
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1608
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1401
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1402
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1403
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->f(Landroid/support/design/widget/TabLayout;)I

    move-result v4

    .line 1408
    if-lez v4, :cond_1

    if-eqz v2, :cond_0

    if-le v0, v4, :cond_1

    .line 1412
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->g(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    const/high16 v2, -0x8000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1419
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1422
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1423
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->getResources()Landroid/content/res/Resources;

    .line 1424
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->h(Landroid/support/design/widget/TabLayout;)F

    move-result v2

    .line 1425
    iget v0, p0, Landroid/support/design/widget/TabLayout$f;->h:I

    .line 1427
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    move v0, v1

    .line 1435
    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    .line 1436
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    .line 1437
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/support/v4/widget/aa;->a(Landroid/widget/TextView;)I

    move-result v6

    .line 1439
    cmpl-float v7, v2, v4

    if-nez v7, :cond_3

    if-ltz v6, :cond_6

    if-eq v0, v6, :cond_6

    .line 1443
    :cond_3
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->j(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    if-ne v6, v1, :cond_5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    if-ne v5, v1, :cond_5

    .line 1448
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1449
    if-eqz v4, :cond_4

    invoke-direct {p0, v4, v3, v2}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/text/Layout;IF)F

    move-result v5

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_5

    :cond_4
    move v1, v3

    .line 1455
    :cond_5
    if-eqz v1, :cond_6

    .line 1456
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1457
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1458
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1462
    :cond_6
    return-void

    .line 1430
    :cond_7
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 1432
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->i(Landroid/support/design/widget/TabLayout;)F

    move-result v2

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 1357
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1359
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    if-eqz v1, :cond_0

    .line 1360
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->e()V

    .line 1361
    const/4 v0, 0x1

    .line 1363
    :cond_0
    return v0
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1369
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$f;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 1370
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1371
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1372
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$f;->sendAccessibilityEvent(I)V

    .line 1374
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1377
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1381
    :cond_1
    return-void

    .line 1369
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
