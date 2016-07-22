.class public Lcom/zhihu/android/app/ui/fragment/d/d;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "FavoritesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/CollectionList;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private m:Lcom/zhihu/android/api/b/z;

.field private n:Lcom/zhihu/android/app/util/au;

.field private o:Lcom/zhihu/android/app/ui/widget/b/b;

.field private p:Landroid/view/MenuItem;

.field private q:Lcom/zhihu/android/app/ui/widget/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    .line 86
    new-instance v0, Lcom/zhihu/android/app/util/au;

    invoke-direct {v0}, Lcom/zhihu/android/app/util/au;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->n:Lcom/zhihu/android/app/util/au;

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/d/d;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/d/d;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/d/d;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/d/d;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/d/d;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/d;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method public static u()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/d/d;

    const/4 v2, 0x0

    const-string v3, "favorites"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 93
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 109
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4180

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    .line 110
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    const/16 v3, 0x55

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 113
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 115
    if-eqz v0, :cond_0

    .line 116
    const v1, 0x7f04008d

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    .line 117
    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->n:Lcom/zhihu/android/app/util/au;

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    invoke-virtual {v1, p0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    :cond_0
    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/CollectionList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/CollectionList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/CollectionList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p1, Lcom/zhihu/android/api/model/CollectionList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Collection;

    .line 215
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->b(Lcom/zhihu/android/api/model/Collection;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_0
    return-object v1
.end method

.method public a(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 4
    .parameter

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->p:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/zhihu/android/api/model/NotificationBadge;->shouldShakeBell()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->start()V

    .line 346
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->o:Lcom/zhihu/android/app/ui/widget/b/b;

    if-eqz v0, :cond_0

    .line 347
    iget-wide v0, p1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->o:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->a()V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_1

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->o:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->c()V

    goto :goto_0
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 6
    .parameter

    .prologue
    .line 184
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->m:Lcom/zhihu/android/api/b/z;

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v2

    const/16 v4, 0x14

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/d/d$2;

    invoke-direct {v5, p0}, Lcom/zhihu/android/app/ui/fragment/d/d$2;-><init>(Lcom/zhihu/android/app/ui/fragment/d/d;)V

    invoke-interface/range {v0 .. v5}, Lcom/zhihu/android/api/b/z;->e(Ljava/lang/String;JILcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 207
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 224
    const v0, 0x7f09039f

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->f(I)V

    .line 226
    new-instance v0, Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/support/v7/c/a/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/c/a/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/b/b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->o:Lcom/zhihu/android/app/ui/widget/b/b;

    .line 227
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->o:Lcom/zhihu/android/app/ui/widget/b/b;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/b/b;->setAlpha(I)V

    .line 228
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->o:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->o:Lcom/zhihu/android/app/ui/widget/b/b;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/d/d$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/d/d$3;-><init>(Lcom/zhihu/android/app/ui/fragment/d/d;)V

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method protected a(Z)V
    .locals 6
    .parameter

    .prologue
    .line 156
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    .line 157
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->m:Lcom/zhihu/android/api/b/z;

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x14

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/d/d$1;

    invoke-direct {v5, p0}, Lcom/zhihu/android/app/ui/fragment/d/d$1;-><init>(Lcom/zhihu/android/app/ui/fragment/d/d;)V

    invoke-interface/range {v0 .. v5}, Lcom/zhihu/android/api/b/z;->e(Ljava/lang/String;JILcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 179
    return-void
.end method

.method protected a_(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    .line 145
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 146
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 147
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/n;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/n;-><init>()V

    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 80
    check-cast p1, Lcom/zhihu/android/api/model/CollectionList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Lcom/zhihu/android/api/model/CollectionList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->c()V

    .line 129
    const-string v0, "MyCollections"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/d/d$4;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/d$4;-><init>(Lcom/zhihu/android/app/ui/fragment/d/d;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 249
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->n:Lcom/zhihu/android/app/util/au;

    iget-object v0, v0, Lcom/zhihu/android/app/util/au;->a:[I

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/d/a;->a([I)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 251
    :cond_0
    return-void
.end method

.method public onCollectionChanged(Lcom/zhihu/android/app/d/d;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Z)V

    .line 256
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->d(Z)V

    .line 102
    const-class v0, Lcom/zhihu/android/api/b/z;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/z;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->m:Lcom/zhihu/android/api/b/z;

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 298
    const v0, 0x7f110014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 299
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onHiddenChanged(Z)V

    .line 285
    if-nez p1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_0
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/k;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 332
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 303
    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 315
    :goto_0
    return v0

    .line 306
    :pswitch_0
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    .line 314
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 315
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/k/g;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 304
    :pswitch_data_0
    .packed-switch 0x7f100283
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onPause()V

    .line 268
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    .line 272
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 321
    const v0, 0x7f100284

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->p:Landroid/view/MenuItem;

    .line 322
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->p:Landroid/view/MenuItem;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 323
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhihu/android/app/ui/widget/b/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    .line 325
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->p:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/d;->q:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 326
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onResume()V

    .line 277
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 278
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 279
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/d;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 280
    return-void
.end method
