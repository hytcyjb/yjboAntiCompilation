.class public Lcom/zhihu/android/app/ui/fragment/f/d;
.super Lcom/zhihu/android/app/ui/fragment/f/a;
.source "CommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/f/a",
        "<",
        "Lcom/zhihu/android/api/model/CommentList;",
        ">;"
    }
.end annotation


# instance fields
.field private t:Lio/realm/k;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/zhihu/android/bumblebee/http/e;

.field private final y:Lcom/zhihu/android/bumblebee/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhihu/android/bumblebee/b/a",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Lcom/zhihu/android/bumblebee/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/f/a;-><init>()V

    .line 298
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/f/d$1;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/f/d$1;-><init>(Lcom/zhihu/android/app/ui/fragment/f/d;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->y:Lcom/zhihu/android/bumblebee/b/a;

    .line 332
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/f/d$2;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/f/d$2;-><init>(Lcom/zhihu/android/app/ui/fragment/f/d;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->z:Lcom/zhihu/android/bumblebee/b/c;

    return-void
.end method

.method private D()Z
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    .line 206
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->a()I

    move-result v0

    const/16 v2, 0x1002

    if-ne v0, v2, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private E()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setInputType(I)V

    .line 239
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setFocusable(Z)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->w:Z

    .line 241
    return-void
.end method

.method private F()V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->t:Lio/realm/k;

    const-class v1, Lcom/zhihu/android/app/draft/a/b;

    invoke-virtual {v0, v1}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/s;

    move-result-object v0

    const-string v1, "commentType"

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/s;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/s;

    move-result-object v0

    const-string v1, "resourceId"

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/s;->a(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/s;->d()Lio/realm/q;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/draft/a/b;

    .line 416
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/f/d$5;

    invoke-direct {v1, p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d$5;-><init>(Lcom/zhihu/android/app/ui/fragment/f/d;Lcom/zhihu/android/app/draft/a/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/draft/a/b;->a(Lio/realm/m;)V

    .line 426
    return-void
.end method

.method private G()V
    .locals 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v0, Lcom/zhihu/android/app/draft/a/b;

    invoke-direct {v0}, Lcom/zhihu/android/app/draft/a/b;-><init>()V

    .line 448
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v1, v1, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/draft/a/b;->a(Ljava/lang/String;)V

    .line 449
    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    invoke-virtual {v0, v2, v3}, Lcom/zhihu/android/app/draft/a/b;->a(J)V

    .line 450
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/draft/a/b;->b(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->s:Lcom/zhihu/android/api/model/Comment;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->s:Lcom/zhihu/android/api/model/Comment;

    iget-wide v2, v1, Lcom/zhihu/android/api/model/Comment;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/zhihu/android/app/draft/a/b;->b(J)V

    .line 453
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->s:Lcom/zhihu/android/api/model/Comment;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Comment;->author:Lcom/zhihu/android/api/model/Author;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Author;->member:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/draft/a/b;->c(Ljava/lang/String;)V

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->t:Lio/realm/k;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/zhihu/android/app/draft/a;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/b;Z)V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;)Lcom/zhihu/android/app/util/bb;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(JLjava/lang/String;Lcom/zhihu/android/api/model/CommentStatus;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;Lcom/zhihu/android/api/model/CommentStatus;)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v1, "extra_resource_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "extra_resource_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    if-eqz p3, :cond_0

    .line 83
    const-string v1, "extra_comment_status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    :cond_0
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/f/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "comment-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 86
    return-object v1
.end method

.method private a(Lcom/zhihu/android/app/draft/a/b;)V
    .locals 4
    .parameter

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/zhihu/android/app/draft/a/b;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 431
    new-instance v0, Lcom/zhihu/android/api/model/Comment;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Comment;-><init>()V

    .line 432
    invoke-virtual {p1}, Lcom/zhihu/android/app/draft/a/b;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/zhihu/android/api/model/Comment;->id:J

    .line 433
    new-instance v1, Lcom/zhihu/android/api/model/Author;

    invoke-direct {v1}, Lcom/zhihu/android/api/model/Author;-><init>()V

    iput-object v1, v0, Lcom/zhihu/android/api/model/Comment;->author:Lcom/zhihu/android/api/model/Author;

    .line 434
    iget-object v1, v0, Lcom/zhihu/android/api/model/Comment;->author:Lcom/zhihu/android/api/model/Author;

    new-instance v2, Lcom/zhihu/android/api/model/People;

    invoke-direct {v2}, Lcom/zhihu/android/api/model/People;-><init>()V

    iput-object v2, v1, Lcom/zhihu/android/api/model/Author;->member:Lcom/zhihu/android/api/model/People;

    .line 435
    iget-object v1, v0, Lcom/zhihu/android/api/model/Comment;->author:Lcom/zhihu/android/api/model/Author;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Author;->member:Lcom/zhihu/android/api/model/People;

    invoke-virtual {p1}, Lcom/zhihu/android/app/draft/a/b;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    .line 437
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Lcom/zhihu/android/api/model/Comment;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {p1}, Lcom/zhihu/android/app/draft/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/f/d;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/f/d;Lcom/zhihu/android/app/draft/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Lcom/zhihu/android/app/draft/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/f/d;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/f/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/f/d;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/f/d;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/f/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->w:Z

    return v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/f/d;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->g()V

    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/f/d;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/d;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/f/d;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/f/d;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/f/d;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method


# virtual methods
.method protected C()V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->s:Lcom/zhihu/android/api/model/Comment;

    .line 216
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->r:Lcom/zhihu/android/api/model/CommentStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->r:Lcom/zhihu/android/api/model/CommentStatus;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/CommentStatus;->status:Z

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->r:Lcom/zhihu/android/api/model/CommentStatus;

    iget-object v0, v0, Lcom/zhihu/android/api/model/CommentStatus;->reason:Ljava/lang/String;

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v1, v1, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 225
    :goto_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->E()V

    .line 234
    :goto_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->x()V

    .line 235
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/f/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    const v1, 0x7f090095

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/f/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v0, v0, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    const v1, 0x7f09009a

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/f/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 232
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->E()V

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
    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/CommentList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 288
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

    .line 289
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Comment;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->v:Z

    .line 295
    return-object v1
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 7
    .parameter

    .prologue
    .line 265
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_1
    return-void

    .line 265
    :sswitch_0
    const-string v2, "answer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "question"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "collection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "article"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->n:Lcom/zhihu/android/api/b/l;

    iget-wide v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->z:Lcom/zhihu/android/bumblebee/b/c;

    invoke-interface/range {v0 .. v6}, Lcom/zhihu/android/api/b/l;->a(JZJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->n:Lcom/zhihu/android/api/b/l;

    iget-wide v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->z:Lcom/zhihu/android/bumblebee/b/c;

    invoke-interface/range {v0 .. v6}, Lcom/zhihu/android/api/b/l;->b(JZJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->n:Lcom/zhihu/android/api/b/l;

    iget-wide v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->z:Lcom/zhihu/android/bumblebee/b/c;

    invoke-interface/range {v0 .. v6}, Lcom/zhihu/android/api/b/l;->c(JZJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1

    .line 276
    :pswitch_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->n:Lcom/zhihu/android/api/b/l;

    iget-wide v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->z:Lcom/zhihu/android/bumblebee/b/c;

    invoke-interface/range {v0 .. v6}, Lcom/zhihu/android/api/b/l;->d(JZJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    goto/16 :goto_1

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        -0x67ca5162 -> :sswitch_2
        -0x5435c042 -> :sswitch_0
        -0x457dc41a -> :sswitch_1
        -0x2ba7330a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x106000b

    .line 146
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/f/a;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 147
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->d(I)V

    .line 148
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->g(I)V

    .line 149
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->h(I)V

    .line 150
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->f(I)V

    .line 151
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->A()V

    .line 152
    return-void
.end method

.method protected a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 245
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_1
    return-void

    .line 245
    :sswitch_0
    const-string v2, "answer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "question"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "collection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "article"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->n:Lcom/zhihu/android/api/b/l;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->y:Lcom/zhihu/android/bumblebee/b/a;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/zhihu/android/api/b/l;->a(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->n:Lcom/zhihu/android/api/b/l;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->y:Lcom/zhihu/android/bumblebee/b/a;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/zhihu/android/api/b/l;->b(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->n:Lcom/zhihu/android/api/b/l;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->y:Lcom/zhihu/android/bumblebee/b/a;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/zhihu/android/api/b/l;->c(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1

    .line 256
    :pswitch_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->n:Lcom/zhihu/android/api/b/l;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->y:Lcom/zhihu/android/bumblebee/b/a;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/zhihu/android/api/b/l;->d(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1

    .line 245
    :sswitch_data_0
    .sparse-switch
        -0x67ca5162 -> :sswitch_2
        -0x5435c042 -> :sswitch_0
        -0x457dc41a -> :sswitch_1
        -0x2ba7330a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 70
    check-cast p1, Lcom/zhihu/android/api/model/CommentList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Lcom/zhihu/android/api/model/CommentList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/f/a;->c()V

    .line 110
    const-string v0, "answer"

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "AnswerComments"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v0, "question"

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string v0, "QuestionComments"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "collection"

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const-string v0, "CollectionComments"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    const-string v0, "article"

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "ArticleComments"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 200
    const v0, 0x7f040056

    return v0
.end method

.method public onCommentActionEvent(Lcom/zhihu/android/app/d/f;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/a;->onCommentActionEvent(Lcom/zhihu/android/app/d/f;)V

    .line 348
    return-void
.end method

.method public onCommentEvent(Lcom/zhihu/android/app/d/g;)V
    .locals 7
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const v1, 0x7f0900a1

    const v3, 0x7f090063

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 355
    iget-wide v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->q:J

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->p:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Lcom/zhihu/android/app/d/g;->a(JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 359
    iget-boolean v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    if-eqz v4, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->D()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Z)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->a()Lcom/zhihu/android/api/model/Comment;

    move-result-object v5

    invoke-static {v5}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Comment;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 366
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    invoke-virtual {v0}, Lcom/zhihu/android/a/af;->e()Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/f/d$3;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/f/d$3;-><init>(Lcom/zhihu/android/app/ui/fragment/f/d;)V

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/ao;->a(Landroid/view/View;ILandroid/os/IBinder;ILandroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar$b;)V

    goto :goto_0

    .line 377
    :cond_2
    iget-boolean v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->c:Z

    if-eqz v4, :cond_5

    .line 378
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->D()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Z)V

    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->B()I

    move-result v4

    .line 383
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 384
    :goto_1
    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->a()Lcom/zhihu/android/api/model/Comment;

    move-result-object v5

    invoke-static {v5}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Comment;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 386
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    invoke-virtual {v0}, Lcom/zhihu/android/a/af;->e()Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/f/d$4;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/f/d$4;-><init>(Lcom/zhihu/android/app/ui/fragment/f/d;)V

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/ao;->a(Landroid/view/View;ILandroid/os/IBinder;ILandroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar$b;)V

    goto :goto_0

    .line 383
    :cond_4
    add-int/lit8 v0, v4, 0x1

    goto :goto_1

    .line 402
    :cond_5
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(Lcom/zhihu/android/app/d/g;)V

    goto :goto_0

    .line 407
    :cond_6
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->a()Lcom/zhihu/android/api/model/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->c(Lcom/zhihu/android/api/model/Comment;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/a;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/f/d;->d(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/af;->q(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    const v0, 0x7f110015

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/f/a;->onDestroyView()V

    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->G()V

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->C()V

    goto :goto_0

    .line 174
    :pswitch_1
    iput-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    .line 175
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/af;->f(Landroid/content/Context;Z)V

    .line 176
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0903db

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    .line 177
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 181
    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/f/d;->b(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->x()V

    goto :goto_0

    .line 185
    :pswitch_2
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    .line 186
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/af;->f(Landroid/content/Context;Z)V

    .line 187
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0903d6

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    .line 188
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->x:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/f/d;->b(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->x()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7f100285
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/f/a;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 162
    const v0, 0x7f100287

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->s:Lcom/zhihu/android/api/model/Comment;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    const v0, 0x7f100286

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    const v0, 0x7f100285

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    return-void

    :cond_0
    move v0, v2

    .line 162
    goto :goto_0

    :cond_1
    move v1, v2

    .line 163
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/f/a;->onStop()V

    .line 124
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->m:Lcom/zhihu/android/a/af;

    iget-object v1, v1, Lcom/zhihu/android/a/af;->c:Lcom/zhihu/android/base/widget/ZHEditText;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 125
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/f/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhihu/android/app/draft/RealmProvider;->a(Landroid/content/Context;I)Lio/realm/k;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/f/d;->t:Lio/realm/k;

    .line 131
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/f/d;->F()V

    .line 132
    return-void
.end method
