.class public Lcom/zhihu/android/app/ui/fragment/a/b;
.super Lcom/zhihu/android/app/ui/fragment/o;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
.implements Lcom/github/ksoichiro/android/observablescrollview/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/a/b$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private a:Lcom/zhihu/android/api/b/aa;

.field private b:Lcom/zhihu/android/api/b/d;

.field private c:Lcom/zhihu/android/bumblebee/http/e;

.field private d:Lcom/zhihu/android/bumblebee/http/e;

.field private e:Lcom/zhihu/android/bumblebee/http/e;

.field private f:Lcom/zhihu/android/api/model/Answer;

.field private g:J

.field private h:I

.field private i:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Lcom/zhihu/android/app/ui/fragment/a/b$a;

.field private v:Lcom/zhihu/android/app/webkit/ZHRichTextView$a;

.field private w:Lcom/github/ksoichiro/android/observablescrollview/a;

.field private x:Lcom/zhihu/android/a/w;

.field private y:Lcom/zhihu/android/api/model/Relationship;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;-><init>()V

    .line 115
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    .line 119
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->m:Z

    .line 129
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->r:Z

    return-void
.end method

.method private B()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 688
    .line 690
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_1

    .line 691
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-object v3, v3, Lcom/zhihu/android/api/model/Answer;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/api/model/People;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 696
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Answer;->isCopyable:Z

    if-nez v0, :cond_0

    :goto_1
    return v1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private C()V
    .locals 2

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->A:Z

    if-eqz v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 704
    :cond_0
    const-string v0, "\u6ce8\u518c\u4e86\u526a\u5207\u677f\u76d1\u542c"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 706
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->A:Z

    goto :goto_0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->A:Z

    if-nez v0, :cond_0

    .line 719
    :goto_0
    return-void

    .line 715
    :cond_0
    const-string v0, "\u79fb\u9664\u4e86\u526a\u5207\u677f\u76d1\u542c"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 717
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->A:Z

    goto :goto_0
.end method

.method private E()V
    .locals 3

    .prologue
    .line 759
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    const v1, 0x7f0901f6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 760
    return-void
.end method

.method public static a(J)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v1, "extra_answer_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    return-object v0
.end method

.method public static a(Lcom/zhihu/android/api/model/Answer;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    const-string v1, "extra_answer"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/b;Lcom/zhihu/android/api/model/Relationship;)Lcom/zhihu/android/api/model/Relationship;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->y:Lcom/zhihu/android/api/model/Relationship;

    return-object p1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/b;)Lcom/zhihu/android/app/webkit/ZHRichTextView$a;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->v:Lcom/zhihu/android/app/webkit/ZHRichTextView$a;

    return-object v0
.end method

.method private a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 821
    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->t:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->t:Landroid/animation/ObjectAnimator;

    .line 830
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 831
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->t:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 833
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->t:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/a/b$3;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 856
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private a(Lcom/zhihu/android/api/model/Answer;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->f(Z)V

    .line 552
    if-eqz p1, :cond_2

    .line 553
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->setVisibility(I)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    invoke-virtual {v0, p2, v7}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->b(IZ)V

    .line 558
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    invoke-virtual {v0, p3, v7}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->c(IZ)V

    .line 559
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->z:Z

    if-nez v0, :cond_1

    .line 560
    new-instance v0, Lcom/zhihu/android/app/c/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/c/c;-><init>(Landroid/app/Activity;)V

    .line 561
    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/c/c;->a(Lcom/zhihu/android/api/model/Answer;)Lrx/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/util/o;

    invoke-direct {v1}, Lcom/zhihu/android/app/util/o;-><init>()V

    invoke-virtual {v0, v1}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    .line 562
    iput-boolean v7, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->z:Z

    .line 565
    :cond_1
    iget-object v0, p1, Lcom/zhihu/android/api/model/Answer;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/zhihu/android/api/model/Answer;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/SuggestEdit;->status:Z

    if-eqz v0, :cond_3

    .line 566
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/Answer;->author:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/api/model/People;)Z

    move-result v0

    .line 567
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v1, v1, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    iget-object v2, p1, Lcom/zhihu/android/api/model/Answer;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    iget-object v3, p1, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->a(Lcom/zhihu/android/api/model/SuggestEdit;Ljava/lang/String;ZI)V

    .line 572
    :cond_2
    :goto_0
    return-void

    .line 569
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    iget-object v1, p1, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    iget-wide v2, p1, Lcom/zhihu/android/api/model/Answer;->createdTime:J

    iget-wide v4, p1, Lcom/zhihu/android/api/model/Answer;->updatedTime:J

    iget-boolean v6, p1, Lcom/zhihu/android/api/model/Answer;->isCopyable:Z

    invoke-virtual/range {v0 .. v7}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->a(Ljava/lang/String;JJZI)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/b;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/b;Lcom/zhihu/android/api/model/Answer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/b;->b(Lcom/zhihu/android/api/model/Answer;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/b;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/b;->c(Z)V

    return-void
.end method

.method private a(Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 615
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 616
    iget-object v0, p1, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    const v1, 0x7f100065

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 618
    if-eqz v0, :cond_0

    .line 619
    iget-object v1, p1, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    iget v1, p1, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    const v1, 0x7f100089

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHImageView;

    .line 626
    iget v1, p1, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/base/widget/ZHImageView;->a(IZ)V

    .line 628
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->setVisibility(I)V

    .line 630
    :cond_1
    return-void
.end method

.method private a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-direct {p0, v6}, Lcom/zhihu/android/app/ui/fragment/a/b;->f(Z)V

    .line 581
    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0903c1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;I)V

    .line 585
    :cond_1
    new-instance v0, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;

    const v1, 0x7f09034d

    const v2, 0x7f01004a

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v3

    iget v4, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    sub-int/2addr v3, v4

    const v4, 0x7f09034f

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/a/b$11;

    invoke-direct {v5, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$11;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;-><init>(IIIILandroid/view/View$OnClickListener;)V

    .line 594
    iput-boolean v6, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->r:Z

    .line 595
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;)V

    .line 596
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->e()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/b;)Lcom/zhihu/android/base/widget/ZHRelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    return-object v0
.end method

.method private b(J)V
    .locals 3
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->b:Lcom/zhihu/android/api/b/d;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$8;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$8;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/zhihu/android/api/b/d;->h(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 445
    return-void
.end method

.method private b(Lcom/zhihu/android/api/model/Answer;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x102

    .line 505
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 509
    :cond_0
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    .line 511
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    if-ne v0, v2, :cond_4

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->g:J

    .line 514
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    .line 517
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->u()V

    .line 521
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->i:Z

    if-eqz v0, :cond_2

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->i:Z

    .line 523
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->n()V

    .line 526
    :cond_2
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    if-ne v0, v2, :cond_3

    .line 527
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->o()V

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->p:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/api/model/Answer;II)V

    .line 535
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->r:Z

    .line 536
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Question;)V

    .line 537
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(Lcom/zhihu/android/api/model/Answer;)V

    .line 538
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->e()V

    .line 540
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 541
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->C()V

    .line 546
    :goto_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/b;->b(J)V

    goto :goto_0

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->p:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/api/model/Answer;II)V

    goto :goto_1

    .line 543
    :cond_5
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->D()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/a/b;)J
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->g:J

    return-wide v0
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 370
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->i:Z

    .line 371
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->i:Z

    if-eqz v0, :cond_0

    .line 372
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->i:Z

    .line 373
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->n()V

    .line 377
    :cond_0
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    if-nez v0, :cond_1

    .line 378
    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Z)V

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_1
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->g:J

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(JZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    goto :goto_1
.end method

.method public static d()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    const-string v1, "extra_is_shuffle"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    return-object v0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/a/b;)Lcom/zhihu/android/api/model/Relationship;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->y:Lcom/zhihu/android/api/model/Relationship;

    return-object v0
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/a/b;)Lcom/zhihu/android/a/w;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    return-object v0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/a/b;)Lcom/zhihu/android/app/ui/fragment/a/b$a;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->u:Lcom/zhihu/android/app/ui/fragment/a/b$a;

    return-object v0
.end method

.method private f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->k:Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/b$2;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;Z)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 612
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_is_shuffle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 183
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_answer"

    const-class v3, Lcom/zhihu/android/api/model/Answer;

    invoke-static {v0, v2, v3}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    .line 184
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_answer_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->g:J

    .line 186
    if-nez v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    const-string v1, ""

    iput-object v1, v0, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->g:J

    .line 190
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    .line 199
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 192
    const/16 v0, 0x101

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments was wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2
    const/16 v0, 0x102

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->h()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    .line 308
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const/high16 v1, 0x4100

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->o:I

    .line 309
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const/high16 v1, 0x4280

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->p:I

    .line 310
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->q:I

    .line 311
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 314
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4220

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->o:I

    sub-int/2addr v0, v1

    .line 315
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v1, v1, Lcom/zhihu/android/a/w;->k:Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;

    int-to-float v0, v0

    const/16 v2, 0x28

    invoke-virtual {v1, v0, v2}, Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;->a(FI)V

    .line 316
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->f:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    .line 320
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4040

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 322
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->i:Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$5;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$5;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;->setInterceptListener(Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout$a;)V

    .line 343
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->g:Landroid/support/v7/widget/AppCompatSeekBar;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/app/util/af;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSeekBar;->setProgress(I)V

    .line 344
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->g:Landroid/support/v7/widget/AppCompatSeekBar;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$6;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$6;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 365
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 478
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->c:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->c:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->a:Lcom/zhihu/android/api/b/aa;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v1, Lcom/zhihu/android/api/model/Question;->id:J

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$10;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$10;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/aa;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->c:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->i()V

    .line 603
    :cond_0
    return-void
.end method

.method private declared-synchronized u()V
    .locals 3

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x102

    if-ne v0, v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 664
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->m:Z

    if-eqz v0, :cond_2

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->m:Z

    .line 666
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->p:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Lcom/zhihu/android/api/model/Answer;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 668
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->b(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    const v0, 0x7f04004c

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/w;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    .line 206
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->k:Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$1;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V

    .line 213
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->f:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setRequestInterceptTouchEvent(Z)V

    .line 215
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/a;)V

    .line 216
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->setOverScrollMode(I)V

    .line 217
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$4;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$4;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->setOnRichTextViewOnClickListener(Lcom/zhihu/android/app/webkit/ZHRichTextView$a;)V

    .line 233
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    invoke-virtual {v0}, Lcom/zhihu/android/a/w;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->w:Lcom/github/ksoichiro/android/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->w:Lcom/github/ksoichiro/android/observablescrollview/a;

    invoke-interface {v0}, Lcom/github/ksoichiro/android/observablescrollview/a;->a()V

    .line 800
    :cond_0
    return-void
.end method

.method public a(IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->w:Lcom/github/ksoichiro/android/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->w:Lcom/github/ksoichiro/android/observablescrollview/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/github/ksoichiro/android/observablescrollview/a;->a(IZZ)V

    .line 793
    :cond_0
    return-void
.end method

.method public a(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->f(Z)V

    .line 390
    iput-wide p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->g:J

    .line 391
    const/16 v0, 0x101

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    .line 392
    iput-boolean p3, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->i:Z

    .line 394
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->d:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->d:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->b:Lcom/zhihu/android/api/b/d;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$7;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$7;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/zhihu/android/api/b/d;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->d:Lcom/zhihu/android/bumblebee/http/e;

    .line 419
    return-void
.end method

.method public a(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 1
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->w:Lcom/github/ksoichiro/android/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->w:Lcom/github/ksoichiro/android/observablescrollview/a;

    invoke-interface {v0, p1}, Lcom/github/ksoichiro/android/observablescrollview/a;->a(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V

    .line 807
    :cond_0
    return-void
.end method

.method public a(Lcom/github/ksoichiro/android/observablescrollview/a;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->w:Lcom/github/ksoichiro/android/observablescrollview/a;

    .line 786
    return-void
.end method

.method public a(Lcom/zhihu/android/api/model/Relationship;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->y:Lcom/zhihu/android/api/model/Relationship;

    .line 774
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/fragment/a/b$a;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->u:Lcom/zhihu/android/app/ui/fragment/a/b$a;

    .line 778
    return-void
.end method

.method public a(Lcom/zhihu/android/app/webkit/ZHRichTextView$a;)V
    .locals 0
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->v:Lcom/zhihu/android/app/webkit/ZHRichTextView$a;

    .line 782
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->f(Z)V

    .line 450
    const/16 v0, 0x102

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->h:I

    .line 451
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->i:Z

    .line 453
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->b:Lcom/zhihu/android/api/b/d;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/b$9;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/b$9;-><init>(Lcom/zhihu/android/app/ui/fragment/a/b;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/d;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    .line 474
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 810
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->k:Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;->setEnabled(Z)V

    .line 811
    return-void
.end method

.method public e()Lcom/zhihu/android/app/webkit/ZHRichTextView;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->l:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    return-object v0
.end method

.method public f()Lcom/zhihu/android/api/model/Relationship;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->y:Lcom/zhihu/android/api/model/Relationship;

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setTranslationY(F)V

    .line 816
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->s:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(FF)V

    .line 818
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->r:Z

    return v0
.end method

.method public onAnswerEvent(Lcom/zhihu/android/app/d/b;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    .line 676
    :goto_0
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->a()Lcom/zhihu/android/api/model/Answer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->a()Lcom/zhihu/android/api/model/Answer;

    move-result-object v2

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Answer;->id:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 683
    :cond_0
    :goto_1
    return-void

    .line 674
    :cond_1
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->g:J

    goto :goto_0

    .line 680
    :cond_2
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->a()Lcom/zhihu/android/api/model/Answer;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    .line 681
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->c(Z)V

    .line 682
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->b(Lcom/zhihu/android/api/model/Answer;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->d(Z)V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->e(Z)V

    .line 175
    const-class v0, Lcom/zhihu/android/api/b/aa;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/aa;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->a:Lcom/zhihu/android/api/b/aa;

    .line 176
    const-class v0, Lcom/zhihu/android/api/b/d;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/d;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->b:Lcom/zhihu/android/api/b/d;

    .line 178
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->j()V

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->c:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->c:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->d:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->d:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 286
    :cond_1
    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->u:Lcom/zhihu/android/app/ui/fragment/a/b$a;

    .line 287
    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->v:Lcom/zhihu/android/app/webkit/ZHRichTextView$a;

    .line 288
    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->w:Lcom/github/ksoichiro/android/observablescrollview/a;

    .line 290
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->onDestroy()V

    .line 291
    return-void
.end method

.method public onHeaderCardLayoutEvent(Lcom/zhihu/android/app/ui/fragment/a/e$a;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/a/e$a;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 646
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/a/e$a;->a()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 647
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/a/e$a;->a()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    .line 648
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->setTranslationY(F)V

    .line 649
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->q:I

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 650
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->x:Lcom/zhihu/android/a/w;

    iget-object v0, v0, Lcom/zhihu/android/a/w;->d:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->requestLayout()V

    .line 653
    :cond_2
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->l()V

    .line 654
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->u()V

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onHiddenChanged(Z)V

    .line 297
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->C()V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->D()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->onPause()V

    .line 271
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->D()V

    .line 273
    return-void
.end method

.method public onPrimaryClipChanged()V
    .locals 3

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 728
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 729
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 734
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-object v2, v2, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/zhihu/android/app/util/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 745
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_2

    .line 747
    const-string v1, ""

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 748
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 749
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->E()V

    goto :goto_0

    .line 751
    :cond_2
    const-string v0, "\u957f\u5ea6\u4e0d\u591f60\uff0c\u5ffd\u7565"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_3
    const-string v0, "\u590d\u5236\u7684\u4e0d\u662f\u8fd9\u4e2a\u56de\u7b54\u7684\u5185\u5bb9"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/o;->onResume()V

    .line 257
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->n:I

    if-lez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->u()V

    .line 261
    :cond_0
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 262
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->C()V

    .line 265
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 240
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->k()V

    .line 241
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->m()V

    .line 242
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->l()V

    .line 244
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/b;->c(Z)V

    .line 245
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/b;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/fragment/a/e;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/b;->f:Lcom/zhihu/android/api/model/Answer;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Question;)V

    .line 248
    :cond_0
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
