.class public Lcom/zhihu/android/app/ui/fragment/j/a;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/app/c/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Lcom/zhihu/android/app/c/c;

.field private n:Lcom/zhihu/android/app/ui/widget/adapter/s;

.field private o:Lrx/subscriptions/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    .line 64
    new-instance v0, Lrx/subscriptions/b;

    invoke-direct {v0}, Lrx/subscriptions/b;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->o:Lrx/subscriptions/b;

    return-void
.end method

.method private B()V
    .locals 5

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/j/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0901f0

    const v3, 0x7f0900bd

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/content/Context;IIIZ)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/j/a$4;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/j/a$4;-><init>(Lcom/zhihu/android/app/ui/fragment/j/a;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 243
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/j/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/j/a;)Lcom/zhihu/android/app/ui/widget/adapter/s;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->n:Lcom/zhihu/android/app/ui/widget/adapter/s;

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/j/a;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/j/a;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/j/a;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/j/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/j/a;)Lcom/zhihu/android/app/c/c;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->m:Lcom/zhihu/android/app/c/c;

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/j/a;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/j/a;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/j/a;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/j/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static u()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/j/a;

    const/4 v2, 0x0

    const-string v3, "history"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 76
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/app/c/a/b;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/app/c/a/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v0, p1, Lcom/zhihu/android/app/c/a/b;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/c/a/a;

    .line 203
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/app/c/a/a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 3
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->o:Lrx/subscriptions/b;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->m:Lcom/zhihu/android/app/c/c;

    iget-object v2, p1, Lcom/zhihu/android/api/model/Paging;->afterId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/c/c;->a(I)Lrx/b;

    move-result-object v1

    .line 179
    invoke-static {}, Lrx/a/b/a;->a()Lrx/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/b;->observeOn(Lrx/e;)Lrx/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/j/a$3;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/j/a$3;-><init>(Lcom/zhihu/android/app/ui/fragment/j/a;)V

    .line 180
    invoke-virtual {v1, v2}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lrx/subscriptions/b;->a(Lrx/i;)V

    .line 197
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f0903a2

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/j/a;->f(I)V

    .line 83
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/j/a;->z()V

    .line 84
    return-void
.end method

.method protected a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->o:Lrx/subscriptions/b;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->m:Lcom/zhihu/android/app/c/c;

    invoke-virtual {v1}, Lcom/zhihu/android/app/c/c;->c()Lrx/b;

    move-result-object v1

    .line 156
    invoke-static {}, Lrx/a/b/a;->a()Lrx/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/b;->observeOn(Lrx/e;)Lrx/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/j/a$2;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/j/a$2;-><init>(Lcom/zhihu/android/app/ui/fragment/j/a;)V

    .line 157
    invoke-virtual {v1, v2}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lrx/subscriptions/b;->a(Lrx/i;)V

    .line 174
    return-void
.end method

.method protected a_(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 232
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->n:Lcom/zhihu/android/app/ui/widget/adapter/s;

    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/zhihu/android/app/c/a/b;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/j/a;->a(Lcom/zhihu/android/app/c/a/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->c()V

    .line 100
    const-string v0, "History"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/j/a;->d(Z)V

    .line 70
    new-instance v0, Lcom/zhihu/android/app/c/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/j/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/c/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->m:Lcom/zhihu/android/app/c/c;

    .line 71
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/s;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/s;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->n:Lcom/zhihu/android/app/ui/widget/adapter/s;

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 211
    const v0, 0x7f11000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 212
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onDestroyView()V

    .line 226
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->o:Lrx/subscriptions/b;

    invoke-virtual {v0}, Lrx/subscriptions/b;->unsubscribe()V

    .line 227
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100274

    if-ne v0, v1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/j/a;->B()V

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    new-instance v0, Lcom/zhihu/android/app/ui/widget/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/j/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/ui/widget/c;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/j/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4290

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/c;->a(II)V

    .line 111
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 113
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->o:Lrx/subscriptions/b;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/j/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-static {v1}, Lcom/zhihu/android/app/ui/widget/a/b;->a(Lcom/zhihu/android/base/widget/ZHRecyclerView;)Lrx/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/j/a$1;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/j/a$1;-><init>(Lcom/zhihu/android/app/ui/fragment/j/a;)V

    invoke-virtual {v1, v2}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subscriptions/b;->a(Lrx/i;)V

    .line 151
    return-void
.end method
