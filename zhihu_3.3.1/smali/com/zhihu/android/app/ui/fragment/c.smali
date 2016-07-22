.class public abstract Lcom/zhihu/android/app/ui/fragment/c;
.super Lcom/zhihu/android/app/ui/fragment/o;
.source "BaseAdvancePagingFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zhihu/android/api/model/ZHObjectList;",
        ">",
        "Lcom/zhihu/android/app/ui/fragment/o;",
        "Landroid/support/v4/widget/SwipeRefreshLayout$a;"
    }
.end annotation


# instance fields
.field protected a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

.field protected b:Z

.field protected c:Z

.field protected d:Ljava/lang/String;

.field protected e:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

.field protected g:Lcom/zhihu/android/base/widget/ZHFrameLayout;

.field protected h:Lcom/zhihu/android/bumblebee/http/e;

.field protected i:Landroid/support/v7/widget/RecyclerView$l;

.field private m:Lcom/zhihu/android/api/model/Paging;

.field private n:Lcom/zhihu/android/app/ui/fragment/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;-><init>()V

    .line 91
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/c$1;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/c$1;-><init>(Lcom/zhihu/android/app/ui/fragment/c;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->i:Landroid/support/v7/widget/RecyclerView$l;

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c;)Lcom/zhihu/android/app/ui/fragment/c$a;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->n:Lcom/zhihu/android/app/ui/fragment/c$a;

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/c;)Lcom/zhihu/android/api/model/Paging;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->m:Lcom/zhihu/android/api/model/Paging;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c;->b(Z)V

    .line 411
    return-void
.end method

.method protected abstract a(Lcom/zhihu/android/api/model/Paging;)V
.end method

.method protected a(Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 277
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/c;->b:Z

    .line 279
    if-nez p1, :cond_5

    .line 281
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v0

    if-gtz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09034d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    .line 295
    :goto_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->i()I

    move-result v0

    if-nez v0, :cond_8

    .line 296
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h()V

    .line 301
    :goto_2
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->l()I

    move-result v3

    if-lez v3, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->l()I

    move-result v3

    invoke-static {v3}, Lcom/zhihu/android/app/ui/widget/c/a;->a(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 307
    :cond_2
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 308
    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/c;->c(Z)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_3
    :goto_3
    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/c;->c:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 316
    invoke-static {}, Lcom/zhihu/android/app/ui/widget/c/a;->a()Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->b(Ljava/util/List;)V

    goto :goto_0

    .line 288
    :cond_5
    iget-object v0, p1, Lcom/zhihu/android/api/model/ZHObjectList;->paging:Lcom/zhihu/android/api/model/Paging;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c;->b(Lcom/zhihu/android/api/model/Paging;)V

    .line 290
    iget-object v0, p1, Lcom/zhihu/android/api/model/ZHObjectList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/zhihu/android/api/model/ZHObjectList;->paging:Lcom/zhihu/android/api/model/Paging;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/zhihu/android/api/model/ZHObjectList;->paging:Lcom/zhihu/android/api/model/Paging;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->c:Z

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move v0, v1

    .line 290
    goto :goto_4

    .line 298
    :cond_8
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->i(I)V

    goto :goto_2

    .line 310
    :cond_9
    iget-object v2, p1, Lcom/zhihu/android/api/model/ZHObjectList;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 312
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/c;->c(Z)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public a(Lcom/zhihu/android/app/ui/fragment/c$a;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/c;->n:Lcom/zhihu/android/app/ui/fragment/c$a;

    .line 88
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;

    if-eqz v0, :cond_0

    .line 324
    check-cast p1, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;

    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    goto :goto_0
.end method

.method protected abstract a(Z)V
.end method

.method protected a_(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    return-void
.end method

.method protected abstract b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
.end method

.method protected b(Lcom/zhihu/android/api/model/Paging;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/c;->m:Lcom/zhihu/android/api/model/Paging;

    .line 265
    return-void
.end method

.method protected b(Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    if-nez p1, :cond_4

    .line 338
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09034e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    .line 345
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 347
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/c;->b:Z

    .line 349
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;

    move-result-object v0

    .line 351
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 352
    new-instance v3, Lcom/zhihu/android/app/ui/widget/holder/ErrorCardViewHolder$a;

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/c$3;

    invoke-direct {v5, p0}, Lcom/zhihu/android/app/ui/fragment/c$3;-><init>(Lcom/zhihu/android/app/ui/fragment/c;)V

    new-instance v6, Lcom/zhihu/android/app/ui/fragment/c$4;

    invoke-direct {v6, p0}, Lcom/zhihu/android/app/ui/fragment/c$4;-><init>(Lcom/zhihu/android/app/ui/fragment/c;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/zhihu/android/app/ui/widget/holder/ErrorCardViewHolder$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-static {v3}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/app/ui/widget/holder/ErrorCardViewHolder$a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_2
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v4}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILjava/util/List;)V

    .line 386
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h(I)V

    .line 389
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    new-array v2, v2, [Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->n()I

    move-result v3

    invoke-static {v3}, Lcom/zhihu/android/app/ui/widget/c/a;->a(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a([Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    goto :goto_0

    .line 340
    :cond_4
    iget-object v0, p1, Lcom/zhihu/android/api/model/ZHObjectList;->paging:Lcom/zhihu/android/api/model/Paging;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c;->b(Lcom/zhihu/android/api/model/Paging;)V

    .line 342
    iget-object v0, p1, Lcom/zhihu/android/api/model/ZHObjectList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/zhihu/android/api/model/ZHObjectList;->paging:Lcom/zhihu/android/api/model/Paging;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/zhihu/android/api/model/ZHObjectList;->paging:Lcom/zhihu/android/api/model/Paging;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    if-eqz v0, :cond_6

    :cond_5
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->c:Z

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 397
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;

    if-eqz v0, :cond_0

    .line 398
    check-cast p1, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;

    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->b:Z

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->c:Z

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->d:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-static {v0}, Lcom/zhihu/android/app/util/ak;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 422
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->a(Z)V

    .line 423
    return-void
.end method

.method protected c(Z)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;
    .locals 6
    .parameter

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    new-instance v0, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;

    const v1, 0x7f09034d

    const v2, 0x7f01004a

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->j()I

    move-result v3

    const v4, 0x7f09034f

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/c$5;

    invoke-direct {v5, p0}, Lcom/zhihu/android/app/ui/fragment/c$5;-><init>(Lcom/zhihu/android/app/ui/fragment/c;)V

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;-><init>(IIIILandroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->k()Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation
.end method

.method public d()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    return-object v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f04004b

    return v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method protected g()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->n()I

    move-result v0

    .line 215
    if-le v0, v2, :cond_2

    .line 216
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(I)V

    .line 217
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->b(I)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->b(I)V

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c$2;-><init>(Lcom/zhihu/android/app/ui/fragment/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method protected j()I
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->l()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected k()Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;
    .locals 4

    .prologue
    .line 248
    new-instance v0, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;

    const v1, 0x7f09034c

    const v2, 0x7f010049

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->j()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;-><init>(III)V

    return-object v0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method protected n()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method protected o()Lcom/zhihu/android/api/model/Paging;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->m:Lcom/zhihu/android/api/model/Paging;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->f()V

    .line 172
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c;->h()V

    .line 173
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c;->i:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->b(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 179
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->onDestroyView()V

    .line 180
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-static {v0}, Lcom/zhihu/android/app/util/ak;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 181
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 152
    const v0, 0x7f10001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHRecyclerView;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    .line 154
    const v0, 0x7f100009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHFrameLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->g:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    .line 156
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V

    .line 158
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setHasFixedSize(Z)V

    .line 159
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 160
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 161
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c;->a_(Landroid/support/v7/widget/RecyclerView;)V

    .line 163
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c;->i:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 164
    return-void
.end method
