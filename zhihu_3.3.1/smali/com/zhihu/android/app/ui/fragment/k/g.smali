.class public Lcom/zhihu/android/app/ui/fragment/k/g;
.super Lcom/zhihu/android/app/ui/fragment/e;
.source "NotificationTabsFragment.java"


# instance fields
.field private d:Lcom/zhihu/android/api/b/y;

.field private e:Lcom/zhihu/android/app/ui/widget/b/c;

.field private f:Lcom/zhihu/android/app/ui/widget/b/c;

.field private g:Lcom/zhihu/android/app/ui/widget/b/c;

.field private h:Lcom/zhihu/android/bumblebee/http/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/k/g;Lcom/zhihu/android/bumblebee/http/e;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->h:Lcom/zhihu/android/bumblebee/http/e;

    return-object p1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/k/g;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->h()V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/k/g;)Lcom/zhihu/android/app/ui/widget/adapter/ab;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->c:Lcom/zhihu/android/app/ui/widget/adapter/ab;

    return-object v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/k/g;)Lcom/zhihu/android/a/as;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    return-object v0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/k/g;)Lcom/zhihu/android/a/as;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    return-object v0
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/k/g;)Lcom/zhihu/android/a/as;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    return-object v0
.end method

.method public static e()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/k/g;

    const/4 v2, 0x0

    const-string v3, "notification-tabs"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/k/g;)Lcom/zhihu/android/a/as;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    return-object v0
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/k/g;)Lcom/zhihu/android/app/ui/widget/adapter/ab;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->c:Lcom/zhihu/android/app/ui/widget/adapter/ab;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->f()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    iget-object v1, v1, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    if-nez v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    iget-object v1, v1, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHViewPager;->getCurrentItem()I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->e:Lcom/zhihu/android/app/ui/widget/b/c;

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/NotificationBadge;->hasNewContent()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 221
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->e:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/b/c;->start()V

    .line 226
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->f:Lcom/zhihu/android/app/ui/widget/b/c;

    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/NotificationBadge;->hasNewFollow()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 228
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->f:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/b/c;->start()V

    .line 233
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->g:Lcom/zhihu/android/app/ui/widget/b/c;

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/NotificationBadge;->hasNewLike()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_6

    .line 235
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->g:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/c;->start()V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->e:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/b/c;->stop()V

    goto :goto_1

    .line 230
    :cond_5
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->f:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/b/c;->stop()V

    goto :goto_2

    .line 237
    :cond_6
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->g:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/c;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x0

    const v4, 0x7f0f012a

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/ui/widget/b/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->e:Lcom/zhihu/android/app/ui/widget/b/c;

    .line 104
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/ui/widget/b/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->f:Lcom/zhihu/android/app/ui/widget/b/c;

    .line 105
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/ui/widget/b/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->g:Lcom/zhihu/android/app/ui/widget/b/c;

    .line 107
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->e:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/zhihu/android/app/ui/widget/b/c;->a(Landroid/content/res/Resources;I)V

    .line 108
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->f:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/zhihu/android/app/ui/widget/b/c;->a(Landroid/content/res/Resources;I)V

    .line 109
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->g:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/zhihu/android/app/ui/widget/b/c;->a(Landroid/content/res/Resources;I)V

    .line 111
    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/k/c;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->e:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-direct {v1, v2, v3, v5}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/k/d;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->f:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-direct {v1, v2, v3, v5}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/k/e;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->g:Lcom/zhihu/android/app/ui/widget/b/c;

    invoke-direct {v1, v2, v3, v5}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object v0
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->z()V

    .line 246
    const v0, 0x7f0903a9

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/k/g;->f(I)V

    .line 247
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->c()V

    .line 278
    const-string v0, "NotifyContent"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public f()Lcom/zhihu/android/api/model/NotificationBadge;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/k/g;->setHasOptionsMenu(Z)V

    .line 72
    const-class v0, Lcom/zhihu/android/api/b/y;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/k/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/y;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->d:Lcom/zhihu/android/api/b/y;

    .line 73
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->onDestroyView()V

    .line 93
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->h:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 97
    :cond_0
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->h()V

    .line 211
    return-void
.end method

.method public onNotificationRead(Lcom/zhihu/android/app/d/l;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->f()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/l;->a()Lcom/zhihu/android/api/model/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/api/model/Notification;->setIsRead(Z)V

    .line 256
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->d:Lcom/zhihu/android/api/b/y;

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/l;->a()Lcom/zhihu/android/api/model/Notification;

    move-result-object v1

    iget-object v1, v1, Lcom/zhihu/android/api/model/Notification;->id:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/k/g$3;

    invoke-direct {v2, p0, p1}, Lcom/zhihu/android/app/ui/fragment/k/g$3;-><init>(Lcom/zhihu/android/app/ui/fragment/k/g;Lcom/zhihu/android/app/d/l;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/y;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f100284

    .line 83
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/e;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 84
    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 87
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/e;->onResume()V

    .line 78
    invoke-static {}, Lcom/zhihu/android/app/push/b;->a()Lcom/zhihu/android/app/push/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/k/g;->f()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 122
    iget-boolean v1, v0, Lcom/zhihu/android/api/model/NotificationBadge;->tabViewed:Z

    if-nez v1, :cond_0

    .line 123
    iput-boolean v3, v0, Lcom/zhihu/android/api/model/NotificationBadge;->tabViewed:Z

    .line 124
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/d/k;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v1, v2}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 127
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->c:Lcom/zhihu/android/app/ui/widget/adapter/ab;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/adapter/ab;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHViewPager;->setOffscreenPageLimit(I)V

    .line 128
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/k/g$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/k/g$1;-><init>(Lcom/zhihu/android/app/ui/fragment/k/g;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 167
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->d:Lcom/zhihu/android/api/b/y;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/k/g$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/k/g$2;-><init>(Lcom/zhihu/android/app/ui/fragment/k/g;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/y;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/k/g;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 206
    return-void
.end method
