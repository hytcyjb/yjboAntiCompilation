.class public Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;
.super Lcom/zhihu/android/app/ui/fragment/d;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/app/b;

.field private b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/view/View;

.field private e:I

.field private f:Z

.field private g:Landroid/support/v4/widget/DrawerLayout$f;

.field private h:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$a;

.field private i:Lcom/zhihu/android/api/b/ai;

.field private j:Lcom/zhihu/android/api/b/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/d;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;)Landroid/support/v4/widget/DrawerLayout$f;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->g:Landroid/support/v4/widget/DrawerLayout$f;

    return-object v0
.end method

.method private a(Lcom/zhihu/android/api/model/TopicList;)V
    .locals 4
    .parameter

    .prologue
    .line 152
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/zhihu/android/api/model/TopicList;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v0, p1, Lcom/zhihu/android/api/model/TopicList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    .line 156
    iget-object v0, v0, Lcom/zhihu/android/api/model/Topic;->avatarUrl:Ljava/lang/String;

    sget-object v3, Lcom/zhihu/android/app/util/ImageUtils$ImageSize;->L:Lcom/zhihu/android/app/util/ImageUtils$ImageSize;

    invoke-static {v0, v3}, Lcom/zhihu/android/app/util/ImageUtils;->a(Ljava/lang/String;Lcom/zhihu/android/app/util/ImageUtils$ImageSize;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;

    .line 161
    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->a(Ljava/util/List;)V

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->d(I)V

    .line 165
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;Lcom/zhihu/android/api/model/TopicList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(Lcom/zhihu/android/api/model/TopicList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;)Landroid/support/v7/app/b;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a:Landroid/support/v7/app/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 120
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$1;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$1;-><init>(Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;)V

    .line 144
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->j:Lcom/zhihu/android/api/b/z;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v2

    iget-object v2, v2, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v0}, Lcom/zhihu/android/api/b/z;->d(Ljava/lang/String;JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->i:Lcom/zhihu/android/api/b/ai;

    invoke-interface {v1, v0}, Lcom/zhihu/android/api/b/ai;->a(Lcom/zhihu/android/bumblebee/b/a;)Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e()V

    .line 258
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e:I

    if-eq v0, p1, :cond_0

    .line 259
    iput p1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e:I

    .line 260
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;

    .line 261
    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->c(I)V

    .line 262
    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->f()V

    .line 264
    :cond_0
    return-void
.end method

.method public a(ILandroid/support/v4/widget/DrawerLayout;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->d:Landroid/view/View;

    .line 173
    iput-object p2, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 175
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020094

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 177
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$2;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f090205

    const v5, 0x7f090204

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$2;-><init>(Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a:Landroid/support/v7/app/b;

    .line 228
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->h:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;-><init>(Landroid/content/Context;ZLcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$a;)V

    .line 229
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e:I

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->c(I)V

    .line 230
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 232
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$3;-><init>(Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 240
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a:Landroid/support/v7/app/b;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$f;)V

    .line 242
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a()V

    .line 243
    return-void
.end method

.method public a(Landroid/support/v4/widget/DrawerLayout$f;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->g:Landroid/support/v4/widget/DrawerLayout$f;

    .line 252
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->a(ZZ)V

    .line 248
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 270
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 276
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/af;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;Z)V

    .line 339
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;

    .line 341
    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/NavigationDrawerAdapter;->d(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->setHasOptionsMenu(Z)V

    .line 106
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->onAttach(Landroid/app/Activity;)V

    .line 283
    :try_start_0
    check-cast p1, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$a;

    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->h:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement NavigationDrawerCallbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Landroid/content/res/Configuration;)V

    .line 308
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->onCreate(Landroid/os/Bundle;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v0, "selected_navigation_drawer_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->f:Z

    .line 96
    :goto_0
    const-class v0, Lcom/zhihu/android/api/b/ai;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ai;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->i:Lcom/zhihu/android/api/b/ai;

    .line 98
    const-class v0, Lcom/zhihu/android/api/b/z;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/z;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->j:Lcom/zhihu/android/api/b/z;

    .line 99
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->b:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 317
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const v0, 0x7f040063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHRecyclerView;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    .line 112
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 116
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/d;->onDetach()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->h:Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment$a;

    .line 294
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->a:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 300
    const-string v0, "selected_navigation_drawer_id"

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/NavigationDrawerFragment;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    return-void
.end method
