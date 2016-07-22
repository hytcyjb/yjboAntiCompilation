.class public Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;
.super Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;
.source "BannerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$b;,
        Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder",
        "<",
        "Lcom/zhihu/android/api/model/Carousel;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Lcom/zhihu/android/a/cb;

.field private p:Lcom/zhihu/android/app/ui/widget/adapter/f;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Landroid/databinding/e;->a(Landroid/view/View;)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/cb;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->l:Lcom/zhihu/android/a/cb;

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->p:Lcom/zhihu/android/app/ui/widget/adapter/f;

    .line 51
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->p:Lcom/zhihu/android/app/ui/widget/adapter/f;

    new-instance v1, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$1;-><init>(Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/f;->a(Lcom/zhihu/android/app/ui/widget/adapter/f$a;)V

    .line 69
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->l:Lcom/zhihu/android/a/cb;

    iget-object v0, v0, Lcom/zhihu/android/a/cb;->c:Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$a;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$a;-><init>(Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;->a(ZLandroid/support/v4/view/ViewPager$g;)V

    .line 71
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->l:Lcom/zhihu/android/a/cb;

    iget-object v0, v0, Lcom/zhihu/android/a/cb;->c:Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;->setOffscreenPageLimit(I)V

    .line 73
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->l:Lcom/zhihu/android/a/cb;

    iget-object v0, v0, Lcom/zhihu/android/a/cb;->c:Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->p:Lcom/zhihu/android/app/ui/widget/adapter/f;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 75
    new-instance v0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$2;-><init>(Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 87
    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->l:Lcom/zhihu/android/a/cb;

    iget-object v0, v0, Lcom/zhihu/android/a/cb;->c:Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;->k()V

    .line 122
    return-void
.end method

.method private D()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->l:Lcom/zhihu/android/a/cb;

    iget-object v0, v0, Lcom/zhihu/android/a/cb;->c:Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/AutoScrollViewPager;->l()V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;)Lcom/zhihu/android/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->l:Lcom/zhihu/android/a/cb;

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;)Lcom/zhihu/android/app/ui/widget/adapter/f;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->p:Lcom/zhihu/android/app/ui/widget/adapter/f;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/zhihu/android/api/model/Carousel;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->b(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->p:Lcom/zhihu/android/app/ui/widget/adapter/f;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/widget/adapter/f;->a(Lcom/zhihu/android/api/model/Carousel;)V

    .line 94
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/zhihu/android/api/model/Carousel;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->a(Lcom/zhihu/android/api/model/Carousel;)V

    return-void
.end method

.method public onBannerAutoScrollEvent(Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$b;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->C()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/widget/holder/BannerViewHolder;->D()V

    goto :goto_0
.end method
