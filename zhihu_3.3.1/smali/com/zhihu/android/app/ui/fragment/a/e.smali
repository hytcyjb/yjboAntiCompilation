.class public Lcom/zhihu/android/app/ui/fragment/a/e;
.super Lcom/zhihu/android/app/ui/fragment/o;
.source "AnswerPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/github/ksoichiro/android/observablescrollview/a;
.implements Lcom/zhihu/android/app/ui/fragment/a/b$a;
.implements Lcom/zhihu/android/app/ui/widget/adapter/e$a;
.implements Lcom/zhihu/android/app/webkit/ZHRichTextView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/a/e$a;
    }
.end annotation


# instance fields
.field private A:Lcom/zhihu/android/api/model/Paging;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:F

.field private F:I

.field private G:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

.field private H:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

.field private I:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

.field private J:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

.field private K:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

.field private L:Lcom/zhihu/android/app/ui/widget/VoteButton;

.field private M:I

.field private N:Z

.field private O:I

.field private P:Landroid/view/ViewGroup;

.field private Q:Landroid/animation/ObjectAnimator;

.field private R:Landroid/animation/ObjectAnimator;

.field private S:Z

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Z

.field private a:Lcom/zhihu/android/a/am;

.field private b:Lcom/zhihu/android/app/ui/widget/SystemBar;

.field private c:Landroid/animation/ObjectAnimator;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Lcom/zhihu/android/app/ui/widget/adapter/e;

.field private f:Lcom/zhihu/android/api/b/aa;

.field private g:Lcom/zhihu/android/api/b/d;

.field private h:Lcom/zhihu/android/bumblebee/http/e;

.field private i:Lcom/zhihu/android/bumblebee/http/e;

.field private m:Lcom/zhihu/android/bumblebee/http/e;

.field private n:Lcom/zhihu/android/bumblebee/http/e;

.field private o:Lcom/zhihu/android/bumblebee/http/e;

.field private p:Lcom/zhihu/android/bumblebee/http/e;

.field private q:Lcom/zhihu/android/bumblebee/http/e;

.field private r:Lcom/zhihu/android/api/model/Question;

.field private s:Lcom/zhihu/android/api/model/Answer;

.field private t:Lcom/zhihu/android/api/model/Relationship;

.field private u:J

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:I

.field private y:Z

.field private z:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    .line 204
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    .line 206
    iput v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    .line 210
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->z:Ljava/util/Stack;

    .line 1435
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->W:Z

    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 719
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$20;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$20;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 731
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/widget/adapter/e;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    .line 732
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/adapter/e;->a(Lcom/zhihu/android/app/ui/widget/adapter/e$a;)V

    .line 734
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->k:Lcom/zhihu/android/base/widget/ZHViewPager;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->d:Landroid/support/v4/view/ViewPager;

    .line 735
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 736
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->d:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 737
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 740
    sget-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->e:Z

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$21;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$21;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 748
    :cond_0
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->c:Lcom/zhihu/android/a/aw;

    iget-object v0, v0, Lcom/zhihu/android/a/aw;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    .line 752
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->c:Lcom/zhihu/android/a/aw;

    iget-object v0, v0, Lcom/zhihu/android/a/aw;->h:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->G:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    .line 753
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->c:Lcom/zhihu/android/a/aw;

    iget-object v0, v0, Lcom/zhihu/android/a/aw;->i:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->H:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    .line 754
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->c:Lcom/zhihu/android/a/aw;

    iget-object v0, v0, Lcom/zhihu/android/a/aw;->c:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->I:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    .line 755
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->c:Lcom/zhihu/android/a/aw;

    iget-object v0, v0, Lcom/zhihu/android/a/aw;->d:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->J:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    .line 756
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->c:Lcom/zhihu/android/a/aw;

    iget-object v0, v0, Lcom/zhihu/android/a/aw;->f:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->K:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    .line 757
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->c:Lcom/zhihu/android/a/aw;

    iget-object v0, v0, Lcom/zhihu/android/a/aw;->j:Lcom/zhihu/android/app/ui/widget/VoteButton;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    .line 758
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$2;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setOnVoteClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->G:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->H:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->I:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->J:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->K:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4040

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 776
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(Lcom/zhihu/android/api/model/Answer;)V

    .line 777
    return-void
.end method

.method private E()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 803
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v2}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v3}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Relationship;->isNotHelp:Z

    if-nez v0, :cond_4

    :cond_2
    move v0, v1

    .line 809
    :goto_1
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 810
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v2

    iput-boolean v0, v2, Lcom/zhihu/android/api/model/Relationship;->isNotHelp:Z

    .line 811
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Relationship;)V

    .line 813
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(ZZ)V

    .line 814
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->h(Z)V

    goto :goto_0

    .line 808
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private F()V
    .locals 3

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v1}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v2}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/b/a;->a(Lcom/zhihu/android/api/model/Answer;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 827
    :cond_2
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/b/a;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0
.end method

.method private G()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 833
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Relationship;->isThanked:Z

    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    .line 835
    :goto_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 836
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v2

    iput-boolean v0, v2, Lcom/zhihu/android/api/model/Relationship;->isThanked:Z

    .line 837
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Relationship;)V

    .line 839
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(ZZ)V

    .line 840
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->i(Z)V

    .line 842
    :cond_2
    return-void

    .line 834
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 845
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    .line 846
    :goto_0
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 847
    :goto_1
    const-string v3, "answer"

    invoke-static {v0, v1, v3, v2}, Lcom/zhihu/android/app/ui/fragment/f/d;->a(JLjava/lang/String;Lcom/zhihu/android/api/model/CommentStatus;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 848
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    goto :goto_0

    .line 846
    :cond_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-object v2, v2, Lcom/zhihu/android/api/model/Answer;->commentStatus:Lcom/zhihu/android/api/model/CommentStatus;

    goto :goto_1
.end method

.method private I()V
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(Lcom/zhihu/android/api/model/Answer;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 854
    :cond_0
    return-void
.end method

.method private J()V
    .locals 4

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v2, v1, Lcom/zhihu/android/api/model/Answer;->id:J

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$7;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$7;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/d;->g(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->n:Lcom/zhihu/android/bumblebee/http/e;

    .line 1037
    return-void
.end method

.method private K()V
    .locals 5

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getTranslationY()F

    move-result v0

    .line 1105
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->M:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v1, v1, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v3, v0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    .line 1107
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1108
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1109
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private L()V
    .locals 3

    .prologue
    .line 1114
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(FLandroid/animation/Animator$AnimatorListener;Z)V

    .line 1115
    return-void
.end method

.method private M()Lcom/zhihu/android/app/ui/fragment/a/b;
    .locals 3

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->k:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHViewPager;->getCurrentItem()I

    move-result v0

    .line 1247
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/adapter/e;->b()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v2, v2, Lcom/zhihu/android/a/am;->f:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v1, v2, v0}, Lcom/zhihu/android/app/ui/widget/adapter/e;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    .line 1251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N()Lcom/zhihu/android/api/model/Relationship;
    .locals 1

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->M()Lcom/zhihu/android/app/ui/fragment/a/b;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->f()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v0

    .line 1260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private O()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1339
    invoke-direct {p0, v0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(ZZ)V

    .line 1340
    invoke-direct {p0, v0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->d(ZZ)V

    .line 1341
    return-void
.end method

.method private P()V
    .locals 6

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getTranslationY()F

    move-result v0

    .line 1363
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->D:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->E:F

    add-float/2addr v1, v2

    neg-float v1, v1

    .line 1364
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v2, v2, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    .line 1369
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1370
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1371
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 1372
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->R:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private Q()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1395
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHToolBar;->getTranslationY()F

    move-result v2

    .line 1396
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    .line 1398
    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    move v3, v0

    .line 1399
    :goto_0
    cmpl-float v2, v4, v5

    if-nez v2, :cond_3

    move v2, v0

    .line 1401
    :goto_1
    if-eqz v3, :cond_0

    if-nez v2, :cond_4

    .line 1403
    :cond_0
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->d(ZZ)V

    .line 1404
    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->T:I

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_1

    .line 1405
    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(ZZ)V

    .line 1407
    :cond_1
    return-void

    :cond_2
    move v3, v1

    .line 1398
    goto :goto_0

    :cond_3
    move v2, v1

    .line 1399
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1401
    goto :goto_2
.end method

.method private R()V
    .locals 1

    .prologue
    .line 1438
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/a/e$11;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$11;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/ui/fragment/d$a;)V

    .line 1453
    return-void
.end method

.method private S()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 1465
    new-array v1, v3, [I

    .line 1466
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v2, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->getLocationOnScreen([I)V

    .line 1468
    new-array v2, v3, [I

    .line 1469
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v3, v3, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v3, v2}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getLocationOnScreen([I)V

    .line 1471
    aget v1, v1, v0

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v3}, Lcom/zhihu/android/base/widget/ZHToolBar;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    aget v2, v2, v0

    iget v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->D:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private T()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1475
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    invoke-direct {p0, v2, v3}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(FZ)V

    .line 1487
    :goto_0
    return-void

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1481
    invoke-direct {p0, v2, v3}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(FZ)V

    goto :goto_0

    .line 1482
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 1483
    const/high16 v0, 0x4000

    invoke-direct {p0, v0, v3}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(FZ)V

    goto :goto_0

    .line 1485
    :cond_2
    const/high16 v0, 0x4080

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(FZ)V

    goto :goto_0
.end method

.method private U()V
    .locals 2

    .prologue
    .line 1593
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->u()V

    .line 1594
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1596
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    .line 1597
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->V()V

    .line 1605
    :cond_0
    :goto_0
    return-void

    .line 1598
    :cond_1
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_2

    .line 1599
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->W()V

    goto :goto_0

    .line 1600
    :cond_2
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    if-ltz v0, :cond_3

    .line 1601
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->Y()V

    goto :goto_0

    .line 1602
    :cond_3
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    const/16 v1, 0x103

    if-ne v0, v1, :cond_0

    .line 1603
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->X()V

    goto :goto_0
.end method

.method private V()V
    .locals 6

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    .line 1609
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->j:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Question;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->D:I

    .line 1611
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v0}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->e(Lcom/zhihu/android/api/model/Answer;)V

    .line 1613
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(Lcom/zhihu/android/api/model/Answer;)V

    .line 1614
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/e$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/b;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v4, v3, Lcom/zhihu/android/api/model/Answer;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-static {v4}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/api/model/Answer;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zhihu/android/app/ui/widget/adapter/e$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/e;->a(Lcom/zhihu/android/app/ui/widget/adapter/e$b;)V

    .line 1615
    return-void
.end method

.method private W()V
    .locals 6

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/e$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/b;

    iget-wide v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    invoke-static {v4, v5}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(J)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zhihu/android/app/ui/widget/adapter/e$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/e;->a(Lcom/zhihu/android/app/ui/widget/adapter/e$b;)V

    .line 1619
    return-void
.end method

.method private X()V
    .locals 5

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    new-instance v1, Lcom/zhihu/android/app/ui/widget/adapter/e$b;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/b;

    const v3, 0x7f09005f

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/a/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/a/b;->d()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zhihu/android/app/ui/widget/adapter/e$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/e;->a(Lcom/zhihu/android/app/ui/widget/adapter/e$b;)V

    .line 1623
    return-void
.end method

.method private Y()V
    .locals 8

    .prologue
    .line 1626
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    .line 1628
    new-instance v3, Lcom/zhihu/android/app/ui/widget/adapter/e$b;

    const-class v4, Lcom/zhihu/android/app/ui/fragment/a/b;

    iget-wide v6, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/api/model/Answer;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/zhihu/android/app/ui/widget/adapter/e$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/adapter/e;->a(Ljava/util/List;Z)V

    .line 1632
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->d:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 1633
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(Lcom/zhihu/android/api/model/Answer;)V

    .line 1634
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;Lcom/zhihu/android/api/model/Relationship;)Lcom/zhihu/android/api/model/Relationship;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->t:Lcom/zhihu/android/api/model/Relationship;

    return-object p1
.end method

.method public static a(J)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter

    .prologue
    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    const-string v1, "extra_answer_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 260
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answer-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/Answer;)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter

    .prologue
    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    const-string v1, "extra_answer"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answer-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/zhihu/android/api/model/Answer;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/Question;Ljava/util/List;Lcom/zhihu/android/api/model/Paging;I)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/Question;",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Answer;",
            ">;",
            "Lcom/zhihu/android/api/model/Paging;",
            "I)",
            "Lcom/zhihu/android/app/util/bb;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    const-string v1, "extra_question"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    const-string v1, "extra_answer_list"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 273
    const-string v1, "extra_paging"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 274
    const-string v1, "extra_position"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answers-in-question-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/zhihu/android/api/model/Question;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Z)Lcom/zhihu/android/app/util/bb;
    .locals 4
    .parameter

    .prologue
    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    const-string v1, "extra_is_shuffle"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/e;

    const-string v3, "answer-shuffle"

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;Lcom/zhihu/android/bumblebee/http/e;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->i:Lcom/zhihu/android/bumblebee/http/e;

    return-object p1
.end method

.method private a(FLandroid/animation/Animator$AnimatorListener;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 1155
    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1156
    :cond_0
    if-eqz p3, :cond_3

    .line 1157
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 1158
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1165
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput p1, v3, v0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    .line 1166
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1167
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1168
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 1169
    if-eqz p2, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1174
    :cond_3
    return-void
.end method

.method private a(FZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1118
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getTranslationY()F

    move-result v0

    .line 1119
    cmpl-float v1, v0, p1

    if-nez v1, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->S:Z

    if-eqz v1, :cond_2

    .line 1124
    if-eqz p2, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1131
    :cond_2
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    aput p1, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    .line 1132
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1133
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1134
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 1135
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$9;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$9;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1148
    iput-boolean v5, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->S:Z

    .line 1149
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private a(Lcom/zhihu/android/api/model/Answer;Lcom/zhihu/android/api/model/Relationship;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 894
    if-eqz p1, :cond_2

    .line 895
    iget-boolean v1, p1, Lcom/zhihu/android/api/model/Answer;->isMine:Z

    if-nez v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    invoke-virtual {v1, v4}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setEnabled(Z)V

    .line 901
    :goto_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    if-nez p2, :cond_1

    :goto_1
    iget-wide v2, p1, Lcom/zhihu/android/api/model/Answer;->voteUpCount:J

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/zhihu/android/app/ui/widget/VoteButton;->a(IIJ)V

    .line 902
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setAlpha(F)V

    .line 907
    :goto_2
    return-void

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setEnabled(Z)V

    goto :goto_0

    .line 901
    :cond_1
    iget v0, p2, Lcom/zhihu/android/api/model/Relationship;->voting:I

    goto :goto_1

    .line 904
    :cond_2
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setEnabled(Z)V

    .line 905
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setAlpha(F)V

    goto :goto_2
.end method

.method private declared-synchronized a(Lcom/zhihu/android/api/model/AnswerList;)V
    .locals 8
    .parameter

    .prologue
    .line 1233
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1234
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

    .line 1235
    new-instance v3, Lcom/zhihu/android/app/ui/widget/adapter/e$b;

    const-class v4, Lcom/zhihu/android/app/ui/fragment/a/b;

    iget-wide v6, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/api/model/Answer;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/zhihu/android/app/ui/widget/adapter/e$b;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1237
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/adapter/e;->a(Ljava/util/List;Z)V

    .line 1239
    iget-object v0, p1, Lcom/zhihu/android/api/model/AnswerList;->paging:Lcom/zhihu/android/api/model/Paging;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->A:Lcom/zhihu/android/api/model/Paging;

    .line 1240
    iget-object v0, p1, Lcom/zhihu/android/api/model/AnswerList;->paging:Lcom/zhihu/android/api/model/Paging;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->C:Z

    .line 1241
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    iget-object v1, p1, Lcom/zhihu/android/api/model/AnswerList;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1242
    monitor-exit p0

    return-void
.end method

.method private a(Lcom/zhihu/android/api/model/Relationship;)V
    .locals 1
    .parameter

    .prologue
    .line 1264
    if-eqz p1, :cond_0

    .line 1265
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->M()Lcom/zhihu/android/app/ui/fragment/a/b;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/api/model/Relationship;)V

    .line 1270
    :cond_0
    return-void
.end method

.method private a(Lcom/zhihu/android/api/model/Vote;)V
    .locals 6
    .parameter

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1751
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1752
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v0

    iget v1, p1, Lcom/zhihu/android/api/model/Vote;->voting:I

    iput v1, v0, Lcom/zhihu/android/api/model/Relationship;->voting:I

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v2, p1, Lcom/zhihu/android/api/model/Vote;->voteUpCount:J

    iput-wide v2, v0, Lcom/zhihu/android/api/model/Answer;->voteUpCount:J

    .line 1756
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->c:Lcom/zhihu/android/a/aw;

    iget-object v0, v0, Lcom/zhihu/android/a/aw;->j:Lcom/zhihu/android/app/ui/widget/VoteButton;

    const/4 v1, 0x1

    iget v2, p1, Lcom/zhihu/android/api/model/Vote;->voting:I

    iget-wide v4, p1, Lcom/zhihu/android/api/model/Vote;->voteUpCount:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/zhihu/android/app/ui/widget/VoteButton;->a(IIJ)V

    .line 1758
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->x()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;FZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;JLcom/zhihu/android/api/model/Relationship;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(JLcom/zhihu/android/api/model/Relationship;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;Lcom/zhihu/android/api/model/AnswerList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/AnswerList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;Lcom/zhihu/android/api/model/Vote;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Vote;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/e;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(Z)V

    return-void
.end method

.method private a(Lcom/zhihu/android/app/ui/widget/AnswerActionButton;ZZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 931
    invoke-virtual {p0, p4}, Lcom/zhihu/android/app/ui/fragment/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/ui/widget/AnswerActionButton;ZZLjava/lang/String;)V

    .line 932
    return-void
.end method

.method private a(Lcom/zhihu/android/app/ui/widget/AnswerActionButton;ZZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 935
    if-eqz p2, :cond_0

    .line 936
    invoke-virtual {p1, p3}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setButtonActivated(Z)V

    .line 937
    invoke-virtual {p1, p4}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setText(Ljava/lang/String;)V

    .line 938
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setVisibility(I)V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 3
    .parameter

    .prologue
    .line 687
    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getCode()I

    move-result v0

    .line 688
    sparse-switch v0, :sswitch_data_0

    .line 697
    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v1}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhihu/android/app/util/ao;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 699
    :goto_0
    return-void

    .line 690
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v1}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->a(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)V

    goto :goto_0

    .line 693
    :sswitch_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://www.zhihu.com/antispam/unblock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 688
    nop

    :sswitch_data_0
    .sparse-switch
        0xfbf -> :sswitch_0
        0x2bf20 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 910
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->G:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    if-eqz p2, :cond_0

    const v0, 0x7f0901c3

    :goto_0
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/ui/widget/AnswerActionButton;ZZI)V

    .line 911
    return-void

    .line 910
    :cond_0
    const v0, 0x7f0901c9

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/e;)Lcom/zhihu/android/app/ui/fragment/a/b;
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->M()Lcom/zhihu/android/app/ui/fragment/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/e;Lcom/zhihu/android/bumblebee/http/e;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->m:Lcom/zhihu/android/bumblebee/http/e;

    return-object p1
.end method

.method private b(FZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1414
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 1416
    if-eqz p2, :cond_1

    .line 1417
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(F)V

    .line 1419
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 1433
    :goto_0
    return-void

    .line 1425
    :cond_1
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(F)V

    .line 1427
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    if-eqz v1, :cond_2

    .line 1428
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    invoke-static {v1, v0}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 1431
    :cond_2
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-static {v1, v0}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private b(J)V
    .locals 3
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->z:Ljava/util/Stack;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->x()V

    .line 561
    return-void
.end method

.method private b(JLcom/zhihu/android/api/model/Relationship;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 702
    iput-object p3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->t:Lcom/zhihu/android/api/model/Relationship;

    .line 703
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$b;

    iget-boolean v2, p3, Lcom/zhihu/android/api/model/Relationship;->isAnonymous:Z

    invoke-direct {v1, p1, p2, v2}, Lcom/zhihu/android/app/ui/fragment/a/d$b;-><init>(JZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->t:Lcom/zhihu/android/api/model/Relationship;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Relationship;->isAnonymous:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090342

    .line 705
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;I)V

    .line 706
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->x()V

    .line 707
    return-void

    .line 704
    :cond_0
    const v0, 0x7f090341

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/e;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/e;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->g(Z)V

    return-void
.end method

.method private b(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 3
    .parameter

    .prologue
    .line 1736
    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getCode()I

    move-result v0

    .line 1737
    sparse-switch v0, :sswitch_data_0

    .line 1746
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V

    .line 1747
    :goto_0
    return-void

    .line 1739
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v1}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->a(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)V

    goto :goto_0

    .line 1742
    :sswitch_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://www.zhihu.com/antispam/unblock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1737
    nop

    :sswitch_data_0
    .sparse-switch
        0xfbf -> :sswitch_0
        0x2bf20 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 638
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 639
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090340

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_1
    const v2, 0x7f0900c5

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/zhihu/android/app/ui/dialog/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 642
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$18;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e$18;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;Z)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 650
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 651
    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f09033f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 914
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->H:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    if-eqz p2, :cond_0

    const v0, 0x7f0901ca

    :goto_0
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/ui/widget/AnswerActionButton;ZZI)V

    .line 915
    return-void

    .line 914
    :cond_0
    const v0, 0x7f0901cb

    goto :goto_0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/a/e;)Lcom/zhihu/android/api/model/Answer;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    return-object v0
.end method

.method private c(Lcom/zhihu/android/api/model/Answer;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 871
    if-nez p1, :cond_0

    .line 872
    invoke-direct {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->f(Z)V

    .line 873
    invoke-direct {p0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(ZZ)V

    .line 874
    invoke-direct {p0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(ZZ)V

    .line 875
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->d(Lcom/zhihu/android/api/model/Answer;)V

    .line 876
    invoke-direct {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->g(Z)V

    .line 877
    invoke-direct {p0, v0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Answer;Lcom/zhihu/android/api/model/Relationship;)V

    .line 891
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->N()Lcom/zhihu/android/api/model/Relationship;

    move-result-object v4

    .line 880
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/Answer;->isMine:Z

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->f(Z)V

    .line 881
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/Answer;->isMine:Z

    if-nez v0, :cond_1

    move v3, v1

    :goto_1
    if-eqz v4, :cond_2

    iget-boolean v0, v4, Lcom/zhihu/android/api/model/Relationship;->isNotHelp:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(ZZ)V

    .line 882
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/Answer;->isMine:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    if-eqz v4, :cond_4

    iget-boolean v3, v4, Lcom/zhihu/android/api/model/Relationship;->isThanked:Z

    if-eqz v3, :cond_4

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(ZZ)V

    .line 883
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->d(Lcom/zhihu/android/api/model/Answer;)V

    .line 884
    if-nez v4, :cond_5

    .line 885
    invoke-direct {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->g(Z)V

    .line 889
    :goto_5
    invoke-direct {p0, p1, v4}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Answer;Lcom/zhihu/android/api/model/Relationship;)V

    goto :goto_0

    :cond_1
    move v3, v2

    .line 881
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    .line 882
    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    .line 887
    :cond_5
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->J()V

    goto :goto_5
.end method

.method private c(Z)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 654
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->o:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->o:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 659
    :goto_0
    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 684
    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    .line 658
    goto :goto_0

    .line 663
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->f:Lcom/zhihu/android/api/b/aa;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/e$19;

    invoke-direct {v3, p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e$19;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;J)V

    invoke-interface {v2, v0, v1, p1, v3}, Lcom/zhihu/android/api/b/aa;->a(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->o:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1
.end method

.method private c(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1344
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v2, v2, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move v2, v0

    .line 1345
    :goto_0
    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->j(Z)V

    .line 1347
    if-eqz p1, :cond_3

    .line 1348
    invoke-direct {p0, v3, p2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(FZ)V

    .line 1349
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->R()V

    .line 1355
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 1344
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1345
    goto :goto_1

    .line 1351
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->M:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1352
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->M:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v0, p2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(FZ)V

    goto :goto_2
.end method

.method private c(J)Z
    .locals 3
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/a/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->S:Z

    return p1
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/a/e;)Lcom/zhihu/android/api/b/d;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    return-object v0
.end method

.method private d(Lcom/zhihu/android/api/model/Answer;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 926
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/zhihu/android/api/model/Answer;->commentCount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 927
    :goto_0
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->J:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    if-eqz v0, :cond_1

    iget-wide v4, p1, Lcom/zhihu/android/api/model/Answer;->commentCount:J

    invoke-static {v4, v5}, Lcom/zhihu/android/app/util/aa;->a(J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v3, v1, v0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/ui/widget/AnswerActionButton;ZZLjava/lang/String;)V

    .line 928
    return-void

    .line 926
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 927
    :cond_1
    const v2, 0x7f0901c4

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private d(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1358
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(FLandroid/animation/Animator$AnimatorListener;Z)V

    .line 1359
    return-void

    .line 1358
    :cond_0
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->F:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/a/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->B:Z

    return p1
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/a/e;)Lcom/zhihu/android/app/ui/widget/adapter/e;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    return-object v0
.end method

.method private e(Lcom/zhihu/android/api/model/Answer;)V
    .locals 3
    .parameter

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v1, p1, Lcom/zhihu/android/api/model/Answer;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/a/am;->a(Lcom/zhihu/android/api/model/People;)V

    .line 1638
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->e:Lcom/zhihu/android/app/ui/widget/CircleAvatarView;

    iget-object v1, p1, Lcom/zhihu/android/api/model/Answer;->author:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->avatarUrl:Ljava/lang/String;

    sget-object v2, Lcom/zhihu/android/app/util/ImageUtils$ImageSize;->XL:Lcom/zhihu/android/app/util/ImageUtils$ImageSize;

    invoke-static {v1, v2}, Lcom/zhihu/android/app/util/ImageUtils;->a(Ljava/lang/String;Lcom/zhihu/android/app/util/ImageUtils$ImageSize;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/CircleAvatarView;->setImageURI(Landroid/net/Uri;)V

    .line 1639
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->d:Lcom/zhihu/android/base/widget/ZHCardView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$13;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$13;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1646
    return-void
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/a/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->W:Z

    return p1
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/a/e;)Lcom/zhihu/android/a/am;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    return-object v0
.end method

.method private f(Z)V
    .locals 3
    .parameter

    .prologue
    .line 918
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->K:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    const/4 v1, 0x0

    const v2, 0x7f0901c6

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/ui/widget/AnswerActionButton;ZZLjava/lang/String;)V

    .line 919
    return-void
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/a/e;)J
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    return-wide v0
.end method

.method private g(Z)V
    .locals 3
    .parameter

    .prologue
    .line 922
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->I:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const v0, 0x7f0901c8

    :goto_0
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/ui/widget/AnswerActionButton;ZZI)V

    .line 923
    return-void

    .line 922
    :cond_0
    const v0, 0x7f0901c7

    goto :goto_0
.end method

.method static synthetic h(Lcom/zhihu/android/app/ui/fragment/a/e;)Lcom/zhihu/android/api/model/Question;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    return-object v0
.end method

.method private h(Z)V
    .locals 5
    .parameter

    .prologue
    .line 945
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->i:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 978
    :goto_0
    return-void

    .line 949
    :cond_0
    if-eqz p1, :cond_2

    .line 950
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    :goto_1
    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/e$3;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$3;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/zhihu/android/api/b/d;->d(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->i:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    goto :goto_1

    .line 964
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    :goto_2
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/a/e$4;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$4;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/zhihu/android/api/b/d;->a(JLjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->i:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    goto :goto_2
.end method

.method private i(I)V
    .locals 4
    .parameter

    .prologue
    .line 1221
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    .line 1223
    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    .line 1224
    iget-wide v2, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    iput-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    .line 1225
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->e(Lcom/zhihu/android/api/model/Answer;)V

    .line 1226
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->k()V

    .line 1227
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(Lcom/zhihu/android/api/model/Answer;)V

    .line 1228
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->x()V

    .line 1230
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/zhihu/android/app/ui/fragment/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->T()V

    return-void
.end method

.method private i(Z)V
    .locals 5
    .parameter

    .prologue
    .line 981
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->m:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 985
    :cond_0
    if-eqz p1, :cond_2

    .line 986
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    :goto_1
    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/e$5;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$5;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/zhihu/android/api/b/d;->e(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->m:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    goto :goto_1

    .line 999
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    :goto_2
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/a/e$6;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$6;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/zhihu/android/api/b/d;->b(JLjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->m:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    goto :goto_2
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 303
    const-string v0, "extra_answer"

    const-class v4, Lcom/zhihu/android/api/model/Answer;

    invoke-static {v1, v0, v4}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    .line 306
    const-string v0, "extra_answer_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    .line 309
    const-string v0, "extra_question"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    .line 310
    const-string v0, "extra_answer_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 311
    const-string v0, "extra_paging"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Paging;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->A:Lcom/zhihu/android/api/model/Paging;

    .line 312
    const-string v0, "extra_position"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    .line 315
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget v5, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    if-le v0, v5, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "extra_answer"

    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 317
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "extra_answer_list"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    :cond_0
    const-string v0, "extra_is_shuffle"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->y:Z

    .line 323
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->y:Z

    if-eqz v0, :cond_1

    .line 324
    const/16 v0, 0x103

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 338
    :goto_1
    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    .line 363
    :goto_2
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    .line 327
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    goto :goto_0

    .line 328
    :cond_2
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 329
    const/16 v0, 0x101

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    goto :goto_0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 332
    const/16 v0, 0x102

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    goto :goto_0

    .line 334
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments was wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-wide v0, v2

    .line 337
    goto :goto_1

    .line 344
    :cond_6
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->f:Lcom/zhihu/android/api/b/aa;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/e$1;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$1;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/zhihu/android/api/b/aa;->d(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->p:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_2
.end method

.method private j(I)V
    .locals 5
    .parameter

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getTranslationY()F

    move-result v0

    .line 1302
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->getHeight()I

    move-result v1

    .line 1303
    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->T:I

    sub-int/2addr v2, p1

    .line 1305
    iget-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->N:Z

    if-eqz v3, :cond_2

    .line 1306
    int-to-float v3, v2

    add-float/2addr v3, v0

    neg-int v4, v1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTranslationY(F)V

    .line 1325
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->T()V

    .line 1326
    return-void

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTranslationY(F)V

    goto :goto_0

    .line 1312
    :cond_2
    if-ge p1, v1, :cond_0

    .line 1313
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1314
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1317
    :cond_3
    div-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_4

    .line 1318
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->j(Z)V

    .line 1321
    :cond_4
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTranslationY(F)V

    goto :goto_0
.end method

.method private j(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$8;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e$8;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;Z)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->post(Ljava/lang/Runnable;)Z

    .line 1093
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/b;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/b;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    invoke-static {v2, v3}, Lcom/zhihu/android/app/util/x;->a(J)Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhihu/android/app/e/b;->a(Landroid/nfc/NdefRecord;)V

    .line 419
    :cond_0
    return-void
.end method

.method private k(I)V
    .locals 3
    .parameter

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getTranslationY()F

    move-result v0

    .line 1330
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->D:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->E:F

    add-float/2addr v1, v2

    .line 1331
    iget-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->N:Z

    if-eqz v2, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    neg-int v2, p1

    int-to-float v2, v2

    neg-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setTranslationY(F)V

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    int-to-float v2, p1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_0

    neg-int v1, p1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    neg-int v1, p1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setTranslationY(F)V

    goto :goto_0
.end method

.method private l()J
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->z:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 565
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->x()V

    .line 566
    return-wide v0
.end method

.method private l(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1376
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->T:I

    sub-int/2addr v0, p1

    .line 1378
    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->N:Z

    if-eqz v1, :cond_1

    .line 1380
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->O:I

    if-le v0, v1, :cond_0

    .line 1381
    invoke-direct {p0, v2, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(ZZ)V

    .line 1383
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->d(ZZ)V

    .line 1384
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->P()V

    .line 1392
    :goto_0
    return-void

    .line 1387
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->O:I

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->U:Z

    if-nez v0, :cond_2

    .line 1388
    invoke-direct {p0, v3, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(ZZ)V

    .line 1390
    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->d(ZZ)V

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0901f2

    const v3, 0x7f090074

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/content/Context;IIIZ)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 572
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$16;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$16;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 613
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 614
    return-void
.end method

.method private m(I)V
    .locals 2
    .parameter

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->M()Lcom/zhihu/android/app/ui/fragment/a/b;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->b(Z)V

    .line 1411
    return-void

    .line 1410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "answer"

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v2, v1, Lcom/zhihu/android/api/model/Answer;->id:J

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Answer;->commentPermission:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/zhihu/android/app/ui/fragment/b/c;->a(Ljava/lang/String;JLjava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 620
    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/e;->d()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 627
    :cond_0
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/a/e$17;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$17;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    .line 634
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->F:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(FLandroid/animation/Animator$AnimatorListener;Z)V

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->M:I

    .line 713
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const/high16 v1, 0x4290

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->E:F

    .line 714
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const/high16 v1, 0x4260

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->F:I

    .line 715
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    const v0, 0x7f040065

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/am;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    .line 368
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v0}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->U:Z

    .line 1494
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1068
    if-eqz p1, :cond_0

    .line 1069
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_0

    .line 1070
    invoke-direct {p0, v2, v3}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(FZ)V

    .line 1071
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->j(Z)V

    .line 1072
    invoke-direct {p0, v2, v3}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(FZ)V

    .line 1073
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->K()V

    .line 1074
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->L()V

    .line 1077
    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1179
    return-void
.end method

.method public a(IZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->V:Z

    if-nez v0, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1280
    :cond_0
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->T:I

    if-ge v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->N:Z

    .line 1281
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->m(I)V

    .line 1283
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->M()Lcom/zhihu/android/app/ui/fragment/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->e()Lcom/zhihu/android/app/webkit/ZHRichTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->a(I)Z

    move-result v0

    .line 1284
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1286
    if-eqz v0, :cond_2

    if-le p1, v1, :cond_2

    .line 1287
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->O()V

    .line 1297
    :goto_2
    iput p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->T:I

    goto :goto_0

    .line 1280
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1289
    :cond_2
    if-ge p1, v1, :cond_3

    .line 1290
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->j(I)V

    .line 1291
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->k(I)V

    goto :goto_2

    .line 1293
    :cond_3
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->l(I)V

    goto :goto_2
.end method

.method public a(JLcom/zhihu/android/api/model/Relationship;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 857
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setVoteType(I)V

    .line 860
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->L:Lcom/zhihu/android/app/ui/widget/VoteButton;

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/VoteButton;->setVoting(I)V

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(Lcom/zhihu/android/api/model/Answer;)V

    .line 864
    :cond_1
    return-void

    .line 860
    :cond_2
    iget v0, p3, Lcom/zhihu/android/api/model/Relationship;->voting:I

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;ILandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1043
    instance-of v0, p3, Lcom/zhihu/android/app/ui/fragment/a/b;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 1044
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/app/ui/fragment/a/b$a;)V

    move-object v0, p3

    .line 1045
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/github/ksoichiro/android/observablescrollview/a;)V

    .line 1046
    check-cast p3, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {p3, v1}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/app/webkit/ZHRichTextView$a;)V

    .line 1049
    :cond_0
    instance-of v0, p4, Lcom/zhihu/android/app/ui/fragment/a/b;

    if-eqz v0, :cond_1

    move-object v0, p4

    .line 1050
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/app/ui/fragment/a/b$a;)V

    move-object v0, p4

    .line 1051
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/github/ksoichiro/android/observablescrollview/a;)V

    move-object v0, p4

    .line 1052
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/app/webkit/ZHRichTextView$a;)V

    .line 1057
    :cond_1
    instance-of v0, p4, Lcom/zhihu/android/app/ui/fragment/a/b;

    if-eqz v0, :cond_2

    .line 1058
    check-cast p4, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {p4}, Lcom/zhihu/android/app/ui/fragment/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1059
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1064
    :cond_2
    :goto_0
    return-void

    .line 1061
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 1
    .parameter

    .prologue
    .line 1498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->U:Z

    .line 1499
    return-void
.end method

.method public a(Lcom/zhihu/android/api/model/Question;)V
    .locals 2
    .parameter

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1544
    :cond_0
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    .line 1545
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->j:Lcom/zhihu/android/base/widget/ZHTextView;

    iget-object v1, p1, Lcom/zhihu/android/api/model/Question;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1546
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->D:I

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 381
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    .line 382
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(F)V

    .line 384
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->y:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09005f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->f(I)V

    .line 385
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->A()V

    .line 386
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->e(I)V

    .line 388
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$12;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$12;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    return-void

    .line 384
    :cond_0
    const v0, 0x7f09038e

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 1457
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->W:Z

    if-eqz v0, :cond_0

    .line 1461
    :goto_0
    return-void

    .line 1460
    :cond_0
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public declared-synchronized b(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1183
    monitor-enter p0

    :try_start_0
    const-string v0, "Answer"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 1185
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/e;->i(I)V

    .line 1186
    iput p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    .line 1190
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->A:Lcom/zhihu/android/api/model/Paging;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->A:Lcom/zhihu/android/api/model/Paging;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/e;->b()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/e;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->B:Z

    .line 1193
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->h:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v0, Lcom/zhihu/android/api/model/Question;->id:J

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->A:Lcom/zhihu/android/api/model/Paging;

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    new-instance v6, Lcom/zhihu/android/app/ui/fragment/a/e$10;

    invoke-direct {v6, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$10;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-interface/range {v1 .. v6}, Lcom/zhihu/android/api/b/d;->a(JJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->h:Lcom/zhihu/android/bumblebee/http/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    :cond_1
    monitor-exit p0

    return-void

    .line 1183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/zhihu/android/api/model/Answer;)V
    .locals 6
    .parameter

    .prologue
    .line 1550
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->w:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_2

    .line 1551
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1552
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    .line 1554
    iget-wide v2, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    iget-wide v4, p1, Lcom/zhihu/android/api/model/Answer;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1555
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->v:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1557
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->x:I

    if-ne v1, v0, :cond_0

    .line 1558
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    .line 1559
    iget-wide v0, p1, Lcom/zhihu/android/api/model/Answer;->id:J

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    .line 1560
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->k()V

    .line 1561
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->e(Lcom/zhihu/android/api/model/Answer;)V

    .line 1562
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(Lcom/zhihu/android/api/model/Answer;)V

    .line 1563
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->x()V

    .line 1578
    :cond_0
    :goto_1
    return-void

    .line 1552
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1571
    :cond_2
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    .line 1572
    iget-wide v0, p1, Lcom/zhihu/android/api/model/Answer;->id:J

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    .line 1573
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->k()V

    .line 1574
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->e(Lcom/zhihu/android/api/model/Answer;)V

    .line 1575
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->c(Lcom/zhihu/android/api/model/Answer;)V

    .line 1576
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->x()V

    goto :goto_1
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->c()V

    .line 374
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "ShuffleAnswer"

    :goto_0
    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 375
    return-void

    .line 374
    :cond_0
    const-string v0, "Answer"

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 1515
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->V:Z

    if-eqz v0, :cond_0

    .line 1516
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(FLandroid/animation/Animator$AnimatorListener;Z)V

    .line 1518
    :cond_0
    return-void
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 1521
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->M()Lcom/zhihu/android/app/ui/fragment/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->M()Lcom/zhihu/android/app/ui/fragment/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    :goto_0
    monitor-exit p0

    return-void

    .line 1524
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->V:Z

    if-eqz v0, :cond_0

    .line 1504
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->Q()V

    .line 1506
    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1534
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTranslationY(F)V

    .line 1535
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setTranslationY(F)V

    .line 1536
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1537
    return-void
.end method

.method public l_()V
    .locals 0

    .prologue
    .line 1511
    return-void
.end method

.method public onAnswerCollectionUpdateEvent(Lcom/zhihu/android/app/d/d;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 1662
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->a()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1663
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->a()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Collection;->isFavorited:Z

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->g(Z)V

    .line 1665
    :cond_0
    return-void
.end method

.method public onAnswerReturnTopGuideEvent(Lcom/zhihu/android/app/d/c;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1652
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getTranslationY()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    move v0, v1

    .line 1653
    :goto_0
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->W:Z

    .line 1654
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->j(Z)V

    .line 1655
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/c;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->performClick()Z

    .line 1658
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1652
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1654
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 800
    :goto_0
    return-void

    .line 783
    :sswitch_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->E()V

    goto :goto_0

    .line 786
    :sswitch_1
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->F()V

    goto :goto_0

    .line 789
    :sswitch_2
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->G()V

    goto :goto_0

    .line 792
    :sswitch_3
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->H()V

    goto :goto_0

    .line 795
    :sswitch_4
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->I()V

    goto :goto_0

    .line 781
    :sswitch_data_0
    .sparse-switch
        0x7f10011c -> :sswitch_3
        0x7f10019a -> :sswitch_4
        0x7f10019b -> :sswitch_0
        0x7f10019c -> :sswitch_2
        0x7f10019d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCommentEvent(Lcom/zhihu/android/app/d/g;)V
    .locals 8
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 1681
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->J:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    if-nez v0, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1685
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    const-string v2, "answer"

    invoke-virtual {p1, v0, v1, v2}, Lcom/zhihu/android/app/d/g;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->commentCount:J

    .line 1687
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1688
    add-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1692
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iput-wide v0, v2, Lcom/zhihu/android/api/model/Answer;->commentCount:J

    .line 1693
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->J:Lcom/zhihu/android/app/ui/widget/AnswerActionButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0901c4

    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/a/e;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhihu/android/app/ui/widget/AnswerActionButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1689
    :cond_3
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1690
    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1
.end method

.method public onCommentPermissionEvent(Lcom/zhihu/android/app/d/h;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    const-string v0, "answer"

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/h;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Answer;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 1674
    if-eqz v0, :cond_0

    .line 1675
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iput-object v0, v1, Lcom/zhihu/android/api/model/Answer;->commentPermission:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 288
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->d(Z)V

    .line 290
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->e(Z)V

    .line 292
    const-class v0, Lcom/zhihu/android/api/b/d;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/d;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    .line 293
    const-class v0, Lcom/zhihu/android/api/b/aa;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/aa;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->f:Lcom/zhihu/android/api/b/aa;

    .line 294
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->O:I

    .line 296
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->j()V

    .line 297
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 478
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 479
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->d:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->h:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->p:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_4

    .line 456
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->p:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 459
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->o:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_5

    .line 460
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->o:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->q:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_6

    .line 464
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->q:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 468
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->V:Z

    .line 469
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 471
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->onDestroyView()V

    .line 472
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    if-ne p1, v0, :cond_1

    .line 1585
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->U()V

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    if-ne p1, v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    iget-object v0, v0, Lcom/zhihu/android/a/am;->g:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->D:I

    .line 1588
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/e$a;

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->D:I

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/e$a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 513
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 555
    :cond_0
    :goto_0
    return v4

    .line 515
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/b/g;->a(Landroid/os/Parcelable;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 518
    :pswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/e;->d()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 519
    instance-of v1, v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v2, v1, Lcom/zhihu/android/api/model/Answer;->id:J

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(J)V

    .line 521
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Z)V

    goto :goto_0

    .line 520
    :cond_1
    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    goto :goto_1

    .line 525
    :pswitch_2
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->l()J

    move-result-wide v2

    .line 526
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->e:Lcom/zhihu/android/app/ui/widget/adapter/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/e;->d()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 527
    instance-of v1, v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    if-eqz v1, :cond_0

    .line 528
    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/b;

    invoke-virtual {v0, v2, v3, v4}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(JZ)V

    goto :goto_0

    .line 532
    :pswitch_3
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->o()V

    goto :goto_0

    .line 535
    :pswitch_4
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v1}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->a:Lcom/zhihu/android/a/am;

    invoke-virtual {v2}, Lcom/zhihu/android/a/am;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "answer"

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->u:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 540
    :pswitch_5
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->m()V

    goto :goto_0

    .line 543
    :pswitch_6
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->n()V

    goto :goto_0

    .line 546
    :pswitch_7
    invoke-direct {p0, v4}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(Z)V

    goto :goto_0

    .line 549
    :pswitch_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(Z)V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x7f100264
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->onPause()V

    .line 425
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/b;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/b;

    invoke-interface {v0}, Lcom/zhihu/android/app/e/b;->a()V

    .line 429
    :cond_0
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/a/e$15;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$15;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/app/ui/fragment/d$a;)V

    .line 435
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f100266

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 485
    const v0, 0x7f100265

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->y:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->y:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 487
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->y:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->z:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 490
    :cond_0
    const v0, 0x7f100268

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Answer;->isMine:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 491
    const v0, 0x7f100269

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Answer;->isMine:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 493
    const v0, 0x7f10026a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 494
    const v3, 0x7f10026b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 495
    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->t:Lcom/zhihu/android/api/model/Relationship;

    if-eqz v4, :cond_5

    .line 496
    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->t:Lcom/zhihu/android/api/model/Relationship;

    iget-boolean v4, v4, Lcom/zhihu/android/api/model/Relationship;->isAnonymous:Z

    .line 497
    if-nez v4, :cond_4

    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 498
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 488
    goto :goto_0

    :cond_2
    move v0, v2

    .line 490
    goto :goto_1

    :cond_3
    move v0, v2

    .line 491
    goto :goto_2

    :cond_4
    move v1, v2

    .line 497
    goto :goto_3

    .line 499
    :cond_5
    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    iget-object v4, v4, Lcom/zhihu/android/api/model/Question;->relationship:Lcom/zhihu/android/api/model/Relationship;

    if-eqz v4, :cond_7

    .line 500
    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->r:Lcom/zhihu/android/api/model/Question;

    iget-object v4, v4, Lcom/zhihu/android/api/model/Question;->relationship:Lcom/zhihu/android/api/model/Relationship;

    iget-boolean v4, v4, Lcom/zhihu/android/api/model/Relationship;->isAnonymous:Z

    .line 501
    if-nez v4, :cond_6

    :goto_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 502
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v1, v2

    .line 501
    goto :goto_5

    .line 504
    :cond_7
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->onResume()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->V:Z

    .line 412
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->k()V

    .line 413
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 401
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->B()V

    .line 402
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->C()V

    .line 403
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/e;->D()V

    .line 404
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public onVoteEvent(Lcom/zhihu/android/app/d/o;)V
    .locals 5
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 1700
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/o;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/o;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->s:Lcom/zhihu/android/api/model/Answer;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Answer;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return-void

    .line 1704
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->q:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    .line 1705
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->q:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1708
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->g:Lcom/zhihu/android/api/b/d;

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/o;->a()J

    move-result-wide v2

    new-instance v1, Lcom/zhihu/android/api/model/Vote;

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/o;->c()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/zhihu/android/api/model/Vote;-><init>(I)V

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/a/e$14;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/a/e$14;-><init>(Lcom/zhihu/android/app/ui/fragment/a/e;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/zhihu/android/api/b/d;->a(JLcom/zhihu/android/api/model/Vote;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/e;->q:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method
