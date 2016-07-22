.class public Lcom/zhihu/android/app/ui/fragment/d/b;
.super Lcom/zhihu/android/app/ui/fragment/g;
.source "CollectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhihu/android/app/ui/widget/RevealFollowButton$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/g",
        "<",
        "Lcom/zhihu/android/api/model/AnswerList;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/zhihu/android/app/ui/widget/RevealFollowButton$a;"
    }
.end annotation


# instance fields
.field private m:Lcom/zhihu/android/api/b/j;

.field private n:J

.field private o:Lcom/zhihu/android/api/model/Collection;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zhihu/android/api/model/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/zhihu/android/a/ba;

.field private r:Lcom/zhihu/android/bumblebee/http/e;

.field private s:Z

.field private t:Landroid/support/v7/widget/a/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/g;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->p:Ljava/util/ArrayList;

    .line 502
    new-instance v0, Landroid/support/v7/widget/a/a;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/d/b$8;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/zhihu/android/app/ui/fragment/d/b$8;-><init>(Lcom/zhihu/android/app/ui/fragment/d/b;II)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/a/a;-><init>(Landroid/support/v7/widget/a/a$a;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->t:Landroid/support/v7/widget/a/a;

    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090392

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/d/b$5;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/d/b$5;-><init>(Lcom/zhihu/android/app/ui/fragment/d/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/d/b$4;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/d/b$4;-><init>(Lcom/zhihu/android/app/ui/fragment/d/b;)V

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 429
    return-void
.end method

.method private D()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/d/a;->a(Lcom/zhihu/android/api/model/Collection;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 433
    return-void
.end method

.method public static a(J)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter

    .prologue
    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    const-string v1, "extra_collection_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 147
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/d/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collection-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/Collection;)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    const-string v1, "extra_collection"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/d/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collection-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/zhihu/android/api/model/Collection;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Lcom/zhihu/android/api/model/Paging;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->m:Lcom/zhihu/android/api/b/j;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->n:J

    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    new-instance v6, Lcom/zhihu/android/app/ui/fragment/d/b$3;

    invoke-direct {v6, p0, p2}, Lcom/zhihu/android/app/ui/fragment/d/b$3;-><init>(Lcom/zhihu/android/app/ui/fragment/d/b;Z)V

    invoke-interface/range {v1 .. v6}, Lcom/zhihu/android/api/b/j;->a(JJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->h:Lcom/zhihu/android/bumblebee/http/e;

    .line 317
    return-void

    .line 297
    :cond_1
    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/d/b;Lcom/zhihu/android/api/model/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/b;->b(Lcom/zhihu/android/api/model/Collection;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/d/b;Lcom/zhihu/android/api/model/Paging;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/api/model/Paging;Z)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/d/b;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/d/b;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/d/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->s:Z

    return v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/d/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/d/b;)Lcom/zhihu/android/api/model/Collection;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    return-object v0
.end method

.method private b(Lcom/zhihu/android/api/model/Collection;)V
    .locals 3
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    .line 263
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/a/ba;->a(Lcom/zhihu/android/api/model/Collection;)V

    .line 264
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Collection;->author:Lcom/zhihu/android/api/model/People;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->e:Lcom/zhihu/android/app/ui/widget/CircleAvatarView;

    iget-object v1, p1, Lcom/zhihu/android/api/model/Collection;->author:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    sget-object v2, Lcom/zhihu/android/app/util/ImageUtils$ImageSize;->XL:Lcom/zhihu/android/app/util/ImageUtils$ImageSize;

    invoke-static {v1, v2}, Lcom/zhihu/android/app/util/ImageUtils;->a(Ljava/lang/String;Lcom/zhihu/android/app/util/ImageUtils$ImageSize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/CircleAvatarView;->setImageURI(Landroid/net/Uri;)V

    .line 266
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/Collection;->author:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->n:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->t:Landroid/support/v7/widget/a/a;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 276
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->x()V

    .line 277
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->n:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->t:Landroid/support/v7/widget/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/d/b;Lcom/zhihu/android/api/model/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/b;->c(Lcom/zhihu/android/api/model/Collection;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/d/b;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/b;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/d/b;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/d/b;)Lcom/zhihu/android/a/ba;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    return-object v0
.end method

.method private c(Lcom/zhihu/android/api/model/Collection;)V
    .locals 4
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->m:Lcom/zhihu/android/api/b/j;

    iget-wide v2, p1, Lcom/zhihu/android/api/model/Collection;->id:J

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/d/b$2;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/b$2;-><init>(Lcom/zhihu/android/app/ui/fragment/d/b;Lcom/zhihu/android/api/model/Collection;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/j;->b(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 293
    return-void
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/d/b;)J
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->n:J

    return-wide v0
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/d/b;)Lcom/zhihu/android/api/b/j;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->m:Lcom/zhihu/android/api/b/j;

    return-object v0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/d/b;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->p:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 5

    .prologue
    .line 471
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/api/model/Collection;->setIsFollowing(Z)V

    .line 472
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->m:Lcom/zhihu/android/api/b/j;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Collection;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/d/b$7;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/d/b$7;-><init>(Lcom/zhihu/android/app/ui/fragment/d/b;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/zhihu/android/api/b/j;->a(JLjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 207
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/AnswerList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/AnswerList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/AnswerList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p1, Lcom/zhihu/android/api/model/AnswerList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    .line 342
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Answer;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/api/model/Paging;Z)V

    .line 322
    return-void
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->r:Lcom/zhihu/android/bumblebee/http/e;

    invoke-static {v0}, Lcom/zhihu/android/app/util/ak;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 230
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->m:Lcom/zhihu/android/api/b/j;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->n:J

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/d/b$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/d/b$1;-><init>(Lcom/zhihu/android/app/ui/fragment/d/b;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/j;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->r:Lcom/zhihu/android/bumblebee/http/e;

    .line 259
    return-void
.end method

.method protected a_(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    .line 218
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 219
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 220
    return-void
.end method

.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const v0, 0x7f04007e

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/ba;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    .line 168
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->j:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->h:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->e:Lcom/zhihu/android/app/ui/widget/CircleAvatarView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/CircleAvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->m:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ba;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/i;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/i;-><init>()V

    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 98
    check-cast p1, Lcom/zhihu/android/api/model/AnswerList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/api/model/AnswerList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/g;->c()V

    .line 154
    const-string v0, "Collection"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method protected j()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v2

    move v1, v0

    .line 355
    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->i()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 356
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ba;->e()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f100004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 361
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    sub-int v0, v1, v0

    return v0
.end method

.method protected m_()V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->z()V

    .line 161
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->g(I)V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->j:Lcom/zhihu/android/base/widget/ZHTextView;

    if-ne v0, p1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/q;->a(Lcom/zhihu/android/api/model/Collection;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->h:Lcom/zhihu/android/base/widget/ZHTextView;

    if-ne v0, p1, :cond_2

    .line 494
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ba;->i()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ba;->i()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Collection;->id:J

    const-string v2, "collection"

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(JLjava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->m:Lcom/zhihu/android/base/widget/ZHTextView;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->e:Lcom/zhihu/android/app/ui/widget/CircleAvatarView;

    if-ne v0, p1, :cond_0

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ba;->i()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/api/model/Collection;->author:Lcom/zhihu/android/api/model/People;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->a(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0
.end method

.method public onCollectionChanged(Lcom/zhihu/android/app/d/d;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->a()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->a()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Collection;->id:J

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->a()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->b(Lcom/zhihu/android/api/model/Collection;)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Z)V

    goto :goto_0
.end method

.method public onCommentEvent(Lcom/zhihu/android/app/d/g;)V
    .locals 8
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 578
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->h:Lcom/zhihu/android/base/widget/ZHTextView;

    if-nez v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Collection;->id:J

    const-string v2, "collection"

    invoke-virtual {p1, v0, v1, v2}, Lcom/zhihu/android/app/d/g;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Collection;->commentCount:J

    .line 583
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 584
    add-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 588
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    iput-wide v0, v2, Lcom/zhihu/android/api/model/Collection;->commentCount:J

    .line 589
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v2, v2, Lcom/zhihu/android/a/ba;->h:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhihu/android/base/widget/ZHTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 585
    :cond_3
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/g;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->d(Z)V

    .line 124
    const-class v0, Lcom/zhihu/android/api/b/j;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/j;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->m:Lcom/zhihu/android/api/b/j;

    .line 126
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    const-string v1, "extra_collection"

    const-string v2, "extra_collection_id"

    invoke-virtual {p0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "extra_collection"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_collection"

    const-class v2, Lcom/zhihu/android/api/model/Collection;

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Collection;

    .line 130
    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    .line 131
    iget-wide v0, v0, Lcom/zhihu/android/api/model/Collection;->id:J

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->n:J

    .line 135
    :goto_0
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 136
    return-void

    .line 133
    :cond_0
    const-string v1, "extra_collection_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->n:J

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/g;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 367
    const v0, 0x7f110007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 368
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/g;->onDestroy()V

    .line 202
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/g;->onDestroyView()V

    .line 178
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->r:Lcom/zhihu/android/bumblebee/http/e;

    invoke-static {v0}, Lcom/zhihu/android/app/util/ak;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 396
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/g;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 381
    :sswitch_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->D()V

    goto :goto_0

    .line 384
    :sswitch_1
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->C()V

    goto :goto_0

    .line 387
    :sswitch_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/b/g;->a(Landroid/os/Parcelable;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 391
    :sswitch_3
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    invoke-virtual {v1}, Lcom/zhihu/android/a/ba;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    invoke-virtual {v2}, Lcom/zhihu/android/a/ba;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "collection"

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->n:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x7f100264 -> :sswitch_2
        0x7f10026c -> :sswitch_3
        0x7f100275 -> :sswitch_0
        0x7f100276 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/g;->onPause()V

    .line 194
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/b;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/b;

    invoke-interface {v0}, Lcom/zhihu/android/app/e/b;->a()V

    .line 197
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Collection;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/api/model/People;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 373
    :goto_0
    const v1, 0x7f100275

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    const v1, 0x7f100276

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 375
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 183
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/g;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/b;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/b;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->n:J

    invoke-static {v2, v3}, Lcom/zhihu/android/app/util/x;->c(J)Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhihu/android/app/e/b;->a(Landroid/nfc/NdefRecord;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 327
    const v0, 0x7f100004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 328
    new-instance v1, Lcom/zhihu/android/app/util/FixedOverlapOnOffsetChangedListener;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v2, v2, Lcom/zhihu/android/a/ba;->k:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/util/FixedOverlapOnOffsetChangedListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    .line 329
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->q:Lcom/zhihu/android/a/ba;

    iget-object v0, v0, Lcom/zhihu/android/a/ba;->f:Lcom/zhihu/android/app/ui/widget/RevealFollowButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/RevealFollowButton;->setListener(Lcom/zhihu/android/app/ui/widget/RevealFollowButton$a;)V

    .line 330
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d/b;->b(Lcom/zhihu/android/api/model/Collection;)V

    .line 333
    :cond_0
    return-void
.end method

.method public u()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 448
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d/b;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Collection;->id:J

    invoke-static {v2, v3}, Lcom/zhihu/android/app/util/ax;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 466
    :goto_0
    return v0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/api/model/Collection;->setIsFollowing(Z)V

    .line 453
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->m:Lcom/zhihu/android/api/b/j;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/d/b;->o:Lcom/zhihu/android/api/model/Collection;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Collection;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/d/b$6;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/d/b$6;-><init>(Lcom/zhihu/android/app/ui/fragment/d/b;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/zhihu/android/api/b/j;->c(JLcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method
