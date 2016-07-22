.class public Lcom/zhihu/android/app/ui/fragment/k/c;
.super Lcom/zhihu/android/app/ui/fragment/k/a;
.source "NotificationContentFragment.java"

# interfaces
.implements Lcom/zhihu/android/app/ui/widget/holder/NotificationContentViewHolder$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/k/a",
        "<",
        "Lcom/zhihu/android/api/model/NotificationList;",
        ">;",
        "Lcom/zhihu/android/app/ui/widget/holder/NotificationContentViewHolder$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/k/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/k/c;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/k/c;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/k/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/k/c;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/k/c;->b(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 156
    iput-boolean v3, v0, Lcom/zhihu/android/api/model/NotificationBadge;->contentHasNew:Z

    .line 157
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/d/k;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v1, v2}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->m:Lcom/zhihu/android/api/b/y;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/c;->D()Lcom/zhihu/android/bumblebee/b/c;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/zhihu/android/api/b/y;->d(ZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 159
    return-void
.end method

.method public G()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/c;->E()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 164
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/zhihu/android/api/model/NotificationBadge;->newContentCount:J

    .line 165
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/d/k;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v1, v2}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/c;->u()V

    .line 168
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->m:Lcom/zhihu/android/api/b/y;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/c;->F()Lcom/zhihu/android/bumblebee/b/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/y;->a(ZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 169
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/NotificationList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/NotificationList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/NotificationList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p1, Lcom/zhihu/android/api/model/NotificationList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Notification;

    .line 146
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Notification;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    return-object v1
.end method

.method public a(Lcom/zhihu/android/api/model/Notification;)V
    .locals 3
    .parameter

    .prologue
    .line 173
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/Notification;->isRead:Z

    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/d/l;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/zhihu/android/app/d/l;-><init>(Lcom/zhihu/android/api/model/Notification;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 176
    :cond_0
    return-void
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 4
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-static {v0}, Lcom/zhihu/android/app/util/ak;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 125
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->m:Lcom/zhihu/android/api/b/y;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v2

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/k/c$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/k/c$3;-><init>(Lcom/zhihu/android/app/ui/fragment/k/c;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/y;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 137
    return-void
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-static {v0}, Lcom/zhihu/android/app/util/ak;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 96
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->m:Lcom/zhihu/android/api/b/y;

    const-wide/16 v2, 0x0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/k/c$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/k/c$2;-><init>(Lcom/zhihu/android/app/ui/fragment/k/c;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/y;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 113
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/y;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/y;-><init>()V

    .line 74
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/k/c$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/k/c$1;-><init>(Lcom/zhihu/android/app/ui/fragment/k/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$a;)V

    .line 85
    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    check-cast p1, Lcom/zhihu/android/api/model/NotificationList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/k/c;->a(Lcom/zhihu/android/api/model/NotificationList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/k/a;->onDestroyView()V

    .line 63
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/k;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->p:Ljava/util/concurrent/atomic/AtomicReference;

    iget-wide v2, v0, Lcom/zhihu/android/api/model/NotificationBadge;->newContentCount:J

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->d(I)V

    .line 120
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/k/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcom/zhihu/android/app/ui/widget/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/ui/widget/c;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0, v2, v2}, Lcom/zhihu/android/app/ui/widget/c;->a(II)V

    .line 56
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 57
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
