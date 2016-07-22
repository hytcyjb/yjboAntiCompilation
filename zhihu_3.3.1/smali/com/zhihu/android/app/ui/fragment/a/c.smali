.class public Lcom/zhihu/android/app/ui/fragment/a/c;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "AnswerListFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/zhihu/android/app/e/a;
.implements Lcom/zhihu/android/app/ui/fragment/c$a;
.implements Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout$a;
.implements Lcom/zhihu/android/app/ui/widget/RevealFollowButton$a;
.implements Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/a/c$a;,
        Lcom/zhihu/android/app/ui/fragment/a/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/AnswerList;",
        ">;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "Lcom/zhihu/android/app/e/a;",
        "Lcom/zhihu/android/app/ui/fragment/c$a;",
        "Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout$a;",
        "Lcom/zhihu/android/app/ui/widget/RevealFollowButton$a;",
        "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b;"
    }
.end annotation


# instance fields
.field private A:Lcom/zhihu/android/a/x;

.field private B:Landroid/animation/ArgbEvaluator;

.field private C:Lcom/zhihu/android/app/ui/widget/SystemBar;

.field private D:I

.field private E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

.field private F:F

.field private G:Lcom/zhihu/android/a/av;

.field private H:Landroid/animation/AnimatorSet;

.field private I:Z

.field private J:Landroid/support/v4/widget/ag;

.field private K:Lcom/zhihu/android/a/ay;

.field private L:Lcom/zhihu/android/app/util/FabScrollHelper;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:Landroid/view/MenuItem;

.field private T:Landroid/view/MenuItem;

.field private U:Z

.field private V:Z

.field private m:Lcom/zhihu/android/api/b/aa;

.field private n:Lcom/zhihu/android/api/b/d;

.field private o:Lcom/zhihu/android/bumblebee/http/e;

.field private p:Lcom/zhihu/android/bumblebee/http/e;

.field private q:Lcom/zhihu/android/bumblebee/http/e;

.field private r:Lcom/zhihu/android/bumblebee/http/e;

.field private s:Lcom/zhihu/android/bumblebee/http/e;

.field private t:Lcom/zhihu/android/bumblebee/http/e;

.field private u:Lcom/zhihu/android/bumblebee/http/e;

.field private v:Lcom/zhihu/android/api/model/Question;

.field private w:J

.field private x:I

.field private y:Lcom/zhihu/android/api/model/Relationship;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Answer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    .line 185
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->z:Ljava/util/List;

    .line 193
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->B:Landroid/animation/ArgbEvaluator;

    .line 207
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->I:Z

    .line 223
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->Q:Z

    .line 225
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->R:Z

    .line 232
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->U:Z

    return-void
.end method

.method static synthetic A(Lcom/zhihu/android/app/ui/fragment/a/c;)Landroid/support/v4/widget/ag;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->J:Landroid/support/v4/widget/ag;

    return-object v0
.end method

.method private C()V
    .locals 3

    .prologue
    .line 280
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4220

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->P:I

    sub-int/2addr v0, v1

    .line 281
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    iget-object v1, v1, Lcom/zhihu/android/a/x;->f:Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;

    int-to-float v0, v0

    const/16 v2, 0x28

    invoke-virtual {v1, v0, v2}, Lcom/zhihu/android/app/ui/widget/FixRefreshLayout;->a(FI)V

    .line 282
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->b(Ljava/lang/CharSequence;)V

    .line 620
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->J()V

    .line 622
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->E()V

    .line 624
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->X()V

    .line 626
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    .line 627
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->E()V

    goto :goto_0
.end method

.method private E()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 634
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->l:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->k:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->removeAllViews()V

    .line 639
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    invoke-virtual {v1}, Lcom/zhihu/android/a/av;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->addView(Landroid/view/View;)V

    .line 640
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 641
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setVisibility(I)V

    .line 642
    invoke-virtual {p0, p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/app/ui/fragment/c$a;)V

    .line 644
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->i:Lcom/zhihu/android/app/ui/widget/RevealFollowButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/RevealFollowButton;->setListener(Lcom/zhihu/android/app/ui/widget/RevealFollowButton$a;)V

    .line 650
    sget-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->d:Z

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->g:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 653
    :cond_0
    return-void
.end method

.method private F()V
    .locals 7

    .prologue
    .line 656
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->topics:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->topics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->q:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->removeAllViews()V

    .line 661
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->topics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    .line 664
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 665
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->P:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4200

    invoke-static {v5, v6}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x106000d

    invoke-static {v3, v4}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 667
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v3, v3, Lcom/zhihu/android/a/av;->q:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-virtual {v3, v2}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->addView(Landroid/view/View;)V

    .line 669
    new-instance v2, Lcom/zhihu/android/app/ui/widget/TopicLabelButton;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhihu/android/app/ui/widget/TopicLabelButton;-><init>(Landroid/content/Context;)V

    .line 670
    invoke-virtual {v2, v0}, Lcom/zhihu/android/app/ui/widget/TopicLabelButton;->setTopic(Lcom/zhihu/android/api/model/Topic;)V

    .line 671
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->q:Lcom/zhihu/android/base/widget/ZHLinearLayout;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->n:Lcom/zhihu/android/base/widget/ZHorizontalScrollView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$12;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$12;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHorizontalScrollView;->a(Lcom/zhihu/android/base/widget/ZHorizontalScrollView$a;)V

    .line 695
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->n:Lcom/zhihu/android/base/widget/ZHorizontalScrollView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$20;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$20;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private G()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 734
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v0, Lcom/zhihu/android/a/av;->o:Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;

    .line 735
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->excerpt:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->detail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->detail:Ljava/lang/String;

    .line 741
    const-string v2, "(<p.*?>)+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    const-string v2, "(</p>)+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    const-string v2, "(<br>)+"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-static {v0}, Lcom/zhihu/android/app/util/ah;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    const-string v2, "<a class=\"video-box\".*a>"

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-virtual {v1, v5}, Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;->setForceCustomTextShow(Z)V

    .line 752
    :cond_0
    invoke-static {v0}, Lcom/zhihu/android/app/util/ah;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    const-string v2, "<img[^>]*>"

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-virtual {v1, v5}, Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;->setForceCustomTextShow(Z)V

    .line 757
    :cond_1
    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;->setRichText(Ljava/lang/String;)V

    .line 760
    :cond_2
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/a/c$21;

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c$21;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;)V

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    return-void
.end method

.method private H()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->j:Lcom/zhihu/android/base/widget/ZHButton;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$22;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$22;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->e:Lcom/zhihu/android/base/widget/ZHButton;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$23;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$23;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    return-void
.end method

.method private J()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 885
    move v0, v1

    .line 887
    :goto_0
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    iget-object v3, v3, Lcom/zhihu/android/a/x;->c:Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;

    invoke-virtual {v3}, Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 888
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    iget-object v3, v3, Lcom/zhihu/android/a/x;->c:Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;

    invoke-virtual {v3, v0}, Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    invoke-virtual {v4}, Lcom/zhihu/android/a/ay;->e()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 894
    :cond_0
    if-nez v1, :cond_1

    .line 895
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    iget-object v0, v0, Lcom/zhihu/android/a/x;->c:Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    invoke-virtual {v1}, Lcom/zhihu/android/a/ay;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;->addView(Landroid/view/View;)V

    .line 898
    :cond_1
    new-instance v0, Lcom/zhihu/android/app/util/FabScrollHelper;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v1, v1, Lcom/zhihu/android/a/ay;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/util/FabScrollHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->L:Lcom/zhihu/android/app/util/FabScrollHelper;

    .line 899
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v0, v0, Lcom/zhihu/android/a/ay;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->setClosedOnTouchOutside(Z)V

    .line 901
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v0, v0, Lcom/zhihu/android/a/ay;->c:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$26;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$26;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v0, v0, Lcom/zhihu/android/a/ay;->d:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$2;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v0, v0, Lcom/zhihu/android/a/ay;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$3;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    return-void

    .line 887
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private K()V
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->l:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->M:I

    .line 1010
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->p:Lcom/zhihu/android/base/widget/ZHTextView;

    .line 1011
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHTextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4180

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    .line 1012
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->h:Lcom/zhihu/android/base/view/ZHView;

    .line 1013
    invoke-virtual {v1}, Lcom/zhihu/android/base/view/ZHView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->k:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    .line 1014
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->P:I

    sub-int/2addr v0, v1

    .line 1015
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4260

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1019
    sget-boolean v1, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    if-nez v1, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/base/util/b;->c(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1022
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4080

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->g:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    invoke-virtual {v1}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->getContentHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->N:I

    .line 1027
    return-void
.end method

.method private L()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1030
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->I:Z

    .line 1031
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->L:Lcom/zhihu/android/app/util/FabScrollHelper;

    invoke-virtual {v0}, Lcom/zhihu/android/app/util/FabScrollHelper;->c()V

    .line 1032
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->o:Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    invoke-virtual {v0}, Lcom/zhihu/android/a/av;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1034
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->Z()V

    .line 1035
    return-void
.end method

.method private M()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1038
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->af()V

    .line 1039
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->f:Lcom/zhihu/android/app/ui/widget/FrameContainerLayout;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/app/ui/widget/FrameContainerLayout;->setVisibility(I)V

    .line 1041
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1042
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->h:Lcom/zhihu/android/base/view/ZHView;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/view/ZHView;->getLocationOnScreen([I)V

    .line 1044
    sget-boolean v1, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->d:Lcom/zhihu/android/app/ui/widget/ArrowButton;

    aget v0, v0, v2

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    sub-int/2addr v0, v2

    .line 1046
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    const/high16 v3, 0x41a0

    invoke-static {v2, v3}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 1045
    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/ArrowButton;->setY(F)V

    .line 1055
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->d:Lcom/zhihu/android/app/ui/widget/ArrowButton;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/app/ui/widget/ArrowButton;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->d:Lcom/zhihu/android/app/ui/widget/ArrowButton;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$4;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$4;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ArrowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    return-void

    .line 1049
    :cond_0
    aget v0, v0, v2

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    sub-int/2addr v0, v1

    .line 1050
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/base/util/b;->c(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1051
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x41d0

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1052
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->d:Lcom/zhihu/android/app/ui/widget/ArrowButton;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/ArrowButton;->setY(F)V

    goto :goto_0
.end method

.method private N()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1066
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1070
    :cond_0
    new-array v0, v8, [I

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->M:I

    aput v1, v0, v6

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->N:I

    aput v1, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1071
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$5;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$5;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1081
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->F:F

    .line 1082
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v4}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1084
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    .line 1085
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1086
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1087
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/c$6;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$6;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1099
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private O()V
    .locals 2

    .prologue
    .line 1104
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->ag()V

    .line 1105
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->L:Lcom/zhihu/android/app/util/FabScrollHelper;

    invoke-virtual {v0}, Lcom/zhihu/android/app/util/FabScrollHelper;->b()V

    .line 1106
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->f:Lcom/zhihu/android/app/ui/widget/FrameContainerLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/FrameContainerLayout;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->d:Lcom/zhihu/android/app/ui/widget/ArrowButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ArrowButton;->setVisibility(I)V

    .line 1108
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1111
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->I:Z

    .line 1112
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->o:Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/CustomEllipseTextView;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    invoke-virtual {v0}, Lcom/zhihu/android/a/av;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1114
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->Z()V

    .line 1115
    return-void
.end method

.method private Q()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1118
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1122
    :cond_0
    new-array v0, v8, [I

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->N:I

    aput v1, v0, v6

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->M:I

    aput v1, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1123
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$7;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$7;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1133
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v4}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget v4, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->F:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1135
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    .line 1136
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1137
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1138
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/c$8;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$8;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1150
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1151
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1152
    return-void
.end method

.method private R()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1155
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0900ac

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v3, v2}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/content/Context;IIIZ)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 1157
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$9;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$9;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 1164
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 1165
    return-void
.end method

.method private S()V
    .locals 5

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->u:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->u:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1172
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1173
    const-string v1, "action"

    const-string v2, "unremove"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1175
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->n:Lcom/zhihu/android/api/b/d;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    iget-object v2, v2, Lcom/zhihu/android/api/model/Relationship;->myAnswer:Lcom/zhihu/android/api/model/MyAnswer;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/MyAnswer;->answerId:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/a/c$10;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$10;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/zhihu/android/api/b/d;->a(JLjava/util/Map;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->u:Lcom/zhihu/android/bumblebee/http/e;

    .line 1188
    return-void
.end method

.method private T()Z
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    .line 1192
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isClosed:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isDelete:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isEvaluate:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isLocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isMuted:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isSuggest:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private U()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1196
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->V()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->W()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900a9

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0900ab

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zhihu/android/app/ui/dialog/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 1198
    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(F)V

    .line 1200
    invoke-static {}, Lcom/zhihu/android/app/util/ar;->a()Lcom/zhihu/android/app/util/ar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/util/ar;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1201
    const v1, 0x7f0f00d0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(I)V

    .line 1206
    :goto_0
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$11;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$11;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 1214
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 1215
    return-void

    .line 1203
    :cond_0
    const v1, 0x7f0f00cf

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(I)V

    goto :goto_0
.end method

.method private V()Ljava/lang/String;
    .locals 2

    .prologue
    const v1, 0x7f09032b

    .line 1218
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isClosed:Z

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1231
    :goto_0
    return-object v0

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isDelete:Z

    if-eqz v0, :cond_1

    .line 1221
    const v0, 0x7f09032c

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isEvaluate:Z

    if-eqz v0, :cond_2

    .line 1223
    const v0, 0x7f09032d

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1224
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isLocked:Z

    if-eqz v0, :cond_3

    .line 1225
    const v0, 0x7f09032e

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1226
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isMuted:Z

    if-eqz v0, :cond_4

    .line 1227
    const v0, 0x7f09032f

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1228
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->status:Lcom/zhihu/android/api/model/QuestionStatus;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/QuestionStatus;->isSuggest:Z

    if-eqz v0, :cond_5

    .line 1229
    const v0, 0x7f090330

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1231
    :cond_5
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private W()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/SuggestEdit;->status:Z

    if-eqz v0, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09032a

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Question;->suggestEdit:Lcom/zhihu/android/api/model/SuggestEdit;

    iget-object v1, v1, Lcom/zhihu/android/api/model/SuggestEdit;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1240
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private X()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1389
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/a/av;->a(Lcom/zhihu/android/api/model/Question;)V

    .line 1390
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->g:Lcom/zhihu/android/app/webkit/ZHRichTextView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v1, v1, Lcom/zhihu/android/api/model/Question;->detail:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextView;->a(Ljava/lang/String;I)V

    .line 1391
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->F()V

    .line 1392
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->G()V

    .line 1393
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->H()V

    .line 1394
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->I()V

    .line 1395
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(I)V

    .line 1397
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setVisibility(I)V

    .line 1398
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->l:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setVisibility(I)V

    .line 1399
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->k:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setVisibility(I)V

    .line 1401
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    invoke-virtual {v0}, Lcom/zhihu/android/a/av;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$17;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$17;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1409
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    invoke-virtual {v0}, Lcom/zhihu/android/a/x;->e()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/ao;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 1412
    :cond_0
    return-void
.end method

.method private Y()I
    .locals 4

    .prologue
    const/high16 v3, 0x4240

    const/high16 v2, 0x4180

    .line 1417
    sget-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->p:Lcom/zhihu/android/base/widget/ZHTextView;

    .line 1419
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHTextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    .line 1420
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->h:Lcom/zhihu/android/base/view/ZHView;

    .line 1421
    invoke-virtual {v1}, Lcom/zhihu/android/base/view/ZHView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->k:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    .line 1422
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->P:I

    sub-int/2addr v0, v1

    .line 1424
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1436
    :goto_0
    return v0

    .line 1427
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/base/util/b;->c(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->p:Lcom/zhihu/android/base/widget/ZHTextView;

    .line 1428
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHTextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    .line 1429
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->h:Lcom/zhihu/android/base/view/ZHView;

    .line 1430
    invoke-virtual {v1}, Lcom/zhihu/android/base/view/ZHView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v1, v1, Lcom/zhihu/android/a/av;->k:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    .line 1431
    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->P:I

    sub-int/2addr v0, v1

    .line 1433
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private Z()V
    .locals 3

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 1519
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->n()I

    move-result v0

    .line 1520
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->I:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 1521
    return-void

    .line 1520
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter

    .prologue
    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    const-string v1, "extra_question_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "question-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/Question;)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter

    .prologue
    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    const-string v1, "extra_question"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "question-"

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

.method public static a(Lcom/zhihu/android/api/model/Question;Z)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    const-string v1, "extra_question"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 245
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "question-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/zhihu/android/api/model/Question;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, p1}, Lcom/zhihu/android/app/util/bb;->c(Z)V

    .line 247
    return-object v1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/c;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(IZ)V

    .line 537
    return-void
.end method

.method private a(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0f0040

    const v4, 0x7f01011c

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    if-eqz v1, :cond_8

    .line 546
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    iget-boolean v2, v1, Lcom/zhihu/android/api/model/Relationship;->isAnonymous:Z

    .line 547
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->S:Landroid/view/MenuItem;

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 548
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->T:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 551
    if-nez p2, :cond_3

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->U:Z

    if-eq v0, v2, :cond_0

    .line 554
    :cond_3
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->U:Z

    .line 557
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    move v1, v0

    .line 558
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    .line 560
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 575
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SystemBar;->setBackgroundColor(I)V

    goto :goto_0

    .line 557
    :cond_4
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/zhihu/android/base/util/h;->a(Landroid/content/Context;I)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 558
    :cond_5
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f01002a

    invoke-static {v0, v3}, Lcom/zhihu/android/base/util/h;->a(Landroid/content/Context;I)I

    goto :goto_2

    .line 562
    :pswitch_0
    if-eqz v2, :cond_6

    .line 563
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/zhihu/android/base/util/h;->a(Landroid/content/Context;I)I

    move-result v0

    .line 564
    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c;->b(II)V

    goto :goto_0

    .line 566
    :cond_6
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SystemBar;->setBackgroundColor(I)V

    goto :goto_0

    .line 570
    :pswitch_1
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    .line 571
    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c;->b(II)V

    goto :goto_0

    .line 570
    :cond_7
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/zhihu/android/base/util/h;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_3

    .line 583
    :cond_8
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->S:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 584
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->T:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized a(Lcom/zhihu/android/api/model/Question;Lcom/zhihu/android/api/model/Relationship;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 1386
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1365
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    .line 1366
    iput-object p2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    .line 1370
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    if-eqz v0, :cond_0

    .line 1376
    :cond_2
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_3

    .line 1377
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->ad()V

    .line 1378
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->D()V

    .line 1385
    :goto_1
    const v0, 0x7f0901a3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v4, v3, Lcom/zhihu/android/api/model/Question;->answerCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->b(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1380
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->X()V

    .line 1382
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->J()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/c;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/c;Lcom/zhihu/android/api/model/Question;Lcom/zhihu/android/api/model/Relationship;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/api/model/Question;Lcom/zhihu/android/api/model/Relationship;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/c;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/c;Lcom/zhihu/android/app/ui/widget/ArrowButton$Direction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/app/ui/widget/ArrowButton$Direction;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/c;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/c;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->g(Z)V

    return-void
.end method

.method private a(Lcom/zhihu/android/app/ui/widget/ArrowButton$Direction;)V
    .locals 1
    .parameter

    .prologue
    .line 730
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->c:Lcom/zhihu/android/app/ui/widget/ArrowButton;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/widget/ArrowButton;->setDirection(Lcom/zhihu/android/app/ui/widget/ArrowButton$Direction;)V

    .line 731
    return-void
.end method

.method private aa()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1524
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v2

    .line 1525
    instance-of v3, v2, Lcom/zhihu/android/base/widget/ZHSpace;

    if-eqz v3, :cond_1

    .line 1526
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1527
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1529
    aget v2, v3, v0

    iget v3, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->O:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    iget v4, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->P:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    .line 1532
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1529
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1532
    goto :goto_0
.end method

.method private ab()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1536
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1537
    instance-of v2, v1, Lcom/zhihu/android/base/widget/ZHSpace;

    if-eqz v2, :cond_0

    .line 1538
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1539
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1540
    const/4 v1, 0x1

    aget v0, v0, v1

    .line 1543
    :cond_0
    return v0
.end method

.method private ac()V
    .locals 2

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1595
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    .line 1597
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->C()V

    .line 1599
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->ad()V

    .line 1602
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 1607
    :goto_0
    return-void

    .line 1606
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->D()V

    goto :goto_0
.end method

.method private ad()V
    .locals 3

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    iget-object v1, v0, Lcom/zhihu/android/a/x;->d:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    .line 1611
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1612
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1613
    return-void
.end method

.method private ae()V
    .locals 3

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->D:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->P:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4080

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->O:I

    .line 1621
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->O:I

    invoke-static {v1}, Lcom/zhihu/android/app/ui/widget/c/a;->a(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;I)V

    .line 1624
    :cond_0
    return-void
.end method

.method private af()V
    .locals 4

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->J:Landroid/support/v4/widget/ag;

    if-nez v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->k:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    const/high16 v1, 0x3f00

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/a/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zhihu/android/app/ui/fragment/a/c$a;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;Lcom/zhihu/android/app/ui/fragment/a/c$1;)V

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/ag;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ag$a;)Landroid/support/v4/widget/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->J:Landroid/support/v4/widget/ag;

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->k:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$19;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$19;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1695
    return-void
.end method

.method private ag()V
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->k:Lcom/zhihu/android/base/widget/ZHRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1699
    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/c;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1547
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getTranslationY()F

    move-result v1

    .line 1549
    iget-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->Q:Z

    if-eqz v2, :cond_1

    .line 1550
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    int-to-float v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setTranslationY(F)V

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    iget-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->R:Z

    if-eqz v2, :cond_0

    .line 1555
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->ab()I

    move-result v2

    if-nez v2, :cond_2

    .line 1556
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 1558
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    int-to-float v3, p1

    sub-float v3, v1, v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_3

    int-to-float v0, p1

    sub-float v0, v1, v0

    :cond_3
    invoke-virtual {v2, v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->setTranslationY(F)V

    goto :goto_0
.end method

.method private b(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 589
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    const-string v1, "backgroundColor"

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v4

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->B:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 592
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 593
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 595
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->y()I

    move-result v2

    if-lez v2, :cond_0

    .line 596
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 603
    :goto_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 604
    return-void

    .line 598
    :cond_0
    invoke-virtual {p0, p2, p2}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(II)V

    .line 599
    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/a/c;->d(I)V

    .line 600
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/c;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Ljava/lang/CharSequence;)V

    .line 615
    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->V:Z

    return p1
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/a/c;)Lcom/zhihu/android/a/av;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    return-object v0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/a/c;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->Y()I

    move-result v0

    return v0
.end method

.method private d(Lcom/zhihu/android/api/model/AnswerList;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f090206

    .line 1455
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/AnswerList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/AnswerList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v0

    .line 1457
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1458
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_0

    .line 1459
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Ljava/lang/String;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Ljava/lang/String;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->K()V

    return-void
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->N()V

    return-void
.end method

.method private f(Z)V
    .locals 4
    .parameter

    .prologue
    .line 521
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 522
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090340

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_1
    const v2, 0x7f0900c5

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/c;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/zhihu/android/app/ui/dialog/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 525
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/c$1;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c$1;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;Z)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 532
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 533
    return-void

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f09033f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/a/c;)Lcom/zhihu/android/api/model/Relationship;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    return-object v0
.end method

.method private g(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    if-nez v0, :cond_0

    .line 1502
    :goto_0
    return-void

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->t:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->t:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 1477
    :goto_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->m:Lcom/zhihu/android/api/b/aa;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/c$18;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$18;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-interface {v2, v0, v1, p1, v3}, Lcom/zhihu/android/api/b/aa;->a(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->t:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    .line 1476
    :cond_2
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    goto :goto_1
.end method

.method static synthetic h(Lcom/zhihu/android/app/ui/fragment/a/c;)Lcom/zhihu/android/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    return-object v0
.end method

.method static synthetic i(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->R()V

    return-void
.end method

.method static synthetic j(Lcom/zhihu/android/app/ui/fragment/a/c;)Lcom/zhihu/android/api/model/Question;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    return-object v0
.end method

.method static synthetic k(Lcom/zhihu/android/app/ui/fragment/a/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->U:Z

    return v0
.end method

.method static synthetic l(Lcom/zhihu/android/app/ui/fragment/a/c;)J
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    return-wide v0
.end method

.method static synthetic m(Lcom/zhihu/android/app/ui/fragment/a/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->T()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->U()V

    return-void
.end method

.method static synthetic o(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->Q()V

    return-void
.end method

.method static synthetic p(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->L()V

    return-void
.end method

.method static synthetic q(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->M()V

    return-void
.end method

.method static synthetic r(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->O()V

    return-void
.end method

.method static synthetic s(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->P()V

    return-void
.end method

.method static synthetic t(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->S()V

    return-void
.end method

.method static synthetic u(Lcom/zhihu/android/app/ui/fragment/a/c;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic v(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->x()V

    return-void
.end method

.method static synthetic w(Lcom/zhihu/android/app/ui/fragment/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->x()V

    return-void
.end method

.method static synthetic x(Lcom/zhihu/android/app/ui/fragment/a/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->V:Z

    return v0
.end method

.method static synthetic y(Lcom/zhihu/android/app/ui/fragment/a/c;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic z(Lcom/zhihu/android/app/ui/fragment/a/c;)Lcom/zhihu/android/a/x;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 880
    :goto_0
    return v0

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->r:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->r:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v1}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 864
    :cond_1
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 865
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    iput-boolean v0, v2, Lcom/zhihu/android/api/model/Relationship;->isFollowing:Z

    .line 866
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->m:Lcom/zhihu/android/api/b/aa;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Question;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/a/c$25;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$25;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/zhihu/android/api/b/aa;->a(JLjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->r:Lcom/zhihu/android/bumblebee/http/e;

    .line 880
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 305
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 286
    const v0, 0x7f04004d

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/x;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    .line 287
    const v0, 0x7f040071

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/av;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    .line 288
    const v0, 0x7f04007c

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/ay;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    .line 290
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    iget-object v0, v0, Lcom/zhihu/android/a/x;->c:Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;->setInterceptListener(Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout$a;)V

    .line 291
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->A:Lcom/zhihu/android/a/x;

    invoke-virtual {v0}, Lcom/zhihu/android/a/x;->e()Landroid/view/View;

    move-result-object v0

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
    .line 450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/AnswerList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 453
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

    .line 454
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Answer;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    :cond_0
    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .parameter

    .prologue
    .line 1577
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->c:Z

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->L:Lcom/zhihu/android/app/util/FabScrollHelper;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/util/FabScrollHelper;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 1580
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1568
    if-nez p2, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->L:Lcom/zhihu/android/app/util/FabScrollHelper;

    invoke-virtual {v0}, Lcom/zhihu/android/app/util/FabScrollHelper;->a()V

    .line 1571
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->Z()V

    .line 1510
    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->Q:Z

    .line 1511
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->aa()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->R:Z

    .line 1513
    invoke-direct {p0, p3}, Lcom/zhihu/android/app/ui/fragment/a/c;->b(I)V

    .line 1514
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->L:Lcom/zhihu/android/app/util/FabScrollHelper;

    invoke-virtual {v0, p3}, Lcom/zhihu/android/app/util/FabScrollHelper;->a(I)V

    .line 1515
    return-void

    .line 1510
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 7
    .parameter

    .prologue
    .line 1327
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_2

    .line 1328
    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    .line 1335
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->s:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->s:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1339
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->n:Lcom/zhihu/android/api/b/d;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    new-instance v6, Lcom/zhihu/android/app/ui/fragment/a/c$16;

    invoke-direct {v6, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$16;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-interface/range {v1 .. v6}, Lcom/zhihu/android/api/b/d;->a(JJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->s:Lcom/zhihu/android/bumblebee/http/e;

    .line 1352
    :cond_1
    return-void

    .line 1329
    :cond_2
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v0, Lcom/zhihu/android/api/model/Question;->id:J

    goto :goto_0
.end method

.method protected synthetic a(Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    check-cast p1, Lcom/zhihu/android/api/model/AnswerList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->c(Lcom/zhihu/android/api/model/AnswerList;)V

    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 298
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    .line 299
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->z()V

    .line 300
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 301
    return-void
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_3

    .line 1250
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 1255
    :goto_0
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->o:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v2, :cond_0

    .line 1256
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->o:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v2}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1259
    :cond_0
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->p:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v2, :cond_1

    .line 1260
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->p:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v2}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1263
    :cond_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->s:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v2, :cond_2

    .line 1264
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->s:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v2}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 1267
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->m:Lcom/zhihu/android/api/b/aa;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/c$13;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$13;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/zhihu/android/api/b/aa;->a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v2

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->o:Lcom/zhihu/android/bumblebee/http/e;

    .line 1298
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->m:Lcom/zhihu/android/api/b/aa;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/c$14;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$14;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/zhihu/android/api/b/aa;->d(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v2

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->p:Lcom/zhihu/android/bumblebee/http/e;

    .line 1310
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->n:Lcom/zhihu/android/api/b/d;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/c$15;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$15;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/zhihu/android/api/b/d;->b(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->s:Lcom/zhihu/android/bumblebee/http/e;

    .line 1321
    return-void

    .line 1252
    :cond_3
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1636
    iget-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->I:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 1637
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1638
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v3, v2}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getLocationOnScreen([I)V

    .line 1640
    aget v3, v2, v1

    .line 1641
    aget v4, v2, v0

    .line 1642
    aget v5, v2, v1

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v6}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 1643
    aget v2, v2, v0

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v6}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    .line 1645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    .line 1646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    .line 1648
    if-lt v6, v3, :cond_0

    if-gt v6, v5, :cond_0

    if-lt v7, v4, :cond_0

    if-le v7, v2, :cond_1

    .line 1649
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->Q()V

    .line 1654
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 310
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/d;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/widget/adapter/d;-><init>(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b;)V

    return-object v0
.end method

.method protected b(Lcom/zhihu/android/api/model/AnswerList;)V
    .locals 0
    .parameter

    .prologue
    .line 1356
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    .line 1357
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->d(Lcom/zhihu/android/api/model/AnswerList;)V

    .line 1358
    return-void
.end method

.method protected bridge synthetic b(Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    check-cast p1, Lcom/zhihu/android/api/model/AnswerList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->b(Lcom/zhihu/android/api/model/AnswerList;)V

    return-void
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 137
    check-cast p1, Lcom/zhihu/android/api/model/AnswerList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/api/model/AnswerList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->c()V

    .line 445
    const-string v0, "Question"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1628
    if-ne p1, v1, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v0, v0, Lcom/zhihu/android/a/ay;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v0, v0, Lcom/zhihu/android/a/ay;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->a(Z)V

    .line 1633
    :cond_0
    return-void
.end method

.method protected c(Lcom/zhihu/android/api/model/AnswerList;)V
    .locals 2
    .parameter

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1452
    :goto_0
    return-void

    .line 1445
    :cond_0
    if-eqz p1, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1447
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->z:Ljava/util/List;

    iget-object v1, p1, Lcom/zhihu/android/api/model/AnswerList;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1450
    :cond_1
    invoke-static {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/app/ui/fragment/a/c;Lcom/zhihu/android/api/model/ZHObjectList;)V

    .line 1451
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/c;->d(Lcom/zhihu/android/api/model/AnswerList;)V

    goto :goto_0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public k_()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1000
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v1, v1, Lcom/zhihu/android/a/ay;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->K:Lcom/zhihu/android/a/ay;

    iget-object v1, v1, Lcom/zhihu/android/a/ay;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->c(Z)V

    .line 1005
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->O:I

    if-lez v0, :cond_0

    .line 465
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->O:I

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnswerEvent(Lcom/zhihu/android/app/d/b;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 1727
    :goto_0
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->a()Lcom/zhihu/android/api/model/Answer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->a()Lcom/zhihu/android/api/model/Answer;

    move-result-object v2

    iget-object v2, v2, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->a()Lcom/zhihu/android/api/model/Answer;

    move-result-object v2

    iget-object v2, v2, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Question;->id:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 1735
    :cond_0
    :goto_1
    return-void

    .line 1725
    :cond_1
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    goto :goto_0

    .line 1731
    :cond_2
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1733
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 315
    instance-of v0, p2, Lcom/zhihu/android/app/ui/widget/holder/AnswerItemViewHolder;

    if-eqz v0, :cond_1

    .line 316
    check-cast p2, Lcom/zhihu/android/app/ui/widget/holder/AnswerItemViewHolder;

    invoke-virtual {p2}, Lcom/zhihu/android/app/ui/widget/holder/AnswerItemViewHolder;->t_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    .line 318
    if-eqz v0, :cond_1

    .line 319
    const/4 v1, 0x0

    .line 321
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/model/Answer;

    .line 322
    iget-wide v4, v1, Lcom/zhihu/android/api/model/Answer;->id:J

    iget-wide v6, v0, Lcom/zhihu/android/api/model/Answer;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 323
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    move v2, v1

    .line 325
    goto :goto_0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->z:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Question;Ljava/util/List;Lcom/zhihu/android/api/model/Paging;I)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 335
    :cond_1
    :goto_2
    return-void

    .line 331
    :cond_2
    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(Lcom/zhihu/android/api/model/Answer;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onCommentEvent(Lcom/zhihu/android/app/d/g;)V
    .locals 8
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 809
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v0, v0, Lcom/zhihu/android/a/av;->e:Lcom/zhihu/android/base/widget/ZHButton;

    if-nez v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    const-string v2, "question"

    invoke-virtual {p1, v0, v1, v2}, Lcom/zhihu/android/app/d/g;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->commentCount:J

    .line 815
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 816
    add-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 821
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iput-wide v0, v2, Lcom/zhihu/android/api/model/Question;->commentCount:J

    .line 822
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    iget-object v2, v2, Lcom/zhihu/android/a/av;->e:Lcom/zhihu/android/base/widget/ZHButton;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhihu/android/base/widget/ZHButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 817
    :cond_3
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/g;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 818
    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 258
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->d(Z)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->e(Z)V

    .line 262
    const-class v0, Lcom/zhihu/android/api/b/aa;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/aa;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->m:Lcom/zhihu/android/api/b/aa;

    .line 263
    const-class v0, Lcom/zhihu/android/api/b/d;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/d;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->n:Lcom/zhihu/android/api/b/d;

    .line 265
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_question"

    const-class v3, Lcom/zhihu/android/api/model/Question;

    invoke-static {v0, v2, v3}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    .line 267
    const-string v0, "extra_question_id"

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    .line 269
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    .line 271
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 273
    const/16 v0, 0x101

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments was wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 476
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 478
    const v0, 0x7f10026a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->S:Landroid/view/MenuItem;

    .line 479
    const v0, 0x7f10026b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->T:Landroid/view/MenuItem;

    .line 480
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(I)V

    .line 481
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->o:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->o:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->p:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->p:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->q:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->q:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->r:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->r:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 428
    :cond_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->s:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_6

    .line 429
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->s:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 432
    :cond_6
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->t:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_7

    .line 436
    :cond_7
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 438
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onDestroyView()V

    .line 439
    return-void
.end method

.method public onDraftEvent(Lcom/zhihu/android/app/d/i;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 1740
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/i;->a()Lcom/zhihu/android/api/model/Draft;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/i;->a()Lcom/zhihu/android/api/model/Draft;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/api/model/Draft;->draftQuestion:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-nez v0, :cond_1

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/i;->a()Lcom/zhihu/android/api/model/Draft;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/api/model/Draft;->draftQuestion:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Question;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/i;->a()Lcom/zhihu/android/api/model/Draft;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/Question;->draft:Lcom/zhihu/android/api/model/Draft;

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
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
    .line 1586
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->C:Lcom/zhihu/android/app/ui/widget/SystemBar;

    if-ne p1, v0, :cond_1

    .line 1587
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->ac()V

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->I:Z

    if-nez v0, :cond_0

    .line 1589
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->ae()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 493
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-nez v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v4

    .line 497
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 499
    :sswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/b/g;->a(Landroid/os/Parcelable;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 502
    :sswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Lcom/zhihu/android/api/model/Question;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 505
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/zhihu/android/app/ui/fragment/a/c;->f(Z)V

    goto :goto_0

    .line 508
    :sswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->f(Z)V

    goto :goto_0

    .line 511
    :sswitch_4
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    invoke-virtual {v1}, Lcom/zhihu/android/a/av;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->G:Lcom/zhihu/android/a/av;

    invoke-virtual {v2}, Lcom/zhihu/android/a/av;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "question"

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 497
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100264 -> :sswitch_0
        0x7f10026a -> :sswitch_2
        0x7f10026b -> :sswitch_3
        0x7f10026c -> :sswitch_4
        0x7f100271 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onPause()V

    .line 397
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/b;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/b;

    invoke-interface {v0}, Lcom/zhihu/android/app/e/b;->a()V

    .line 400
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 485
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 486
    const v0, 0x7f100264

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 487
    const v0, 0x7f100271

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 488
    const v0, 0x7f10026c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 489
    return-void

    :cond_0
    move v0, v2

    .line 486
    goto :goto_0

    :cond_1
    move v0, v2

    .line 487
    goto :goto_1

    :cond_2
    move v1, v2

    .line 488
    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 386
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onResume()V

    .line 388
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/e/b;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/e/b;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    invoke-static {v2, v3}, Lcom/zhihu/android/app/util/x;->b(J)Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhihu/android/app/e/b;->a(Landroid/nfc/NdefRecord;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onSetAnonymousEvent(Lcom/zhihu/android/app/ui/fragment/a/d$b;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Lcom/zhihu/android/api/model/Relationship;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Relationship;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 801
    :goto_0
    iget-wide v2, p1, Lcom/zhihu/android/app/ui/fragment/a/d$b;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    iget-boolean v1, p1, Lcom/zhihu/android/app/ui/fragment/a/d$b;->b:Z

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/Relationship;->isAnonymous:Z

    .line 803
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(I)V

    .line 805
    :cond_1
    return-void

    .line 799
    :cond_2
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    goto :goto_0
.end method

.method public onThemeChangedEvent(Lcom/zhihu/android/app/d/m;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1719
    invoke-direct {p0, v0, v0}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(IZ)V

    .line 1720
    return-void
.end method

.method public onUpdateQuestionEvent(Lcom/zhihu/android/app/ui/fragment/m/b$b;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 1707
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/m/b$b;->a()Lcom/zhihu/android/api/model/Question;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/m/b$b;->a()Lcom/zhihu/android/api/model/Question;

    move-result-object v2

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Question;->id:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 1715
    :cond_0
    :goto_1
    return-void

    .line 1705
    :cond_1
    iget-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->w:J

    goto :goto_0

    .line 1711
    :cond_2
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/fragment/m/b$b;->a()Lcom/zhihu/android/api/model/Question;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    .line 1712
    const/16 v0, 0x100

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->x:I

    .line 1713
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(Lcom/zhihu/android/api/model/Question;Lcom/zhihu/android/api/model/Relationship;)V

    .line 1714
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->x()V

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 343
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->g:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    instance-of v0, v0, Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->g:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    check-cast v0, Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout;->setInterceptListener(Lcom/zhihu/android/app/ui/widget/FrameInterceptLayout$a;)V

    .line 347
    :cond_0
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/a/c$b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/c$b;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;Landroid/content/Context;)V

    .line 348
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 349
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 351
    const v0, 0x7f10000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHFrameLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->E:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    .line 352
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->P:I

    .line 354
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method public u()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 828
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/c;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zhihu/android/app/util/t;->a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    const/4 v0, 0x0

    .line 851
    :goto_0
    return v0

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->q:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v1, :cond_1

    .line 833
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->q:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v1}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->y:Lcom/zhihu/android/api/model/Relationship;

    iput-boolean v0, v1, Lcom/zhihu/android/api/model/Relationship;->isFollowing:Z

    .line 838
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->m:Lcom/zhihu/android/api/b/aa;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->v:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Question;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/a/c$24;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/a/c$24;-><init>(Lcom/zhihu/android/app/ui/fragment/a/c;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/zhihu/android/api/b/aa;->b(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/c;->q:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method
