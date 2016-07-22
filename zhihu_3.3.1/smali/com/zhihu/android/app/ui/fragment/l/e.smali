.class public Lcom/zhihu/android/app/ui/fragment/l/e;
.super Lcom/zhihu/android/app/ui/fragment/p;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/l/e$a;
    }
.end annotation


# instance fields
.field private g:Lcom/zhihu/android/api/b/z;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/app/ui/fragment/l/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/zhihu/android/api/model/People;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/zhihu/android/a/bj;

.field private n:Lcom/zhihu/android/bumblebee/http/e;

.field private o:Lcom/zhihu/android/bumblebee/http/e;

.field private p:Lcom/zhihu/android/bumblebee/http/e;

.field private q:Lcom/zhihu/android/bumblebee/http/e;

.field private r:Lcom/zhihu/android/bumblebee/http/e;

.field private s:Lcom/zhihu/android/bumblebee/http/e;

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/p;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->h:Ljava/util/List;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->u:Z

    return-void
.end method

.method public static a(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/app/util/bb;
    .locals 5
    .parameter

    .prologue
    .line 116
    invoke-static {p0}, Lcom/zhihu/android/app/util/ae;->a(Lcom/zhihu/android/api/model/People;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    const-string v0, "extra_people"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/l/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->h:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/zhihu/android/api/model/TopicList;)V
    .locals 4
    .parameter

    .prologue
    .line 479
    iget-object v0, p1, Lcom/zhihu/android/api/model/TopicList;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
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

    .line 483
    iget-object v0, v0, Lcom/zhihu/android/api/model/Topic;->avatarUrl:Ljava/lang/String;

    sget-object v3, Lcom/zhihu/android/app/util/ImageUtils$ImageSize;->L:Lcom/zhihu/android/app/util/ImageUtils$ImageSize;

    invoke-static {v0, v3}, Lcom/zhihu/android/app/util/ImageUtils;->a(Ljava/lang/String;Lcom/zhihu/android/app/util/ImageUtils$ImageSize;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->b:Lcom/zhihu/android/a/at;

    iget-object v0, v0, Lcom/zhihu/android/a/at;->d:Lcom/zhihu/android/app/ui/widget/RhombusDreamView;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/RhombusDreamView;->setItems(Ljava/util/List;)V

    .line 487
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/e;Lcom/zhihu/android/api/model/People;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/e;->b(Lcom/zhihu/android/api/model/People;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/e;Lcom/zhihu/android/api/model/TopicList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/l/e;->a(Lcom/zhihu/android/api/model/TopicList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/l/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->t:Z

    return p1
.end method

.method public static b(Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;
    .locals 5
    .parameter

    .prologue
    .line 127
    invoke-static {p0}, Lcom/zhihu/android/app/util/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v0, "extra_people_id"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/l/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/zhihu/android/api/model/People;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 526
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    .line 528
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->d:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getToolbar()Lcom/zhihu/android/base/widget/ZHToolBar;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    iget-object v0, v0, Lcom/zhihu/android/a/bj;->c:Lcom/zhihu/android/app/ui/widget/CircleAvatarView;

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    sget-object v2, Lcom/zhihu/android/app/util/ImageUtils$ImageSize;->XL:Lcom/zhihu/android/app/util/ImageUtils$ImageSize;

    invoke-static {v1, v2}, Lcom/zhihu/android/app/util/ImageUtils;->a(Ljava/lang/String;Lcom/zhihu/android/app/util/ImageUtils$ImageSize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/CircleAvatarView;->setImageURI(Landroid/net/Uri;)V

    .line 531
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    iget-object v0, v0, Lcom/zhihu/android/a/bj;->c:Lcom/zhihu/android/app/ui/widget/CircleAvatarView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/CircleAvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget v0, p1, Lcom/zhihu/android/api/model/People;->gender:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 534
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->u:Z

    if-nez v0, :cond_0

    .line 535
    iput-boolean v4, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->u:Z

    .line 536
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    iget-object v0, v0, Lcom/zhihu/android/a/bj;->e:Lcom/zhihu/android/base/widget/ZHImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 537
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 538
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    iget-object v1, v0, Lcom/zhihu/android/a/bj;->e:Lcom/zhihu/android/base/widget/ZHImageView;

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->b:Lcom/zhihu/android/a/at;

    invoke-virtual {v0}, Lcom/zhihu/android/a/at;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, p1, Lcom/zhihu/android/api/model/People;->gender:I

    if-ne v0, v4, :cond_2

    const v0, 0x7f020124

    :goto_0
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->b:Lcom/zhihu/android/a/at;

    invoke-virtual {v3}, Lcom/zhihu/android/a/at;->e()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    invoke-virtual {v0}, Lcom/zhihu/android/a/bj;->a()V

    .line 544
    return-void

    .line 540
    :cond_2
    const v0, 0x7f020123

    goto :goto_0

    .line 536
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/l/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/l/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/l/e;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->h()V

    return-void
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/l/e;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->h()V

    return-void
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/l/e;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->h()V

    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->j:Z

    .line 334
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/api/model/People;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->k:Z

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->l:Z

    .line 336
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/l/e$3;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/l/e$3;-><init>(Lcom/zhihu/android/app/ui/fragment/l/e;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zhihu/android/api/b/z;->d(Ljava/lang/String;JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->q:Lcom/zhihu/android/bumblebee/http/e;

    .line 448
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/l/e$4;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/l/e$4;-><init>(Lcom/zhihu/android/app/ui/fragment/l/e;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/z;->c(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->o:Lcom/zhihu/android/bumblebee/http/e;

    .line 463
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/l/e$5;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/l/e$5;-><init>(Lcom/zhihu/android/app/ui/fragment/l/e;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/z;->d(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->p:Lcom/zhihu/android/bumblebee/http/e;

    .line 476
    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->l:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/l/e$6;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/l/e$6;-><init>(Lcom/zhihu/android/app/ui/fragment/l/e;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/z;->f(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->s:Lcom/zhihu/android/bumblebee/http/e;

    .line 523
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/l/e$7;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/l/e$7;-><init>(Lcom/zhihu/android/app/ui/fragment/l/e;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/z;->e(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->r:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->g:Lcom/zhihu/android/api/b/z;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/l/e$8;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/l/e$8;-><init>(Lcom/zhihu/android/app/ui/fragment/l/e;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/z;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 588
    return-void
.end method

.method private w()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->o:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->o:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->p:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->p:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->q:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_3

    .line 611
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->q:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->r:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_4

    .line 615
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->r:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 618
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->s:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_5

    .line 619
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->s:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 621
    :cond_5
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
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
    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/l/b;

    const v3, 0x7f090334

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/l/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/l/c;

    const v3, 0x7f090333

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/l/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object v0
.end method

.method public a(Lcom/zhihu/android/app/ui/fragment/l/a;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/p;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->j()V

    .line 188
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/p;->b(I)V

    .line 320
    packed-switch p1, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 322
    :pswitch_0
    const-string v0, "People"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :pswitch_1
    const-string v0, "PeopleDetails"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lcom/zhihu/android/app/ui/fragment/l/a;)V
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/p;->c()V

    .line 193
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->b:Lcom/zhihu/android/a/at;

    iget-object v0, v0, Lcom/zhihu/android/a/at;->i:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 195
    :pswitch_0
    const-string v0, "People"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :pswitch_1
    const-string v0, "PeopleDetails"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Lcom/zhihu/android/api/b/z;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->g:Lcom/zhihu/android/api/b/z;

    return-object v0
.end method

.method protected l()Lcom/zhihu/android/api/model/People;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    return-object v0
.end method

.method protected m()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-static {v0}, Lcom/zhihu/android/app/util/ak;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 356
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/api/model/People;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/l/e$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/l/e$1;-><init>(Lcom/zhihu/android/app/ui/fragment/l/e;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/z;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    .line 421
    :goto_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->o()V

    .line 422
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->k()Lcom/zhihu/android/api/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/l/e$2;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/l/e$2;-><init>(Lcom/zhihu/android/app/ui/fragment/l/e;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/z;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    iget-object v0, v0, Lcom/zhihu/android/a/bj;->c:Lcom/zhihu/android/app/ui/widget/CircleAvatarView;

    if-ne v0, p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/j;->a(Ljava/util/ArrayList;I)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/p;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const-class v0, Lcom/zhihu/android/api/b/z;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/z;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->g:Lcom/zhihu/android/api/b/z;

    .line 143
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_people"

    const-class v3, Lcom/zhihu/android/api/model/People;

    invoke-static {v0, v2, v3}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    .line 147
    const-string v0, "extra_people_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    if-nez v1, :cond_0

    .line 150
    invoke-static {v0}, Lcom/zhihu/android/app/util/ae;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v1, Lcom/zhihu/android/api/model/People;

    invoke-direct {v1}, Lcom/zhihu/android/api/model/People;-><init>()V

    .line 152
    iput-object v0, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->n()V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->a(Z)V

    .line 166
    return-void

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    const v0, 0x7f110019

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 250
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->w()V

    .line 229
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 231
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/p;->onDestroyView()V

    .line 232
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 308
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/p;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 284
    :sswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/b/g;->a(Landroid/os/Parcelable;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    .line 310
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 313
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 288
    :sswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/l/d;->a(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 292
    :sswitch_2
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v2, v2, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 298
    :sswitch_3
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->u()V

    goto :goto_1

    .line 302
    :sswitch_4
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    invoke-virtual {v2}, Lcom/zhihu/android/a/bj;->e()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    invoke-virtual {v3}, Lcom/zhihu/android/a/bj;->e()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const-string v0, "people"

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100264 -> :sswitch_0
        0x7f10026c -> :sswitch_4
        0x7f100275 -> :sswitch_1
        0x7f10028a -> :sswitch_2
        0x7f10028b -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/p;->onPause()V

    .line 220
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/b;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/b;

    invoke-interface {v0}, Lcom/zhihu/android/app/e/b;->a()V

    .line 223
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/p;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 256
    const v0, 0x7f100275

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 258
    const v0, 0x7f10028a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 260
    const v0, 0x7f100264

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 262
    const v0, 0x7f10026c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 264
    const v0, 0x7f10028b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 266
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->j:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->k:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->k:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->j:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->k:Z

    if-nez v0, :cond_4

    :goto_3
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->l:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0901e0

    :goto_4
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 276
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->k:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 277
    return-void

    :cond_1
    move v0, v2

    .line 266
    goto :goto_0

    :cond_2
    move v0, v2

    .line 268
    goto :goto_1

    :cond_3
    move v0, v2

    .line 270
    goto :goto_2

    :cond_4
    move v1, v2

    .line 272
    goto :goto_3

    .line 274
    :cond_5
    const v0, 0x7f0901df

    goto :goto_4
.end method

.method public onProfileUpdatedEvent(Lcom/zhihu/android/app/ui/fragment/l/d$a;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 559
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->l()Lcom/zhihu/android/api/model/People;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/api/model/People;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/l/d$a;->a()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    if-nez v0, :cond_1

    .line 563
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->v()V

    .line 572
    :cond_0
    return-void

    .line 565
    :cond_1
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/l/d$a;->a()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->b(Lcom/zhihu/android/api/model/People;)V

    .line 567
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/l/e$a;

    .line 568
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/l/d$a;->a()Lcom/zhihu/android/api/model/People;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zhihu/android/app/ui/fragment/l/e$a;->a(Lcom/zhihu/android/api/model/People;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/p;->onResume()V

    .line 209
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->n()V

    .line 211
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/b;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/b;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhihu/android/app/util/x;->b(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhihu/android/app/e/b;->a(Landroid/nfc/NdefRecord;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/p;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040089

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/bj;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    .line 174
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->b:Lcom/zhihu/android/a/at;

    iget-object v0, v0, Lcom/zhihu/android/a/at;->e:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->m:Lcom/zhihu/android/a/bj;

    invoke-virtual {v1}, Lcom/zhihu/android/a/bj;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/l/e;->i:Lcom/zhihu/android/api/model/People;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/l/e;->b(Lcom/zhihu/android/api/model/People;)V

    .line 180
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/l/e;->m()V

    .line 181
    return-void
.end method
