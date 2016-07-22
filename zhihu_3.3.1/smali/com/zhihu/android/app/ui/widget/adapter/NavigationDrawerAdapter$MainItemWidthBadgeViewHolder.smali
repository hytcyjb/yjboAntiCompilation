.class public Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;
.super Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;
.source "NavigationDrawerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainItemWidthBadgeViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder",
        "<",
        "Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final l:Lcom/zhihu/android/a/br;

.field private p:Lcom/zhihu/android/api/model/NotificationBadge;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 470
    invoke-static {p1}, Landroid/databinding/e;->a(Landroid/view/View;)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/br;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    .line 471
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    invoke-virtual {v0}, Lcom/zhihu/android/a/br;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    return-void
.end method

.method private a(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 6
    .parameter

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-wide v0, p1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v0, v0, Lcom/zhihu/android/a/br;->c:Lcom/zhihu/android/base/widget/ZHTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v1, v0, Lcom/zhihu/android/a/br;->c:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-wide v2, p1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    const-wide/16 v4, 0x63

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-string v0, "99+"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v0, v0, Lcom/zhihu/android/a/br;->c:Lcom/zhihu/android/base/widget/ZHTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->a()V

    .line 525
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method protected a(Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 476
    invoke-super {p0, p1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->b(Ljava/lang/Object;)V

    .line 477
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->p:Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 479
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->b()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 482
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->c()I

    move-result v0

    if-lez v0, :cond_3

    .line 484
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 489
    :goto_0
    new-instance v1, Lcom/zhihu/android/base/a/a/b;

    invoke-direct {v1, v0}, Lcom/zhihu/android/base/a/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 490
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->c()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/zhihu/android/base/a/a/b;->a(Landroid/content/res/Resources;I)V

    move-object v0, v1

    .line 495
    :goto_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v1, v1, Lcom/zhihu/android/a/br;->d:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 500
    :goto_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v0, v0, Lcom/zhihu/android/a/br;->d:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setText(I)V

    .line 502
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->a()I

    move-result v1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->m:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    check-cast v0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->c()I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 503
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->E()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a:Landroid/view/View;

    const v2, 0x28ffffff

    and-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 506
    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v1, v1, Lcom/zhihu/android/a/br;->d:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHTextView;->setTextColor(I)V

    .line 507
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v0, v0, Lcom/zhihu/android/a/br;->d:Lcom/zhihu/android/base/widget/ZHTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 515
    :cond_1
    :goto_3
    return-void

    .line 487
    :cond_2
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->b()I

    move-result v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_3
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->b()I

    move-result v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v0, v0, Lcom/zhihu/android/a/br;->d:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/zhihu/android/base/widget/ZHTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 511
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v0, v0, Lcom/zhihu/android/a/br;->d:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01008c

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/h;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setTextColor(I)V

    .line 512
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->l:Lcom/zhihu/android/a/br;

    iget-object v0, v0, Lcom/zhihu/android/a/br;->d:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {v0, v4, v3}, Lcom/zhihu/android/base/widget/ZHTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    check-cast p1, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a(Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->m:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    check-cast v0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->o:Ljava/lang/Object;

    check-cast v1, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$e;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->a(Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;I)V

    .line 520
    return-void
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/k;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->p:Lcom/zhihu/android/api/model/NotificationBadge;

    .line 531
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->p:Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter$MainItemWidthBadgeViewHolder;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 532
    return-void
.end method
