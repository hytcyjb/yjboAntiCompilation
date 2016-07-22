.class final Landroid/support/design/widget/q;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/design/widget/q$a;

.field private c:Landroid/view/animation/Animation;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/q;->a:Ljava/util/ArrayList;

    .line 30
    iput-object v1, p0, Landroid/support/design/widget/q;->b:Landroid/support/design/widget/q$a;

    .line 31
    iput-object v1, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    .line 34
    new-instance v0, Landroid/support/design/widget/q$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/q$1;-><init>(Landroid/support/design/widget/q;)V

    iput-object v0, p0, Landroid/support/design/widget/q;->e:Landroid/view/animation/Animation$AnimationListener;

    .line 175
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/q;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/q;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private a(Landroid/support/design/widget/q$a;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p1, Landroid/support/design/widget/q$a;->b:Landroid/view/animation/Animation;

    iput-object v0, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    .line 139
    invoke-virtual {p0}, Landroid/support/design/widget/q;->a()Landroid/view/View;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/support/design/widget/q;->a()Landroid/view/View;

    move-result-object v2

    .line 96
    iget-object v0, p0, Landroid/support/design/widget/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 97
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 98
    iget-object v0, p0, Landroid/support/design/widget/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/q$a;

    iget-object v0, v0, Landroid/support/design/widget/q$a;->b:Landroid/view/animation/Animation;

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 97
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_1
    iput-object v5, p0, Landroid/support/design/widget/q;->d:Ljava/lang/ref/WeakReference;

    .line 104
    iput-object v5, p0, Landroid/support/design/widget/q;->b:Landroid/support/design/widget/q$a;

    .line 105
    iput-object v5, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    .line 106
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Landroid/support/design/widget/q;->a()Landroid/view/View;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method a()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/design/widget/q;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/q;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/support/design/widget/q;->a()Landroid/view/View;

    move-result-object v0

    .line 83
    if-ne v0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-eqz v0, :cond_2

    .line 87
    invoke-direct {p0}, Landroid/support/design/widget/q;->c()V

    .line 89
    :cond_2
    if-eqz p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/q;->d:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method a([I)V
    .locals 5
    .parameter

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Landroid/support/design/widget/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 114
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 115
    iget-object v0, p0, Landroid/support/design/widget/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/q$a;

    .line 116
    iget-object v4, v0, Landroid/support/design/widget/q$a;->a:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/q;->b:Landroid/support/design/widget/q$a;

    if-ne v1, v0, :cond_3

    .line 134
    :cond_1
    :goto_1
    return-void

    .line 114
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/q;->b:Landroid/support/design/widget/q$a;

    if-eqz v0, :cond_4

    .line 125
    invoke-direct {p0}, Landroid/support/design/widget/q;->d()V

    .line 128
    :cond_4
    iput-object v1, p0, Landroid/support/design/widget/q;->b:Landroid/support/design/widget/q$a;

    .line 130
    iget-object v0, p0, Landroid/support/design/widget/q;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 131
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-direct {p0, v1}, Landroid/support/design/widget/q;->a(Landroid/support/design/widget/q$a;)V

    goto :goto_1
.end method

.method public a([ILandroid/view/animation/Animation;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Landroid/support/design/widget/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/design/widget/q$a;-><init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/q$1;)V

    .line 62
    iget-object v1, p0, Landroid/support/design/widget/q;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    iget-object v1, p0, Landroid/support/design/widget/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/support/design/widget/q;->a()Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/q;->c:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 173
    :cond_0
    return-void
.end method
