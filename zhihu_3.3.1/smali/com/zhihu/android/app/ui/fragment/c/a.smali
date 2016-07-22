.class public Lcom/zhihu/android/app/ui/fragment/c/a;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/c/a$a;,
        Lcom/zhihu/android/app/ui/fragment/c/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/MessageList;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private A:Landroid/text/TextWatcher;

.field private m:Lcom/zhihu/android/api/b/i;

.field private n:Lcom/zhihu/android/bumblebee/http/e;

.field private o:Lcom/zhihu/android/bumblebee/http/e;

.field private p:Lcom/zhihu/android/app/util/v;

.field private q:Lcom/zhihu/android/api/model/People;

.field private r:Lcom/zhihu/android/api/model/People;

.field private s:Lcom/zhihu/android/api/model/Conversation;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/EditText;

.field private v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Lio/realm/k;

.field private z:Lcom/zhihu/android/app/draft/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->w:Z

    .line 329
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/c/a$10;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$10;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->A:Landroid/text/TextWatcher;

    return-void
.end method

.method private B()V
    .locals 5

    .prologue
    .line 288
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v4, v4, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->A:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 292
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/a$8;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$8;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 303
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/a$9;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$9;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 321
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/a$11;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$11;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 376
    return-void
.end method

.method private D()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f80

    .line 379
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 381
    return-void
.end method

.method private E()V
    .locals 4

    .prologue
    const v1, 0x3f99999a

    .line 384
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/a$12;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$12;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 430
    return-void
.end method

.method private F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v0

    .line 511
    instance-of v1, v0, Lcom/zhihu/android/api/model/Message;

    if-eqz v1, :cond_0

    .line 512
    check-cast v0, Lcom/zhihu/android/api/model/Message;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Message;->id:Ljava/lang/String;

    .line 515
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private G()V
    .locals 3

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->t:Landroid/view/View;

    const v1, 0x7f0901fd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f0901fe

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/c/a$2;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$2;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 673
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->a(I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    goto :goto_0
.end method

.method private H()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 735
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    :goto_0
    return-void

    .line 740
    :cond_0
    new-instance v1, Lcom/zhihu/android/api/model/Message;

    invoke-direct {v1}, Lcom/zhihu/android/api/model/Message;-><init>()V

    .line 741
    invoke-static {}, Lcom/zhihu/android/app/util/w;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zhihu/android/api/model/Message;->id:Ljava/lang/String;

    .line 742
    iput-object v0, v1, Lcom/zhihu/android/api/model/Message;->content:Ljava/lang/String;

    .line 743
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->r:Lcom/zhihu/android/api/model/People;

    iput-object v0, v1, Lcom/zhihu/android/api/model/Message;->sender:Lcom/zhihu/android/api/model/People;

    .line 744
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/zhihu/android/api/model/Message;->createdTime:J

    .line 746
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/api/model/Message;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 748
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->b(I)V

    .line 750
    invoke-direct {p0, v1}, Lcom/zhihu/android/app/ui/fragment/c/a;->b(Lcom/zhihu/android/api/model/Message;)V

    goto :goto_0
.end method

.method private I()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 973
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0901ee

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v3, v2}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/content/Context;IIIZ)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 975
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/a$6;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$6;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 1011
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 1012
    return-void
.end method

.method private J()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1015
    new-instance v2, Lcom/zhihu/android/api/model/Conversation;

    invoke-direct {v2}, Lcom/zhihu/android/api/model/Conversation;-><init>()V

    .line 1017
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iput-object v0, v2, Lcom/zhihu/android/api/model/Conversation;->participant:Lcom/zhihu/android/api/model/People;

    .line 1019
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zhihu/android/api/model/Message;

    if-eqz v3, :cond_1

    .line 1023
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Message;

    .line 1025
    iget-object v3, v0, Lcom/zhihu/android/api/model/Message;->content:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zhihu/android/api/model/Conversation;->snippet:Ljava/lang/String;

    .line 1027
    iget-wide v4, v0, Lcom/zhihu/android/api/model/Message;->createdTime:J

    iput-wide v4, v2, Lcom/zhihu/android/api/model/Conversation;->updatedTime:J

    .line 1030
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1031
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v1

    .line 1034
    :cond_0
    iget-object v0, v0, Lcom/zhihu/android/api/model/Message;->sender:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/api/model/People;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/zhihu/android/api/model/Conversation;->isReplied:Z

    .line 1042
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 1043
    return-void

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iput-object v0, v2, Lcom/zhihu/android/api/model/Conversation;->participant:Lcom/zhihu/android/api/model/People;

    .line 1039
    iput-object v1, v2, Lcom/zhihu/android/api/model/Conversation;->snippet:Ljava/lang/String;

    goto :goto_0
.end method

.method private K()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->y:Lio/realm/k;

    const-class v1, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {v0, v1}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/s;

    move-result-object v0

    const-string v1, "participantId"

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v2, v2, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/s;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/s;->d()Lio/realm/q;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/draft/a/c;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->z:Lcom/zhihu/android/app/draft/a/c;

    .line 1047
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->z:Lcom/zhihu/android/app/draft/a/c;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/a$7;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$7;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/draft/a/c;->a(Lio/realm/m;)V

    .line 1057
    return-void
.end method

.method private L()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1060
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1063
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->y:Lio/realm/k;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/zhihu/android/app/draft/a;->a(Lio/realm/k;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1068
    new-instance v1, Lcom/zhihu/android/app/draft/a/c;

    invoke-direct {v1}, Lcom/zhihu/android/app/draft/a/c;-><init>()V

    .line 1069
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v2, v2, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/draft/a/c;->a(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/draft/a/c;->b(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->y:Lio/realm/k;

    invoke-static {v0, v1, v3}, Lcom/zhihu/android/app/draft/a;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/c;Z)V

    goto :goto_0
.end method

.method private M()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1080
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v0

    .line 1081
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    .line 1083
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->a()I

    move-result v3

    const v4, 0xe001

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 1095
    :goto_0
    return v0

    .line 1088
    :cond_1
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->a()I

    move-result v3

    const v4, 0xe002

    if-ne v3, v4, :cond_0

    .line 1089
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Message;

    .line 1090
    iget-wide v4, v0, Lcom/zhihu/android/api/model/Message;->createdTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, v0, Lcom/zhihu/android/api/model/Message;->createdTime:J

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v1

    .line 1091
    goto :goto_0

    .line 1095
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)Lcom/zhihu/android/api/model/Message;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 959
    if-nez p1, :cond_0

    move-object v0, v1

    .line 968
    :goto_0
    return-object v0

    .line 963
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v0

    .line 965
    instance-of v2, v0, Lcom/zhihu/android/api/model/Message;

    if-eqz v2, :cond_1

    .line 966
    check-cast v0, Lcom/zhihu/android/api/model/Message;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 968
    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    return-object v0
.end method

.method public static a(Lcom/zhihu/android/api/model/Conversation;)Lcom/zhihu/android/app/util/bb;
    .locals 5
    .parameter

    .prologue
    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v1, "extra_conversation"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chat-session-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zhihu/android/api/model/Conversation;->participant:Lcom/zhihu/android/api/model/People;

    iget-object v4, v4, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/app/util/bb;
    .locals 5
    .parameter

    .prologue
    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v1, "extra_participant"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chat-session-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/People;Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v1, "extra_participant"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 171
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chat-session-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Lcom/zhihu/android/api/model/Message;Lcom/zhihu/android/api/model/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 791
    iget-object v0, p2, Lcom/zhihu/android/api/model/Message;->id:Ljava/lang/String;

    iput-object v0, p1, Lcom/zhihu/android/api/model/Message;->id:Ljava/lang/String;

    .line 792
    iget-object v0, p2, Lcom/zhihu/android/api/model/Message;->content:Ljava/lang/String;

    iput-object v0, p1, Lcom/zhihu/android/api/model/Message;->content:Ljava/lang/String;

    .line 793
    iget-object v0, p2, Lcom/zhihu/android/api/model/Message;->sender:Lcom/zhihu/android/api/model/People;

    iput-object v0, p1, Lcom/zhihu/android/api/model/Message;->sender:Lcom/zhihu/android/api/model/People;

    .line 794
    iget-object v0, p2, Lcom/zhihu/android/api/model/Message;->receiver:Lcom/zhihu/android/api/model/People;

    iput-object v0, p1, Lcom/zhihu/android/api/model/Message;->receiver:Lcom/zhihu/android/api/model/People;

    .line 795
    iget-wide v0, p2, Lcom/zhihu/android/api/model/Message;->createdTime:J

    iput-wide v0, p1, Lcom/zhihu/android/api/model/Message;->createdTime:J

    .line 797
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Ljava/lang/Object;)I

    move-result v0

    .line 798
    if-ltz v0, :cond_0

    .line 799
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->d(I)V

    .line 801
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/a;Lcom/zhihu/android/api/model/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->c(Lcom/zhihu/android/api/model/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/a;Lcom/zhihu/android/api/model/Message;Lcom/zhihu/android/api/model/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/api/model/Message;Lcom/zhihu/android/api/model/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/a;Lcom/zhihu/android/api/model/Paging;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->b(Lcom/zhihu/android/api/model/Paging;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/a;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v1

    .line 196
    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const v1, 0x7f0901ff

    invoke-static {p0, v1}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->b:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;
    .locals 3
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    .line 949
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)Lcom/zhihu/android/api/model/Message;

    move-result-object v2

    .line 950
    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/zhihu/android/api/model/Message;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/zhihu/android/api/model/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->m:Lcom/zhihu/android/api/b/i;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/zhihu/android/api/model/Message;->content:Ljava/lang/String;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/c/a$3;

    invoke-direct {v3, p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a$3;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;Lcom/zhihu/android/api/model/Message;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/i;->b(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 788
    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->D()V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/c/a;Lcom/zhihu/android/api/model/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->d(Lcom/zhihu/android/api/model/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/c/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->w:Z

    return p1
.end method

.method private c(Lcom/zhihu/android/api/model/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 804
    const-wide/16 v0, -0x2

    iput-wide v0, p1, Lcom/zhihu/android/api/model/Message;->createdTime:J

    .line 806
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Ljava/lang/Object;)I

    move-result v0

    .line 807
    if-ltz v0, :cond_0

    .line 808
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->d(I)V

    .line 810
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->C()V

    return-void
.end method

.method private d(Lcom/zhihu/android/api/model/Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 836
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v2

    .line 838
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/api/model/Message;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v3

    .line 840
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    .line 841
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v1

    .line 843
    instance-of v5, v1, Lcom/zhihu/android/api/model/Message;

    if-eqz v5, :cond_0

    .line 844
    check-cast v1, Lcom/zhihu/android/api/model/Message;

    .line 846
    invoke-virtual {p1, v1}, Lcom/zhihu/android/api/model/Message;->compareTo(Lcom/zhihu/android/api/model/Message;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 849
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 850
    iput-boolean v7, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->w:Z

    .line 852
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v6}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->b(I)V

    .line 869
    :cond_1
    :goto_0
    return-void

    .line 861
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 864
    iput-boolean v7, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->w:Z

    .line 866
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v6}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->b(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->H()V

    return-void
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/c/a;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->G()V

    return-void
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/zhihu/android/app/ui/fragment/c/a;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/base/widget/ZHFrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->g:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/zhihu/android/app/ui/fragment/c/a;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic l(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic m(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/app/util/v;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->p:Lcom/zhihu/android/app/util/v;

    return-object v0
.end method

.method static synthetic n(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/api/model/People;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    return-object v0
.end method

.method static synthetic o(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic p(Lcom/zhihu/android/app/ui/fragment/c/a;)Lcom/zhihu/android/app/draft/a/c;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->z:Lcom/zhihu/android/app/draft/a/c;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->A()V

    .line 279
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 472
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/Message;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;
    .locals 2
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->r:Lcom/zhihu/android/api/model/People;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->r:Lcom/zhihu/android/api/model/People;

    iget-object v1, p1, Lcom/zhihu/android/api/model/Message;->sender:Lcom/zhihu/android/api/model/People;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/api/model/People;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->b(Lcom/zhihu/android/api/model/Message;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    .line 697
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Message;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 653
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->b:Z

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->d:Ljava/lang/String;

    .line 657
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Z)V

    .line 658
    return-void
.end method

.method protected a(Lcom/zhihu/android/api/model/MessageList;)V
    .locals 7
    .parameter

    .prologue
    const v1, 0x7f09034d

    const/4 v2, 0x0

    .line 576
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 580
    :cond_0
    if-nez p1, :cond_3

    .line 582
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->d:Ljava/lang/String;

    .line 593
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 594
    iput-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->b:Z

    .line 596
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->c(Lcom/zhihu/android/api/model/MessageList;)Ljava/util/List;

    move-result-object v6

    .line 598
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 599
    new-instance v0, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;

    const v2, 0x7f01004a

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->j()I

    move-result v3

    const v4, 0x7f09034f

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/c/a$15;

    invoke-direct {v5, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$15;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;-><init>(IIIILandroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, v6}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->b(Ljava/util/List;)V

    goto :goto_0

    .line 584
    :cond_3
    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->paging:Lcom/zhihu/android/api/model/Paging;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->b(Lcom/zhihu/android/api/model/Paging;)V

    .line 586
    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->paging:Lcom/zhihu/android/api/model/Paging;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->paging:Lcom/zhihu/android/api/model/Paging;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->c:Z

    .line 588
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->c:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 586
    goto :goto_3

    .line 608
    :cond_6
    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    return-void
.end method

.method protected bridge synthetic a(Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    check-cast p1, Lcom/zhihu/android/api/model/MessageList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/api/model/MessageList;)V

    return-void
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->c:Z

    if-eqz v0, :cond_0

    .line 522
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->b:Z

    .line 524
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 567
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->m:Lcom/zhihu/android/api/b/i;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/c/a$13;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$13;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->n:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v0

    if-nez v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 547
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->b:Z

    goto :goto_0

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->m:Lcom/zhihu/android/api/b/i;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/api/model/Paging;->getNextAfterId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/c/a$14;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$14;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->n:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method public answerMessageAction(Lcom/zhihu/android/app/ui/fragment/b/d$a;)V
    .locals 7
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 873
    iget-object v0, p1, Lcom/zhihu/android/app/ui/fragment/b/d$a;->c:Landroid/os/Bundle;

    const-string v1, "extra_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Message;

    .line 875
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/zhihu/android/api/model/Message;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v0, v0, Lcom/zhihu/android/api/model/Message;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->b(Ljava/lang/String;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    .line 880
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)Lcom/zhihu/android/api/model/Message;

    move-result-object v1

    .line 882
    if-eqz v1, :cond_0

    .line 886
    iget v2, p1, Lcom/zhihu/android/app/ui/fragment/b/d$a;->a:I

    sparse-switch v2, :sswitch_data_0

    .line 941
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->p:Lcom/zhihu/android/app/util/v;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/zhihu/android/app/ui/fragment/b/d$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/v;->a(Lcom/zhihu/android/api/model/Message;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :sswitch_0
    iget-wide v2, v1, Lcom/zhihu/android/api/model/Message;->createdTime:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 890
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    goto :goto_0

    .line 895
    :cond_2
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    const v3, 0x7f0901f4

    const/4 v4, 0x1

    invoke-static {v2, v6, v3, v6, v4}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/content/Context;IIIZ)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v2

    .line 896
    new-instance v3, Lcom/zhihu/android/app/ui/fragment/c/a$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/zhihu/android/app/ui/fragment/c/a$5;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;Lcom/zhihu/android/api/model/Message;Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    invoke-virtual {v2, v3}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 921
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    goto :goto_0

    .line 925
    :sswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->p:Lcom/zhihu/android/app/util/v;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/util/v;->a(Lcom/zhihu/android/api/model/Message;Landroid/content/Context;)V

    goto :goto_0

    .line 929
    :sswitch_2
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->t:Landroid/view/View;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->t:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->p:Lcom/zhihu/android/app/util/v;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/util/v;->b(Lcom/zhihu/android/api/model/Message;Landroid/content/Context;)V

    goto :goto_0

    .line 935
    :sswitch_3
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/zhihu/android/api/model/Message;->createdTime:J

    .line 936
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->d(I)V

    .line 937
    invoke-direct {p0, v1}, Lcom/zhihu/android/app/ui/fragment/c/a;->b(Lcom/zhihu/android/api/model/Message;)V

    goto/16 :goto_0

    .line 886
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10026c -> :sswitch_2
        0x7f100276 -> :sswitch_0
        0x7f100277 -> :sswitch_1
        0x7f100289 -> :sswitch_3
    .end sparse-switch
.end method

.method public answerNewMessageEvent(Lcom/zhihu/android/app/ui/fragment/c/a$b;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 814
    iget-object v0, p1, Lcom/zhihu/android/app/ui/fragment/c/a$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->m:Lcom/zhihu/android/api/b/i;

    iget-object v1, p1, Lcom/zhihu/android/app/ui/fragment/c/a$b;->c:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/c/a$4;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$4;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/i;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->o:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 477
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/g;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/g;-><init>()V

    return-object v0
.end method

.method protected b(Lcom/zhihu/android/api/model/MessageList;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 627
    :cond_0
    if-nez p1, :cond_2

    .line 628
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->G()V

    .line 639
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 641
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->b:Z

    .line 643
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->c(Lcom/zhihu/android/api/model/MessageList;)Ljava/util/List;

    move-result-object v0

    .line 645
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->b(Ljava/util/List;)V

    .line 647
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4240

    invoke-static {v2, v3}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(II)V

    goto :goto_0

    .line 630
    :cond_2
    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->paging:Lcom/zhihu/android/api/model/Paging;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->b(Lcom/zhihu/android/api/model/Paging;)V

    .line 632
    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->paging:Lcom/zhihu/android/api/model/Paging;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->paging:Lcom/zhihu/android/api/model/Paging;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Paging;->isEnd:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->c:Z

    .line 634
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->c:Z

    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0901fb

    invoke-static {v0, v2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 632
    goto :goto_2
.end method

.method protected bridge synthetic b(Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    check-cast p1, Lcom/zhihu/android/api/model/MessageList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->b(Lcom/zhihu/android/api/model/MessageList;)V

    return-void
.end method

.method protected c(Lcom/zhihu/android/api/model/MessageList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/MessageList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 681
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p1, Lcom/zhihu/android/api/model/MessageList;->data:Ljava/util/List;

    .line 685
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Message;

    .line 686
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/api/model/Message;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 690
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 100
    check-cast p1, Lcom/zhihu/android/api/model/MessageList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/a;->c(Lcom/zhihu/android/api/model/MessageList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->c()V

    .line 450
    const-string v0, "Dialogue"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 434
    const v0, 0x7f040052

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 708
    :goto_0
    return-void

    .line 705
    :pswitch_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->E()V

    goto :goto_0

    .line 703
    :pswitch_data_0
    .packed-switch 0x7f10011e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->d(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/api/b/i;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/i;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->m:Lcom/zhihu/android/api/b/i;

    .line 215
    new-instance v0, Lcom/zhihu/android/app/util/v;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->m:Lcom/zhihu/android/api/b/i;

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/util/v;-><init>(Lcom/zhihu/android/api/b/i;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->p:Lcom/zhihu/android/app/util/v;

    .line 217
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_2

    .line 220
    const-string v0, "extra_participant"

    const-class v2, Lcom/zhihu/android/api/model/People;

    invoke-static {v1, v0, v2}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    .line 222
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "extra_conversation"

    const-class v2, Lcom/zhihu/android/api/model/Conversation;

    invoke-static {v1, v0, v2}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Conversation;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->s:Lcom/zhihu/android/api/model/Conversation;

    .line 225
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->s:Lcom/zhihu/android/api/model/Conversation;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->s:Lcom/zhihu/android/api/model/Conversation;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Conversation;->participant:Lcom/zhihu/android/api/model/People;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->q:Lcom/zhihu/android/api/model/People;

    .line 230
    :cond_0
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->x:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->r:Lcom/zhihu/android/api/model/People;

    .line 239
    :cond_1
    invoke-static {}, Lcom/zhihu/android/app/push/b;->a()Lcom/zhihu/android/app/push/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/push/b;->b(Landroid/content/Context;)V

    .line 240
    return-void

    .line 232
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have a participant for this chat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 483
    const v0, 0x7f110006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 484
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onDestroyView()V

    .line 457
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->L()V

    .line 459
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->o:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->o:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->n:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->n:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 468
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 488
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 490
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->I()V

    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x7f100274
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onPause()V

    .line 441
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->w:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->J()V

    .line 444
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 244
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 245
    const v0, 0x7f10001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHRecyclerView;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    .line 246
    const v0, 0x7f100009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->t:Landroid/view/View;

    .line 247
    const v0, 0x7f10011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->u:Landroid/widget/EditText;

    .line 248
    const v0, 0x7f10011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->v:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    .line 250
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V

    .line 252
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setHasFixedSize(Z)V

    .line 253
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 254
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c/a;->b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 255
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/a$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/a$1;-><init>(Lcom/zhihu/android/app/ui/fragment/c/a;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 267
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->u()V

    .line 269
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->B()V

    .line 271
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/zhihu/android/app/draft/RealmProvider;->a(Landroid/content/Context;I)Lio/realm/k;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/a;->y:Lio/realm/k;

    .line 272
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/a;->K()V

    .line 274
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method protected v()I
    .locals 1

    .prologue
    .line 284
    const v0, 0x7f040104

    return v0
.end method
