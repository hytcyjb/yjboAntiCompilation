.class public Lcom/zhihu/android/app/ui/fragment/g/d;
.super Lcom/zhihu/android/app/ui/fragment/e;
.source "ExploreFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/g/d$a;
    }
.end annotation


# instance fields
.field private d:Lcom/zhihu/android/api/b/p;

.field private e:Lcom/zhihu/android/a/bh;

.field private f:Lcom/zhihu/android/app/util/FabScrollHelper;

.field private g:I

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/app/ui/fragment/g/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/zhihu/android/app/ui/widget/b/b;

.field private m:Landroid/view/MenuItem;

.field private n:Lcom/zhihu/android/app/ui/widget/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/e;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/g/d;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->g:I

    return p1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/g/d;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/g/d;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->g:I

    return v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/g/d;)Lcom/zhihu/android/app/util/FabScrollHelper;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->f:Lcom/zhihu/android/app/util/FabScrollHelper;

    return-object v0
.end method

.method public static e()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/g/d;

    const/4 v2, 0x0

    const-string v3, "explore"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 81
    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->e:Lcom/zhihu/android/a/bh;

    iget-object v0, v0, Lcom/zhihu/android/a/bh;->c:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->c:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->e:Lcom/zhihu/android/a/bh;

    invoke-virtual {v1}, Lcom/zhihu/android/a/bh;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->addView(Landroid/view/View;)V

    .line 247
    new-instance v0, Lcom/zhihu/android/app/util/FabScrollHelper;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->e:Lcom/zhihu/android/a/bh;

    iget-object v1, v1, Lcom/zhihu/android/a/bh;->c:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/util/FabScrollHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->f:Lcom/zhihu/android/app/util/FabScrollHelper;

    .line 248
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 126
    const v2, 0x7f040087

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/bh;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->e:Lcom/zhihu/android/a/bh;

    .line 128
    return-object v1
.end method

.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/app/ui/widget/adapter/ab$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/g/b;

    const v3, 0x7f0901bb

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/g/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/g/e;

    const v3, 0x7f0901bd

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/g/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/g/c;

    const v3, 0x7f0901bc

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/g/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 235
    return-void
.end method

.method public a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->a(J)V

    .line 201
    return-void
.end method

.method public a(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 4
    .parameter

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/g/d;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->m:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/zhihu/android/api/model/NotificationBadge;->shouldShakeBell()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->start()V

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->i:Lcom/zhihu/android/app/ui/widget/b/b;

    if-eqz v0, :cond_0

    .line 341
    iget-wide v0, p1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->i:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->a()V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_1

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->i:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->c()V

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/app/ui/fragment/g/a;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p1, Lcom/zhihu/android/app/ui/fragment/g/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/g/d$2;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/g/d$2;-><init>(Lcom/zhihu/android/app/ui/fragment/g/d;Lcom/zhihu/android/app/ui/fragment/g/a;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/a;)V

    .line 190
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    const v1, 0x7f09039e

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(I)V

    .line 136
    new-instance v0, Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/g/d;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/support/v7/c/a/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/g/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/c/a/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/b/b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->i:Lcom/zhihu/android/app/ui/widget/b/b;

    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->i:Lcom/zhihu/android/app/ui/widget/b/b;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/b/b;->setAlpha(I)V

    .line 138
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->i:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->i:Lcom/zhihu/android/app/ui/widget/b/b;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/g/d$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/g/d$1;-><init>(Lcom/zhihu/android/app/ui/fragment/g/d;)V

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/g/d;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 219
    :pswitch_0
    const-string v0, "HotRecommend"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_1
    const-string v0, "HotDay"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_2
    const-string v0, "HotCollection"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Lcom/zhihu/android/app/ui/fragment/g/a;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p1, Lcom/zhihu/android/app/ui/fragment/g/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/a;)V

    .line 196
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->c()V

    .line 105
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 107
    :pswitch_0
    const-string v0, "HotRecommend"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v0, "HotDay"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "HotCollection"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public f()Lcom/zhihu/android/api/b/p;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->d:Lcom/zhihu/android/api/b/p;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->e:Lcom/zhihu/android/a/bh;

    iget-object v0, v0, Lcom/zhihu/android/a/bh;->c:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    if-ne p1, v0, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Z)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/g/d;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-class v0, Lcom/zhihu/android/api/b/p;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/g/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/p;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->d:Lcom/zhihu/android/api/b/p;

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 291
    const v0, 0x7f110014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 292
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onHiddenChanged(Z)V

    .line 278
    if-nez p1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/g/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/g/d;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_0
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/k;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 324
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/g/d;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 325
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 296
    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 305
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 308
    :goto_0
    return v0

    .line 299
    :pswitch_0
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    .line 307
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/g/d;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/k/g;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 297
    :pswitch_data_0
    .packed-switch 0x7f100283
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->onPause()V

    .line 261
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    .line 265
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 314
    const v0, 0x7f100284

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->m:Landroid/view/MenuItem;

    .line 315
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->m:Landroid/view/MenuItem;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 316
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/g/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 317
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/g/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhihu/android/app/ui/widget/b/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    .line 318
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->m:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->n:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 319
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->onResume()V

    .line 270
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/g/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 272
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/g/d;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 273
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHViewPager;->setOffscreenPageLimit(I)V

    .line 97
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/g/d;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 99
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/g/d;->h()V

    .line 100
    return-void
.end method
