.class public abstract Lcom/zhihu/android/app/ui/fragment/search/d;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "SearchResultBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected m:Lcom/zhihu/android/api/b/ad;

.field protected n:Lcom/zhihu/android/bumblebee/http/e;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/search/d;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/search/d;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/d;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/search/d;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/search/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/search/d;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/search/d;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/d;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/search/d;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/search/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->b:Z

    return p1
.end method


# virtual methods
.method protected abstract B()Ljava/lang/String;
.end method

.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/SearchResult;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/SearchResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/zhihu/android/api/model/SearchResult;->data:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p1, Lcom/zhihu/android/api/model/SearchResult;->data:Ljava/util/List;

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/ZHObject;

    .line 180
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ZHObject;->isTopic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const-class v3, Lcom/zhihu/android/api/model/Topic;

    invoke-static {v0, v3}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->e(Lcom/zhihu/android/api/model/Topic;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ZHObject;->isQuestion()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const-class v3, Lcom/zhihu/android/api/model/Question;

    invoke-static {v0, v3}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->c(Lcom/zhihu/android/api/model/Question;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ZHObject;->isPeople()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const-class v3, Lcom/zhihu/android/api/model/People;

    invoke-static {v0, v3}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->d(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_3
    return-object v1
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 6
    .parameter

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->m:Lcom/zhihu/android/api/b/ad;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/search/d$2;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/search/d$2;-><init>(Lcom/zhihu/android/app/ui/fragment/search/d;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zhihu/android/api/b/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 107
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->b:Z

    .line 137
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 113
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->m:Lcom/zhihu/android/api/b/ad;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->o:Ljava/lang/String;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/search/d$1;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/search/d$1;-><init>(Lcom/zhihu/android/app/ui/fragment/search/d;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/aj;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/aj;-><init>()V

    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    check-cast p1, Lcom/zhihu/android/api/model/SearchResult;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/d;->a(Lcom/zhihu/android/api/model/SearchResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-class v0, Lcom/zhihu/android/api/b/ad;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/search/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ad;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->m:Lcom/zhihu/android/api/b/ad;

    .line 64
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onDestroyView()V

    .line 77
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 80
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/d;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/d;->p:Ljava/lang/String;

    .line 71
    return-void
.end method
