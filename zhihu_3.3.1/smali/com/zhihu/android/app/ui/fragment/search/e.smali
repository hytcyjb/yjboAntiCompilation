.class public Lcom/zhihu/android/app/ui/fragment/search/e;
.super Lcom/zhihu/android/app/ui/fragment/search/d;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/search/d;",
        "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/search/d;-><init>()V

    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;

    .line 292
    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->f()Ljava/util/List;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h()V

    .line 298
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/search/e;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    return-object v0
.end method

.method private u()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->r()Lcom/zhihu/android/api/model/AppConfig;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/zhihu/android/api/model/AppConfig;->config:Lcom/zhihu/android/api/model/Config;

    if-eqz v3, :cond_0

    .line 272
    iget-object v0, v0, Lcom/zhihu/android/api/model/AppConfig;->config:Lcom/zhihu/android/api/model/Config;

    iget-byte v0, v0, Lcom/zhihu/android/api/model/Config;->enableSogou:B

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    move v2, v0

    .line 278
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 272
    goto :goto_0
.end method


# virtual methods
.method protected B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->q:Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;

    iget-object v0, v0, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/search/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 83
    const v1, 0x7f0400fc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    return-object v0
.end method

.method protected synthetic a(Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    check-cast p1, Lcom/zhihu/android/api/model/SearchResult;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/e;->b(Lcom/zhihu/android/api/model/SearchResult;)V

    return-void
.end method

.method public answerSearch(Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$a;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 246
    iget v0, p1, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$a;->a:I

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->q:Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;

    iget v1, v1, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;->a:I

    if-eq v0, v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p1, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->o:Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->C()V

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p1, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p1, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->o:Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/search/e;->a(Z)V

    goto :goto_0
.end method

.method public answerSearchHistoryLoader(Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$b;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->C()V

    .line 284
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/search/d;->b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/search/e$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/search/e$2;-><init>(Lcom/zhihu/android/app/ui/fragment/search/e;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$a;)V

    .line 150
    return-object v0
.end method

.method protected b(Lcom/zhihu/android/api/model/SearchResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 159
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->b:Z

    .line 161
    if-nez p1, :cond_6

    .line 163
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v0

    if-gtz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09034d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->d:Ljava/lang/String;

    .line 177
    :goto_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->i()I

    move-result v0

    if-nez v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h()V

    .line 183
    :goto_2
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/e;->a(Lcom/zhihu/android/api/model/SearchResult;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->r:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->l()I

    move-result v3

    if-lez v3, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->l()I

    move-result v3

    invoke-static {v3}, Lcom/zhihu/android/app/ui/widget/c/a;->a(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->d:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 194
    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/search/e;->c(Z)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_4
    :goto_3
    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->c:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->d:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 202
    invoke-static {}, Lcom/zhihu/android/app/ui/widget/c/a;->a()Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_5
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->b(Ljava/util/List;)V

    goto :goto_0

    .line 170
    :cond_6
    iget-object v0, p1, Lcom/zhihu/android/api/model/SearchResult;->paging:Lcom/zhihu/android/api/model/Paging;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/search/e;->b(Lcom/zhihu/android/api/model/Paging;)V

    .line 172
    iget-object v0, p1, Lcom/zhihu/android/api/model/SearchResult;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/zhihu/android/api/model/SearchResult;->paging:Lcom/zhihu/android/api/model/Paging;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/zhihu/android/api/model/SearchResult;->paging:Lcom/zhihu/android/api/model/Paging;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    if-eqz v0, :cond_8

    :cond_7
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->c:Z

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->d:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move v0, v1

    .line 172
    goto :goto_4

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->i(I)V

    goto :goto_2

    .line 196
    :cond_a
    iget-object v2, p1, Lcom/zhihu/android/api/model/SearchResult;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 198
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/search/e;->c(Z)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected c(Z)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;
    .locals 2
    .parameter

    .prologue
    .line 215
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->q:Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;

    iget v0, v0, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 216
    invoke-static {}, Lcom/zhihu/android/app/ui/widget/c/a;->b()Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/d;->c(Z)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f100244

    if-ne v1, v2, :cond_2

    .line 232
    invoke-virtual {p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->g()I

    move-result v1

    .line 233
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h(I)V

    .line 235
    invoke-virtual {p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->t_()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->t_()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/d;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "extra_tab_config"

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/search/e;->a(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_tab_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->q:Lcom/zhihu/android/app/ui/fragment/search/SearchFragment$SearchTabConfig;

    .line 75
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/search/d;->onDestroyView()V

    .line 129
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/search/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->g:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/search/e$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/search/e$1;-><init>(Lcom/zhihu/android/app/ui/fragment/search/e;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 118
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/e;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v1, Lcom/zhihu/android/app/ui/widget/g;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/ui/widget/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 120
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/search/e;->C()V

    .line 122
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
