.class public Lcom/zhihu/android/app/ui/fragment/n/c;
.super Lcom/zhihu/android/app/ui/fragment/n/a;
.source "RoundTableDiscussFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/n/a",
        "<",
        "Lcom/zhihu/android/api/model/CommentList;",
        ">;"
    }
.end annotation


# instance fields
.field protected n:Ljava/lang/String;

.field protected o:J

.field protected p:Lcom/zhihu/android/api/b/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/n/a;-><init>()V

    return-void
.end method

.method private F()Z
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    .line 238
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->a()I

    move-result v0

    const/16 v2, 0x1002

    if-ne v0, v2, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/n/c;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/n/c;Lcom/zhihu/android/api/model/Comment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c;->b(Lcom/zhihu/android/api/model/Comment;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/n/c;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/n/c;Lcom/zhihu/android/app/ui/widget/holder/CommentCardViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Lcom/zhihu/android/app/ui/widget/holder/CommentCardViewHolder;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/n/c;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/zhihu/android/app/ui/widget/holder/CommentCardViewHolder;)V
    .locals 6
    .parameter

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/holder/CommentCardViewHolder;->A()Lcom/zhihu/android/api/model/Comment;

    move-result-object v1

    .line 284
    iget-boolean v0, v1, Lcom/zhihu/android/api/model/Comment;->voting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 287
    :goto_0
    iput-boolean v0, v1, Lcom/zhihu/android/api/model/Comment;->voting:Z

    .line 288
    iget-wide v4, v1, Lcom/zhihu/android/api/model/Comment;->voteCount:J

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1

    :goto_1
    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/zhihu/android/api/model/Comment;->voteCount:J

    .line 289
    invoke-virtual {p1, v1}, Lcom/zhihu/android/app/ui/widget/holder/CommentCardViewHolder;->b(Lcom/zhihu/android/api/model/Comment;)V

    .line 292
    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->p:Lcom/zhihu/android/api/b/l;

    iget-wide v2, v1, Lcom/zhihu/android/api/model/Comment;->id:J

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/n/c$4;

    invoke-direct {v5, p0, v1, p1}, Lcom/zhihu/android/app/ui/fragment/n/c$4;-><init>(Lcom/zhihu/android/app/ui/fragment/n/c;Lcom/zhihu/android/api/model/Comment;Lcom/zhihu/android/app/ui/widget/holder/CommentCardViewHolder;)V

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/zhihu/android/api/b/l;->a(JLjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 352
    :goto_2
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 288
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->p:Lcom/zhihu/android/api/b/l;

    iget-wide v2, v1, Lcom/zhihu/android/api/model/Comment;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/n/c$5;

    invoke-direct {v4, p0, v1, p1}, Lcom/zhihu/android/app/ui/fragment/n/c$5;-><init>(Lcom/zhihu/android/app/ui/fragment/n/c;Lcom/zhihu/android/api/model/Comment;Lcom/zhihu/android/app/ui/widget/holder/CommentCardViewHolder;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/zhihu/android/api/b/l;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_2
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/n/c;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method private b(Lcom/zhihu/android/api/model/Comment;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "roundtable"

    invoke-static {p1, v0, v1}, Lcom/zhihu/android/app/ui/fragment/b/b;->a(Lcom/zhihu/android/api/model/Comment;Ljava/lang/Long;Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 141
    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/n/c;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/n/c;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/n/c;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/n/c;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method


# virtual methods
.method protected E()I
    .locals 4

    .prologue
    .line 259
    const/4 v1, -0x1

    .line 260
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 261
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->a()I

    move-result v2

    const/16 v3, 0x3001

    if-ne v2, v3, :cond_0

    .line 267
    :goto_1
    return v0

    .line 260
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/zhihu/android/api/model/CommentList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/CommentList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/CommentList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p1, Lcom/zhihu/android/api/model/CommentList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Comment;

    .line 204
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Comment;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_0
    return-object v1
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 233
    return-void
.end method

.method protected a(Lcom/zhihu/android/api/model/Comment;)V
    .locals 6
    .parameter

    .prologue
    .line 271
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    .line 273
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/zhihu/android/api/model/Comment;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Comment;

    iget-wide v2, v0, Lcom/zhihu/android/api/model/Comment;->id:J

    iget-wide v4, p1, Lcom/zhihu/android/api/model/Comment;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h(I)V

    .line 278
    :cond_0
    return-void

    .line 271
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 5
    .parameter

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->B()Lcom/zhihu/android/app/ui/fragment/n/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/n/e;->k()Lcom/zhihu/android/api/b/ac;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->B()Lcom/zhihu/android/app/ui/fragment/n/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/fragment/n/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v2

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/n/c$3;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/n/c$3;-><init>(Lcom/zhihu/android/app/ui/fragment/n/c;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zhihu/android/api/b/ac;->c(Ljava/lang/String;JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 194
    return-void
.end method

.method public a(Lcom/zhihu/android/api/model/RoundTable;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    return-void
.end method

.method protected a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->B()Lcom/zhihu/android/app/ui/fragment/n/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/n/e;->k()Lcom/zhihu/android/api/b/ac;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->B()Lcom/zhihu/android/app/ui/fragment/n/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/fragment/n/e;->l()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/n/c$2;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/n/c$2;-><init>(Lcom/zhihu/android/app/ui/fragment/n/c;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zhihu/android/api/b/ac;->c(Ljava/lang/String;JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 168
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/ag;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/n/c$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/n/c$1;-><init>(Lcom/zhihu/android/app/ui/fragment/n/c;)V

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/ag;-><init>(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b;)V

    .line 131
    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    check-cast p1, Lcom/zhihu/android/api/model/CommentList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Lcom/zhihu/android/api/model/CommentList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->B()Lcom/zhihu/android/app/ui/fragment/n/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/n/e;->f()I

    move-result v0

    return v0
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method protected n()I
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const/high16 v1, 0x428c

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public onCommentActionEvent(Lcom/zhihu/android/app/d/f;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "roundtable"

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/f;->c()Lcom/zhihu/android/api/model/Comment;

    move-result-object v1

    iget-object v1, v1, Lcom/zhihu/android/api/model/Comment;->commentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->B()Lcom/zhihu/android/app/ui/fragment/n/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/f;->c()Lcom/zhihu/android/api/model/Comment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/n/e;->a(Lcom/zhihu/android/api/model/Comment;)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onCommentEvent(Lcom/zhihu/android/app/d/g;)V
    .locals 7
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const v1, 0x7f0900a1

    const v3, 0x7f090063

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 359
    iget-wide v4, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->o:J

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Lcom/zhihu/android/app/d/g;->a(JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 361
    iget-boolean v4, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->c:Z

    if-eqz v4, :cond_3

    .line 362
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->F()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Z)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->E()I

    move-result v4

    .line 367
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 368
    :goto_1
    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->a()Lcom/zhihu/android/api/model/Comment;

    move-result-object v5

    invoke-static {v5}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Comment;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 370
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/n/c$6;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/n/c$6;-><init>(Lcom/zhihu/android/app/ui/fragment/n/c;)V

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/ao;->a(Landroid/view/View;ILandroid/os/IBinder;ILandroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar$b;)V

    goto :goto_0

    .line 367
    :cond_2
    add-int/lit8 v0, v4, 0x1

    goto :goto_1

    .line 386
    :cond_3
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/n/c$7;

    invoke-direct {v4, p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/c$7;-><init>(Lcom/zhihu/android/app/ui/fragment/n/c;Lcom/zhihu/android/app/d/g;)V

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/ao;->a(Landroid/view/View;ILandroid/os/IBinder;ILandroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar$b;)V

    goto :goto_0

    .line 402
    :cond_4
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->a()Lcom/zhihu/android/api/model/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Lcom/zhihu/android/api/model/Comment;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/n/a;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "roundtable"

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->n:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->B()Lcom/zhihu/android/app/ui/fragment/n/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/n/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->o:J

    .line 88
    const-class v0, Lcom/zhihu/android/api/b/l;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/n/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/l;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->p:Lcom/zhihu/android/api/b/l;

    .line 90
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 107
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/n/a;->onDestroyView()V

    .line 108
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/n/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Lcom/zhihu/android/app/ui/widget/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/ui/widget/c;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/n/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4100

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    .line 99
    invoke-virtual {v0, v1, v1}, Lcom/zhihu/android/app/ui/widget/c;->a(II)V

    .line 100
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/n/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 101
    return-void
.end method
