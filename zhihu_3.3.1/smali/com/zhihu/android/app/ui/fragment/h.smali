.class public Lcom/zhihu/android/app/ui/fragment/h;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "DraftsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/DraftList;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Lcom/zhihu/android/api/b/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/h;)Lcom/zhihu/android/api/b/o;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h;->m:Lcom/zhihu/android/api/b/o;

    return-object v0
.end method

.method public static u()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/h;

    const/4 v2, 0x0

    const-string v3, "drafts"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/DraftList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/DraftList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/DraftList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p1, Lcom/zhihu/android/api/model/DraftList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Draft;

    .line 238
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Draft;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 5
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h;->m:Lcom/zhihu/android/api/b/o;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextLimit()I

    move-result v1

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/h$3;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/h$3;-><init>(Lcom/zhihu/android/app/ui/fragment/h;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/zhihu/android/api/b/o;->a(JILcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 222
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h;->z()V

    .line 228
    const v0, 0x7f09039d

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/h;->f(I)V

    .line 229
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h;->m:Lcom/zhihu/android/api/b/o;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/h$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/h$2;-><init>(Lcom/zhihu/android/app/ui/fragment/h;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/o;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 206
    return-void
.end method

.method protected a_(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    .line 166
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 168
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 169
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/l;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/l;-><init>()V

    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    check-cast p1, Lcom/zhihu/android/api/model/DraftList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/h;->a(Lcom/zhihu/android/api/model/DraftList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->c()V

    .line 149
    const-string v0, "Drafts"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/h;->d(Z)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/h;->e(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/api/b/o;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/o;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h;->m:Lcom/zhihu/android/api/b/o;

    .line 70
    return-void
.end method

.method public onDraftEvent(Lcom/zhihu/android/app/d/i;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/h;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/h;->a(Z)V

    .line 252
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onPause()V

    .line 182
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onResume()V

    .line 175
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/h$1;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/h$1;-><init>(Lcom/zhihu/android/app/ui/fragment/h;II)V

    .line 141
    new-instance v1, Landroid/support/v7/widget/a/a;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/a/a;-><init>(Landroid/support/v7/widget/a/a$a;)V

    .line 142
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/h;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 143
    return-void
.end method
