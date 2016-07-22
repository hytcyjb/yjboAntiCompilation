.class public Lcom/zhihu/android/app/ui/fragment/l/b;
.super Lcom/zhihu/android/app/ui/fragment/l/a;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$a;


# instance fields
.field private m:Lcom/zhihu/android/api/model/People;

.field private n:I

.field private o:Lcom/zhihu/android/api/model/FeedList;

.field private p:Lcom/zhihu/android/api/model/Paging;

.field private q:Z

.field private r:Z

.field private s:Lcom/zhihu/android/bumblebee/http/e;

.field private t:Lcom/zhihu/android/bumblebee/http/e;

.field private u:Lcom/zhihu/android/bumblebee/http/e;

.field private v:Z

.field private w:Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/a;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->q:Z

    .line 72
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->r:Z

    .line 80
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->v:Z

    return-void
.end method

.method private D()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->s:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->s:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->t:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->t:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 449
    :cond_1
    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->D()V

    .line 454
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->u:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->u:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 457
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/b;Lcom/zhihu/android/api/model/FeedList;)Lcom/zhihu/android/api/model/FeedList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->o:Lcom/zhihu/android/api/model/FeedList;

    return-object p1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/b;Lcom/zhihu/android/api/model/Paging;)Lcom/zhihu/android/api/model/Paging;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->p:Lcom/zhihu/android/api/model/Paging;

    return-object p1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/b;)Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->w:Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/b;Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;)Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->w:Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;

    return-object p1
.end method

.method private a(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/Feed;",
            ")",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c",
            "<",
            "Lcom/zhihu/android/api/model/Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    sget-object v0, Lcom/zhihu/android/app/ui/fragment/l/b$7;->a:[I

    iget-object v1, p1, Lcom/zhihu/android/api/model/Feed;->verb:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhihu/android/api/util/FeedVerb;->makeValueOf(Ljava/lang/String;)Lcom/zhihu/android/api/util/FeedVerb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/api/util/FeedVerb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 438
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 381
    :pswitch_0
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->b(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v0, p1, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    const-class v1, Lcom/zhihu/android/api/model/Article;

    invoke-static {v0, v1}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Article;

    .line 405
    iget-object v0, v0, Lcom/zhihu/android/api/model/Article;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->c(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_0
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->d(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 416
    :pswitch_3
    iget-object v0, p1, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    const-class v1, Lcom/zhihu/android/api/model/RoundTable;

    invoke-static {v0, v1}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/RoundTable;

    .line 418
    iget-object v0, v0, Lcom/zhihu/android/api/model/RoundTable;->banner:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->f(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_1
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->g(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 427
    :pswitch_4
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->e(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 431
    :pswitch_5
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->h(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 433
    :pswitch_6
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->i(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/b;Lcom/zhihu/android/api/model/FollowStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/b;->b(Lcom/zhihu/android/api/model/FollowStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/b;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/b;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/b;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->v:Z

    return p1
.end method

.method private b(Lcom/zhihu/android/api/model/FollowStatus;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/FollowStatus;->isFollowing:Z

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->q:Z

    .line 278
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/FollowStatus;->isFollowed:Z

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->r:Z

    .line 280
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->q:Z

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/People;->following:Z

    .line 283
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/l/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/l/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->q:Z

    return v0
.end method


# virtual methods
.method protected C()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->o:Lcom/zhihu/android/api/model/FeedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->o:Lcom/zhihu/android/api/model/FeedList;

    iget-object v0, v0, Lcom/zhihu/android/api/model/FeedList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->o:Lcom/zhihu/android/api/model/FeedList;

    iget-object v0, v0, Lcom/zhihu/android/api/model/FeedList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h()V

    .line 142
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    if-eqz v0, :cond_4

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->B()Lcom/zhihu/android/app/ui/fragment/l/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/fragment/l/e;->f()I

    move-result v1

    .line 147
    if-lez v1, :cond_1

    .line 148
    invoke-static {v1}, Lcom/zhihu/android/app/ui/widget/c/a;->a(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    invoke-static {v1}, Lcom/zhihu/android/app/ui/widget/c/a;->b(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->n:I

    if-lez v1, :cond_2

    .line 154
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->n:I

    invoke-static {v1}, Lcom/zhihu/android/app/ui/widget/c/a;->a(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->b(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 166
    :cond_3
    :goto_0
    return-void

    .line 160
    :cond_4
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->v:Z

    if-eqz v0, :cond_3

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->o:Lcom/zhihu/android/api/model/FeedList;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/b;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    goto :goto_0
.end method

.method protected a(Lcom/zhihu/android/api/model/FeedList;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/FeedList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->paging:Lcom/zhihu/android/api/model/Paging;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->paging:Lcom/zhihu/android/api/model/Paging;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->p:Lcom/zhihu/android/api/model/Paging;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/api/model/Paging;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->b(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->data:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 209
    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->paging:Lcom/zhihu/android/api/model/Paging;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->paging:Lcom/zhihu/android/api/model/Paging;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->p:Lcom/zhihu/android/api/model/Paging;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/api/model/Paging;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const v0, 0x7f090360

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->b(Ljava/lang/String;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/ZHObject;

    .line 214
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ZHObject;->isFeed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    const-class v3, Lcom/zhihu/android/api/model/Feed;

    invoke-static {v0, v3}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Feed;

    .line 216
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/b;->a(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_2

    .line 219
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_3
    return-object v1
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput p1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->n:I

    .line 288
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->C()V

    .line 289
    return-void
.end method

.method public a(Lcom/zhihu/android/api/model/FollowStatus;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/b;->b(Lcom/zhihu/android/api/model/FollowStatus;)V

    .line 271
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->w:Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->w:Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;

    invoke-interface {v0, p1}, Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;->a(Lcom/zhihu/android/api/model/FollowStatus;)V

    .line 274
    :cond_0
    return-void
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 5
    .parameter

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->B()Lcom/zhihu/android/app/ui/fragment/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->B()Lcom/zhihu/android/app/ui/fragment/l/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/fragment/l/e;->l()Lcom/zhihu/android/api/model/People;

    move-result-object v1

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextAfterId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/l/b$2;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/l/b$2;-><init>(Lcom/zhihu/android/app/ui/fragment/l/b;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zhihu/android/api/b/z;->a(Ljava/lang/String;Ljava/lang/String;ILcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->u:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/api/model/People;)V
    .locals 4
    .parameter

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->v:Z

    .line 232
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->C()V

    .line 266
    :goto_0
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    .line 237
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->q:Z

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/People;->following:Z

    .line 238
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->C()V

    .line 240
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->B()Lcom/zhihu/android/app/ui/fragment/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    const/4 v2, 0x3

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/l/b$3;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/l/b$3;-><init>(Lcom/zhihu/android/app/ui/fragment/l/b;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/z;->a(Ljava/lang/String;ILcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->u:Lcom/zhihu/android/bumblebee/http/e;

    .line 265
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->C()V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method protected a_(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    .line 129
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 130
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 131
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/t;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/t;-><init>()V

    .line 105
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/l/b$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/l/b$1;-><init>(Lcom/zhihu/android/app/ui/fragment/l/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/t;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$a;)V

    .line 123
    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 60
    check-cast p1, Lcom/zhihu/android/api/model/FeedList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/b;->a(Lcom/zhihu/android/api/model/FeedList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onAnswerEvent(Lcom/zhihu/android/app/d/b;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->o:Lcom/zhihu/android/api/model/FeedList;

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->v:Z

    .line 342
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->C()V

    .line 344
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->B()Lcom/zhihu/android/app/ui/fragment/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->m:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    const/4 v2, 0x3

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/l/b$6;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/l/b$6;-><init>(Lcom/zhihu/android/app/ui/fragment/l/b;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/z;->a(Ljava/lang/String;ILcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->u:Lcom/zhihu/android/bumblebee/http/e;

    .line 369
    :cond_0
    return-void
.end method

.method public onClick(Lcom/zhihu/android/api/model/People;Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhihu/android/app/util/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->D()V

    .line 296
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/People;->following:Z

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->B()Lcom/zhihu/android/app/ui/fragment/l/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v1

    iget-object v2, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/l/b$4;

    invoke-direct {v3, p0, p2}, Lcom/zhihu/android/app/ui/fragment/l/b$4;-><init>(Lcom/zhihu/android/app/ui/fragment/l/b;Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/zhihu/android/api/b/z;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->t:Lcom/zhihu/android/bumblebee/http/e;

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->B()Lcom/zhihu/android/app/ui/fragment/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/l/b$5;

    invoke-direct {v2, p0, p2}, Lcom/zhihu/android/app/ui/fragment/l/b$5;-><init>(Lcom/zhihu/android/app/ui/fragment/l/b;Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/z;->b(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->s:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/b;->w:Lcom/zhihu/android/app/ui/widget/holder/ProfilePeopleViewHolder$b;

    .line 97
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/b;->E()V

    .line 99
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/l/a;->onDestroyView()V

    .line 100
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/l/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 89
    return-void
.end method
