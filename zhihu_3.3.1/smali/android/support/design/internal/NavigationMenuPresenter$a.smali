.class Landroid/support/design/internal/NavigationMenuPresenter$a;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/NavigationMenuPresenter;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/NavigationMenuPresenter$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/view/menu/h;

.field private d:Landroid/graphics/drawable/ColorDrawable;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .locals 1
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    .line 344
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->g()V

    .line 345
    return-void
.end method

.method private b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 516
    :goto_0
    if-ge p1, p2, :cond_2

    .line 517
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    .line 518
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$e;->a()Landroid/support/v7/view/menu/h;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 520
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->d:Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    .line 521
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->d:Landroid/graphics/drawable/ColorDrawable;

    .line 523
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->d:Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 516
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 526
    :cond_2
    return-void
.end method

.method private g()V
    .locals 15

    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->e:Z

    if-eqz v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->e:Z

    .line 449
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 450
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/design/internal/NavigationMenuPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/design/internal/NavigationMenuPresenter$b;-><init>(Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const/4 v5, -0x1

    .line 453
    const/4 v4, 0x0

    .line 454
    const/4 v3, 0x0

    .line 455
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/f;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/f;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_f

    .line 456
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/h;

    .line 457
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/support/v7/view/menu/h;)V

    .line 460
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 463
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 464
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 465
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 466
    if-eqz v7, :cond_3

    .line 467
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/NavigationMenuPresenter$d;

    iget-object v6, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->k(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v6

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10}, Landroid/support/design/internal/NavigationMenuPresenter$d;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_3
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/NavigationMenuPresenter$e;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$e;-><init>(Landroid/support/v7/view/menu/h;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    const/4 v2, 0x0

    .line 471
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 472
    const/4 v1, 0x0

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    move v6, v1

    :goto_2
    if-ge v6, v11, :cond_8

    .line 473
    invoke-interface {v9, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/h;

    .line 474
    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 475
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 476
    const/4 v2, 0x1

    .line 478
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->isCheckable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 479
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/support/v7/view/menu/h;->a(Z)V

    .line 481
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 482
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/support/v7/view/menu/h;)V

    .line 484
    :cond_6
    iget-object v12, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/design/internal/NavigationMenuPresenter$e;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14}, Landroid/support/design/internal/NavigationMenuPresenter$e;-><init>(Landroid/support/v7/view/menu/h;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 487
    :cond_8
    if-eqz v2, :cond_9

    .line 488
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v10, v0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->b(II)V

    :cond_9
    move v0, v3

    move v1, v4

    move v2, v5

    .line 455
    :goto_3
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v4, v1

    move v5, v2

    move v3, v0

    goto/16 :goto_1

    .line 492
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v6

    .line 493
    if-eq v6, v5, :cond_d

    .line 494
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 495
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 496
    :goto_4
    if-eqz v7, :cond_e

    .line 497
    add-int/lit8 v4, v4, 0x1

    .line 498
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/NavigationMenuPresenter$d;

    iget-object v5, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->k(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v5

    iget-object v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v9}, Landroid/support/design/internal/NavigationMenuPresenter;->k(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v9

    invoke-direct {v2, v5, v9}, Landroid/support/design/internal/NavigationMenuPresenter$d;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    move v2, v4

    .line 505
    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_b

    .line 506
    const v3, 0x106000d

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/h;->setIcon(I)Landroid/view/MenuItem;

    .line 508
    :cond_b
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/design/internal/NavigationMenuPresenter$e;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/support/design/internal/NavigationMenuPresenter$e;-><init>(Landroid/support/v7/view/menu/h;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    move v2, v6

    .line 509
    goto :goto_3

    .line 495
    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    .line 501
    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 502
    const/4 v3, 0x1

    .line 503
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v4, v1}, Landroid/support/design/internal/NavigationMenuPresenter$a;->b(II)V

    :cond_e
    move v1, v3

    move v2, v4

    goto :goto_5

    .line 512
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->e:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2
    .parameter

    .prologue
    .line 349
    int-to-long v0, p1

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 377
    packed-switch p2, :pswitch_data_0

    .line 387
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 379
    :pswitch_0
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$f;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->c(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v2}, Landroid/support/design/internal/NavigationMenuPresenter;->d(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Landroid/support/design/internal/NavigationMenuPresenter$f;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 381
    :pswitch_1
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$h;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->c(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/NavigationMenuPresenter$h;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 383
    :pswitch_2
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$g;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->c(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/NavigationMenuPresenter$g;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 385
    :pswitch_3
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->e(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 562
    const-string v0, "android:menu:checked"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 563
    if-eqz v1, :cond_2

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->e:Z

    .line 565
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$c;

    .line 566
    instance-of v3, v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    if-eqz v3, :cond_0

    .line 567
    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$e;->a()Landroid/support/v7/view/menu/h;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getItemId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 569
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/support/v7/view/menu/h;)V

    .line 574
    :cond_1
    iput-boolean v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->e:Z

    .line 575
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->g()V

    .line 578
    :cond_2
    const-string v0, "android:menu:action_views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 580
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$c;

    .line 581
    instance-of v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    if-eqz v1, :cond_3

    .line 582
    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$e;->a()Landroid/support/v7/view/menu/h;

    move-result-object v4

    .line 583
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->getActionView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 584
    :goto_1
    if-eqz v1, :cond_3

    .line 585
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 583
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 589
    :cond_5
    return-void
.end method

.method public a(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 430
    instance-of v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$f;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->a:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->a()V

    .line 433
    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 392
    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuPresenter$a;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 426
    :goto_0
    return-void

    .line 394
    :pswitch_0
    iget-object v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->a:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    .line 395
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->f(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 396
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->g(Landroid/support/design/internal/NavigationMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v2}, Landroid/support/design/internal/NavigationMenuPresenter;->h(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/content/Context;I)V

    .line 399
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->i(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->i(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 402
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->j(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->a:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->j(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$e;

    .line 405
    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$e;->a()Landroid/support/v7/view/menu/h;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/support/v7/view/menu/h;I)V

    goto :goto_0

    .line 402
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 409
    :pswitch_1
    iget-object v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 410
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$e;

    .line 411
    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$e;->a()Landroid/support/v7/view/menu/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 415
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$d;

    .line 417
    iget-object v1, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$d;->a()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$d;->b()I

    move-result v0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .locals 2
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->c:Landroid/support/v7/view/menu/h;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->c:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->setChecked(Z)Landroid/view/MenuItem;

    .line 535
    :cond_2
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->c:Landroid/support/v7/view/menu/h;

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->e:Z

    .line 593
    return-void
.end method

.method public b(I)I
    .locals 2
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$c;

    .line 360
    instance-of v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$d;

    if-eqz v1, :cond_0

    .line 361
    const/4 v0, 0x2

    .line 369
    :goto_0
    return v0

    .line 362
    :cond_0
    instance-of v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$b;

    if-eqz v1, :cond_1

    .line 363
    const/4 v0, 0x3

    goto :goto_0

    .line 364
    :cond_1
    instance-of v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    if-eqz v1, :cond_3

    .line 365
    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    .line 366
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$e;->a()Landroid/support/v7/view/menu/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    const/4 v0, 0x1

    goto :goto_0

    .line 369
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown item type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->g()V

    .line 437
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->f()V

    .line 438
    return-void
.end method

.method public c()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 540
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 541
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "android:menu:checked"

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->getItemId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 545
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 546
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$c;

    .line 547
    instance-of v4, v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    if-eqz v4, :cond_1

    .line 548
    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$e;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$e;->a()Landroid/support/v7/view/menu/h;

    move-result-object v4

    .line 549
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 550
    :goto_1
    if-eqz v0, :cond_1

    .line 551
    new-instance v5, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v5}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    .line 552
    invoke-virtual {v0, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 553
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 549
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 557
    :cond_3
    const-string v0, "android:menu:action_views"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 558
    return-object v1
.end method
