.class public Lcom/zhihu/android/app/ui/fragment/n/f;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "RoundTableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/RoundTableList;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Lcom/zhihu/android/api/b/ac;

.field private n:Lcom/zhihu/android/app/ui/widget/b/b;

.field private o:Landroid/view/MenuItem;

.field private p:Lcom/zhihu/android/app/ui/widget/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/n/f;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/n/f;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/n/f;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/n/f;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/f;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method public static u()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/n/f;

    const/4 v2, 0x0

    const-string v3, "round-table-list"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 75
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/RoundTableList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/RoundTableList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/RoundTableList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p1, Lcom/zhihu/android/api/model/RoundTableList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/RoundTable;

    .line 192
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/RoundTable;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    return-object v1
.end method

.method public a(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 4
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/f;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->o:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/zhihu/android/api/model/NotificationBadge;->shouldShakeBell()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->start()V

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->n:Lcom/zhihu/android/app/ui/widget/b/b;

    if-eqz v0, :cond_0

    .line 291
    iget-wide v0, p1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->n:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->a()V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_1

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->n:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->c()V

    goto :goto_0
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 4
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->m:Lcom/zhihu/android/api/b/ac;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v2

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/n/f$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/n/f$3;-><init>(Lcom/zhihu/android/app/ui/fragment/n/f;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/ac;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 183
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    const v1, 0x7f0903b1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(I)V

    .line 102
    new-instance v0, Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/f;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/support/v7/c/a/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/c/a/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/b/b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->n:Lcom/zhihu/android/app/ui/widget/b/b;

    .line 103
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->n:Lcom/zhihu/android/app/ui/widget/b/b;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/b/b;->setAlpha(I)V

    .line 104
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->n:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->n:Lcom/zhihu/android/app/ui/widget/b/b;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/n/f$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/n/f$1;-><init>(Lcom/zhihu/android/app/ui/fragment/n/f;)V

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->m:Lcom/zhihu/android/api/b/ac;

    const-wide/16 v2, 0x0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/n/f$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/n/f$2;-><init>(Lcom/zhihu/android/app/ui/fragment/n/f;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/ac;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 157
    return-void
.end method

.method protected a_(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    .line 124
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 125
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 126
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/ai;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/ai;-><init>()V

    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 66
    check-cast p1, Lcom/zhihu/android/api/model/RoundTableList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Lcom/zhihu/android/api/model/RoundTableList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->c()V

    .line 118
    const-string v0, "RoundTables"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/f;->d(Z)V

    .line 84
    const-class v0, Lcom/zhihu/android/api/b/ac;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ac;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->m:Lcom/zhihu/android/api/b/ac;

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 238
    const v0, 0x7f110014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onHiddenChanged(Z)V

    .line 225
    if-nez p1, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/f;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_0
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/k;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 275
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 258
    :goto_0
    return v0

    .line 246
    :pswitch_0
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    .line 254
    :goto_1
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 258
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/k/g;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x7f100283
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onPause()V

    .line 208
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    .line 212
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 264
    const v0, 0x7f100284

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->o:Landroid/view/MenuItem;

    .line 265
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->o:Landroid/view/MenuItem;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 266
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhihu/android/app/ui/widget/b/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    .line 268
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->o:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/n/f;->p:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 269
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onResume()V

    .line 217
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/f;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/f;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 220
    return-void
.end method
