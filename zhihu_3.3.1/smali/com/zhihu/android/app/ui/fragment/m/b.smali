.class public Lcom/zhihu/android/app/ui/fragment/m/b;
.super Lcom/zhihu/android/app/ui/fragment/m;
.source "QuestionOldEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/zhihu/android/app/e/a;
.implements Lcom/zhihu/android/app/util/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/m/b$a;,
        Lcom/zhihu/android/app/ui/fragment/m/b$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lio/realm/k;

.field private C:Lcom/zhihu/android/app/draft/a/a;

.field private D:Z

.field private E:Landroid/text/TextWatcher;

.field private F:Landroid/text/TextWatcher;

.field private G:Landroid/app/AlertDialog;

.field private c:Lcom/zhihu/android/api/b/aa;

.field private d:Lcom/zhihu/android/api/b/ad;

.field private e:Lcom/zhihu/android/bumblebee/http/e;

.field private f:Lcom/zhihu/android/bumblebee/http/e;

.field private g:Lcom/zhihu/android/a/ap;

.field private h:Landroid/app/Dialog;

.field private i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

.field private m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

.field private n:Landroid/widget/SimpleAdapter;

.field private o:Landroid/widget/SimpleAdapter;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Lcom/zhihu/android/base/widget/ZHScrollView;

.field private s:I

.field private t:Lcom/zhihu/android/api/model/Question;

.field private u:I

.field private v:I

.field private w:Landroid/view/MenuItem;

.field private x:Landroid/view/MenuItem;

.field private y:Z

.field private z:Lcom/zhihu/android/app/util/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->p:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->q:Ljava/util/List;

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    .line 633
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/m/b$9;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$9;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->E:Landroid/text/TextWatcher;

    .line 675
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/m/b$10;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$10;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->F:Landroid/text/TextWatcher;

    return-void
.end method

.method public static B()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/m/b;

    const/4 v2, 0x0

    const-string v3, "question_editor"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method

.method private C()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->i:Lcom/zhihu/android/base/widget/ZHScrollView;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->r:Lcom/zhihu/android/base/widget/ZHScrollView;

    .line 350
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->r:Lcom/zhihu/android/base/widget/ZHScrollView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 351
    return-void
.end method

.method private D()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41a0

    const/4 v3, 0x2

    .line 354
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->k:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    .line 355
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->H()V

    .line 356
    invoke-direct {p0, v5}, Lcom/zhihu/android/app/ui/fragment/m/b;->b(Z)V

    .line 358
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 359
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->k:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-static {v0}, Lme/grantland/widget/a;->a(Landroid/widget/TextView;)Lme/grantland/widget/a;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v3, v4}, Lme/grantland/widget/a;->c(IF)V

    .line 361
    invoke-virtual {v0, v3, v4}, Lme/grantland/widget/a;->b(IF)Lme/grantland/widget/a;

    .line 362
    const/high16 v1, 0x4160

    invoke-virtual {v0, v3, v1}, Lme/grantland/widget/a;->a(IF)Lme/grantland/widget/a;

    .line 363
    invoke-virtual {v0, v5}, Lme/grantland/widget/a;->a(I)Lme/grantland/widget/a;

    .line 365
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 366
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->E:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/m/b$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$1;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/m/b$6;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$6;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->n:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    .line 404
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->I()V

    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Z)V

    .line 407
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 408
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->F:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 410
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/m/b$7;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$7;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 426
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Ljava/lang/String;)V

    .line 436
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->a:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/m/b$8;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$8;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 447
    return-void

    .line 431
    :cond_0
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->detail:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private G()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/a;->h_()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->y:Z

    .line 456
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->b:Lcom/zhihu/android/app/ui/fragment/m$b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/m$b;->notifyDataSetChanged()V

    goto :goto_0

    .line 457
    :cond_2
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->j:Lcom/zhihu/android/base/widget/ZHImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private H()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    if-nez v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const/4 v0, 0x0

    .line 469
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    if-eqz v1, :cond_3

    .line 470
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 474
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setSelection(I)V

    goto :goto_0

    .line 471
    :cond_3
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    if-eqz v1, :cond_2

    .line 472
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method private I()V
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 481
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    if-nez v0, :cond_1

    .line 512
    :cond_0
    return-void

    .line 485
    :cond_1
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/a;->d()Lio/realm/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/a;->d()Lio/realm/o;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/o;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/draft/a/d;

    .line 490
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhihu/android/app/ui/fragment/m/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/widget/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhihu/android/app/draft/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 492
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :cond_2
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->topics:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Question;->topics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    .line 505
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, v0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v3, v0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/zhihu/android/api/model/Topic;->id:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/zhihu/android/app/ui/fragment/m/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/widget/f;

    move-result-object v3

    iget-object v0, v0, Lcom/zhihu/android/api/model/Topic;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 507
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private J()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 593
    return-void
.end method

.method private K()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 597
    return-void
.end method

.method private L()Z
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->l:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 755
    const/4 v0, 0x1

    .line 758
    :goto_0
    return v0

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->l:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 758
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const v6, 0x7f090106

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 763
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    :goto_0
    return v0

    .line 769
    :cond_0
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 770
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x33

    if-le v3, v4, :cond_2

    .line 771
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v3, v3, Lcom/zhihu/android/a/ap;->l:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 772
    goto :goto_0

    .line 774
    :cond_2
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v1, v1, Lcom/zhihu/android/a/ap;->l:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    invoke-virtual {v1, v5}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 777
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_4

    .line 778
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v3, v3, Lcom/zhihu/android/a/ap;->l:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x33

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 779
    goto :goto_0

    .line 781
    :cond_4
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v1, v1, Lcom/zhihu/android/a/ap;->l:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    invoke-virtual {v1, v5}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private N()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 789
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->R()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 791
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v3, v3, Lcom/zhihu/android/a/ap;->o:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const v4, 0x7f090109

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/zhihu/android/app/ui/fragment/m/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 794
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private O()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 799
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/zhihu/android/app/ui/widget/f;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/app/ui/widget/f;

    .line 801
    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->o:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 803
    const/4 v0, 0x1

    .line 806
    :goto_0
    return v0

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->o:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 806
    goto :goto_0
.end method

.method private P()Z
    .locals 3

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->Q()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->o:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 813
    const/4 v0, 0x1

    .line 818
    :goto_0
    return v0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->o:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 818
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Q()I
    .locals 4

    .prologue
    .line 822
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 823
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/zhihu/android/app/ui/widget/f;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/app/ui/widget/f;

    .line 825
    array-length v0, v0

    return v0
.end method

.method private R()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 830
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 831
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Lcom/zhihu/android/app/ui/widget/f;

    invoke-interface {v4, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/app/ui/widget/f;

    .line 833
    array-length v1, v0

    if-gtz v1, :cond_0

    .line 834
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getSelectionStart()I

    move-result v3

    .line 840
    aget-object v1, v0, v2

    invoke-interface {v4, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-gt v3, v1, :cond_1

    .line 841
    aget-object v0, v0, v2

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v4, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 842
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-interface {v4, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-lt v3, v1, :cond_2

    .line 843
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 849
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_4

    .line 850
    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-lt v5, v3, :cond_3

    .line 851
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    invoke-interface {v4, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 852
    aget-object v0, v0, v1

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    move v0, v3

    .line 857
    :goto_2
    invoke-interface {v4, v0, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private S()V
    .locals 1

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->e()V

    goto :goto_0
.end method

.method private T()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->a:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/m/b$11;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$11;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Lcom/zhihu/android/app/webkit/ZHRichTextEditor$c;)V

    .line 957
    return-void
.end method

.method private U()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1006
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-object v0

    .line 1006
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private V()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1011
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 1014
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/zhihu/android/app/ui/widget/f;

    invoke-interface {v0, v1, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/app/ui/widget/f;

    .line 1016
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1017
    invoke-virtual {v4}, Lcom/zhihu/android/app/ui/widget/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1020
    :cond_0
    const-string v0, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private W()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1024
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v0

    .line 1028
    :cond_1
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->M()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->N()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1035
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->O()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->P()Z

    move-result v0

    goto :goto_0
.end method

.method private X()V
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->y:Z

    .line 1193
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->b:Lcom/zhihu/android/app/ui/fragment/m$b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/m$b;->notifyDataSetChanged()V

    .line 1194
    return-void

    .line 1192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Y()V
    .locals 2

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->z:Lcom/zhihu/android/app/util/r;

    invoke-virtual {v0}, Lcom/zhihu/android/app/util/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->f:Lcom/zhihu/android/base/widget/ZHImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHImageView;->setVisibility(I)V

    .line 1212
    :goto_0
    return-void

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->f:Lcom/zhihu/android/base/widget/ZHImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/m/b;)Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    return-object v0
.end method

.method public static a(Lcom/zhihu/android/api/model/Question;)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter

    .prologue
    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    const-string v1, "extra_question"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/m/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "question_editor_"

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

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/m/b;Lcom/zhihu/android/bumblebee/http/e;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->f:Lcom/zhihu/android/bumblebee/http/e;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/zhihu/android/api/model/SearchResult;)V
    .locals 5
    .parameter

    .prologue
    .line 719
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 721
    iget-object v0, p1, Lcom/zhihu/android/api/model/SearchResult;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/ZHObject;

    .line 722
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 723
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v0, v4}, Lcom/zhihu/android/api/model/ZHObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string v3, "answer_count"

    const-string v4, "answer_count"

    invoke-virtual {v0, v4}, Lcom/zhihu/android/api/model/ZHObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string v3, "object"

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ZHObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 730
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->b(Z)V

    .line 731
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->showDropDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/m/b;Lcom/zhihu/android/api/model/SearchResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Lcom/zhihu/android/api/model/SearchResult;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/m/b;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/m/b;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/m/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->b(Z)V

    return-void
.end method

.method private a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1137
    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getCode()I

    move-result v0

    .line 1138
    sparse-switch v0, :sswitch_data_0

    .line 1147
    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ap;->e()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    invoke-virtual {v2}, Lcom/zhihu/android/a/ap;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const v3, 0x7f09031c

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/m/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/m/b$5;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$5;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/ao;->a(Landroid/view/View;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar$b;)V

    .line 1160
    :goto_0
    return-void

    .line 1140
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    invoke-virtual {v1}, Lcom/zhihu/android/a/ap;->e()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/zhihu/android/app/util/y;->a(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)V

    goto :goto_0

    .line 1143
    :sswitch_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://www.zhihu.com/antispam/unblock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1158
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1138
    nop

    :sswitch_data_0
    .sparse-switch
        0xfbf -> :sswitch_0
        0x2bf20 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/util/Map;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0x21

    const/4 v4, 0x0

    .line 546
    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 555
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v5, Lcom/zhihu/android/app/ui/widget/f;

    invoke-interface {v2, v4, v3, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/zhihu/android/app/ui/widget/f;

    .line 558
    array-length v5, v2

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v2, v3

    .line 559
    invoke-virtual {v6}, Lcom/zhihu/android/app/ui/widget/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 565
    :cond_2
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iget-object v5, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->F:Landroid/text/TextWatcher;

    invoke-virtual {v3, v5}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 566
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setText(Ljava/lang/CharSequence;)V

    .line 568
    array-length v5, v2

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v6, v2, v3

    .line 569
    invoke-virtual {v6}, Lcom/zhihu/android/app/ui/widget/f;->a()Ljava/lang/String;

    move-result-object v7

    .line 570
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v8, v6, v4, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 572
    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v6, v8}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->append(Ljava/lang/CharSequence;)V

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 576
    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 577
    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/m/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/widget/f;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v1, v4, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 578
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->append(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->F:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->w:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->x:Landroid/view/MenuItem;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/widget/f;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 584
    new-instance v0, Lcom/zhihu/android/app/ui/widget/f;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    iget v2, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->u:I

    iget v3, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->v:I

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/f;-><init>(Landroid/content/Context;II)V

    .line 585
    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/widget/f;->a(Ljava/lang/CharSequence;)V

    .line 586
    invoke-virtual {v0, p2}, Lcom/zhihu/android/app/ui/widget/f;->a(Ljava/lang/String;)V

    .line 588
    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/m/b;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->p:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/zhihu/android/api/model/SearchResult;)V
    .locals 5
    .parameter

    .prologue
    .line 735
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 737
    iget-object v0, p1, Lcom/zhihu/android/api/model/SearchResult;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/ZHObject;

    .line 738
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 739
    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/zhihu/android/api/model/ZHObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v3, "id"

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lcom/zhihu/android/api/model/ZHObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 745
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Z)V

    .line 746
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->showDropDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/m/b;Lcom/zhihu/android/api/model/SearchResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->b(Lcom/zhihu/android/api/model/SearchResult;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/m/b;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/m/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Z)V

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 960
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 963
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->J()V

    .line 964
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->c:Lcom/zhihu/android/api/b/aa;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/m/b$12;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$12;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    invoke-interface {v0, p1, v1}, Lcom/zhihu/android/api/b/aa;->a(Ljava/util/Map;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    .line 979
    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 7
    .parameter

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->isDetached()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 518
    :cond_1
    if-eqz p1, :cond_2

    .line 519
    :try_start_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 521
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->n:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->n:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 526
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->p:Ljava/util/List;

    const v3, 0x7f040091

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "answer_count"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->n:Landroid/widget/SimpleAdapter;

    .line 527
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->n:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 528
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->n:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 526
    :array_0
    .array-data 0x4
        0x8at 0x0t 0x10t 0x7ft
        0xcct 0x1t 0x10t 0x7ft
    .end array-data
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/m/b;)I
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->Q()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/m/b;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->e(Ljava/util/Map;)V

    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 985
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->J()V

    .line 986
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->c:Lcom/zhihu/android/api/b/aa;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v1, Lcom/zhihu/android/api/model/Question;->id:J

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/m/b$13;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/m/b$13;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;)V

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/zhihu/android/api/b/aa;->a(JLjava/util/Map;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    .line 1001
    return-void
.end method

.method private declared-synchronized c(Z)V
    .locals 8
    .parameter

    .prologue
    .line 532
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 535
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->o:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->o:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 540
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->q:Ljava/util/List;

    const v3, 0x7f040092

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x7f10014d

    aput v7, v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->o:Landroid/widget/SimpleAdapter;

    .line 541
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->o:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 542
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->o:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/m/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->A:Z

    return p1
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/m/b;)Lcom/zhihu/android/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    return-object v0
.end method

.method private d(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1047
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1048
    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1049
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1051
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1052
    const/4 v2, 0x0

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/m/b$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/zhihu/android/app/ui/fragment/m/b$2;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;Ljava/util/Map;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1076
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->G:Landroid/app/AlertDialog;

    .line 1077
    return-void
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/m/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->D:Z

    return p1
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/m/b;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->q:Ljava/util/List;

    return-object v0
.end method

.method private e(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1081
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1082
    const v0, 0x7f0900fe

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1083
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1085
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040035

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1086
    const v0, 0x7f1000df

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHEditText;

    .line 1087
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1089
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1090
    const v2, 0x104000a

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/m/b$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b$3;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;Lcom/zhihu/android/base/widget/ZHEditText;Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1108
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1110
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1111
    if-eqz v1, :cond_0

    .line 1112
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1113
    new-instance v2, Lcom/zhihu/android/app/ui/fragment/m/b$4;

    invoke-direct {v2, p0, v1}, Lcom/zhihu/android/app/ui/fragment/m/b$4;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1132
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/m/b;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->Y()V

    return-void
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/m/b;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->f:Lcom/zhihu/android/bumblebee/http/e;

    return-object v0
.end method

.method static synthetic h(Lcom/zhihu/android/app/ui/fragment/m/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->M()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/zhihu/android/app/ui/fragment/m/b;)Lcom/zhihu/android/api/b/ad;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->d:Lcom/zhihu/android/api/b/ad;

    return-object v0
.end method

.method static synthetic j(Lcom/zhihu/android/app/ui/fragment/m/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->P()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/zhihu/android/app/ui/fragment/m/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/zhihu/android/app/ui/fragment/m/b;)Lio/realm/k;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->B:Lio/realm/k;

    return-object v0
.end method

.method static synthetic m(Lcom/zhihu/android/app/ui/fragment/m/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->y:Z

    return v0
.end method

.method static synthetic n(Lcom/zhihu/android/app/ui/fragment/m/b;)Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    return-object v0
.end method

.method static synthetic o(Lcom/zhihu/android/app/ui/fragment/m/b;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->K()V

    return-void
.end method

.method static synthetic p(Lcom/zhihu/android/app/ui/fragment/m/b;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->G:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic q(Lcom/zhihu/android/app/ui/fragment/m/b;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->X()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    const v0, 0x7f040068

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/ap;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    .line 210
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ap;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/zhihu/android/app/ui/fragment/m$b;
    .locals 2

    .prologue
    .line 1188
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/m/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/fragment/m/b$a;-><init>(Lcom/zhihu/android/app/ui/fragment/m/b;Lcom/zhihu/android/app/ui/fragment/m/b$1;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->Y()V

    .line 1199
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/m;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(F)V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->A()V

    .line 220
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 888
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 889
    const-string v1, "title"

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->U()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string v1, "detail"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string v1, "is_anonymous"

    iget-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->y:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string v1, "topic_ids"

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->V()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 895
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->b(Ljava/util/Map;)V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    if-eqz v1, :cond_0

    .line 897
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->d(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/m;->c()V

    .line 309
    const-string v0, "EditQuestion"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method protected d()Lcom/zhihu/android/app/webkit/ZHRichTextEditor;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->e:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    return-object v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Z)V

    .line 289
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Z)V

    .line 294
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->J()V

    .line 299
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->K()V

    .line 304
    return-void
.end method

.method public k_()Z
    .locals 1

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->u()Z

    move-result v0

    return v0
.end method

.method public onAgentEvent(Lcom/zhihu/android/app/ui/activity/AgentActivity$a;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 1166
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->a()I

    move-result v0

    .line 1167
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->b()I

    move-result v1

    .line 1168
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->c()Landroid/content/Intent;

    move-result-object v2

    .line 1170
    invoke-virtual {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(IILandroid/content/Intent;)V

    .line 1171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->h:Lcom/zhihu/android/base/widget/ZHImageView;

    if-ne v0, p1, :cond_1

    .line 1176
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Landroid/view/View;)V

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->j:Lcom/zhihu/android/base/widget/ZHImageView;

    if-ne v0, p1, :cond_2

    .line 1178
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m/b;->d(Landroid/view/View;)V

    goto :goto_0

    .line 1179
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->d:Lcom/zhihu/android/base/widget/ZHImageView;

    if-ne v0, p1, :cond_3

    .line 1180
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->l()V

    goto :goto_0

    .line 1181
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->f:Lcom/zhihu/android/base/widget/ZHImageView;

    if-ne v0, p1, :cond_0

    .line 1182
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->a:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    invoke-virtual {v1}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 192
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/m/b;->d(Z)V

    .line 194
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/m/b;->e(Z)V

    .line 196
    const-class v0, Lcom/zhihu/android/api/b/aa;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/aa;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->c:Lcom/zhihu/android/api/b/aa;

    .line 197
    const-class v0, Lcom/zhihu/android/api/b/ad;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ad;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->d:Lcom/zhihu/android/api/b/ad;

    .line 199
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_question"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    .line 201
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->t:Lcom/zhihu/android/api/model/Question;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    .line 205
    :goto_1
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 203
    :cond_1
    iput v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 316
    const v0, 0x7f11001b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 318
    const v0, 0x7f10026f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->w:Landroid/view/MenuItem;

    .line 319
    const v0, 0x7f100270

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->x:Landroid/view/MenuItem;

    .line 321
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->w:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->x:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->w:Landroid/view/MenuItem;

    const v1, 0x7f040019

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 326
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->r:Lcom/zhihu/android/base/widget/ZHScrollView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 259
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->E:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 260
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->F:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 261
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->z:Lcom/zhihu/android/app/util/r;

    invoke-virtual {v0}, Lcom/zhihu/android/app/util/r;->a()V

    .line 262
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 263
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->w()V

    .line 266
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->e:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->f:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->f:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->D:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->T()V

    .line 278
    :cond_2
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/m;->onDestroyView()V

    .line 279
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 604
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    .line 605
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->f:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->f:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->i:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->dismissDropDown()V

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 611
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->f:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->f:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->m:Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/NoReplaceEditText;->dismissDropDown()V

    .line 615
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->R()Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 617
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 618
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 619
    const-string v5, "name"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 620
    invoke-direct {p0, v1}, Lcom/zhihu/android/app/ui/fragment/m/b;->c(Z)V

    .line 621
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(Ljava/util/Map;)V

    move v0, v1

    .line 627
    :goto_1
    if-nez v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->o:Lcom/zhihu/android/base/widget/ZHTextInputLayout;

    const v2, 0x7f090109

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {p0, v2, v1}, Lcom/zhihu/android/app/ui/fragment/m/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 332
    :pswitch_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->S()V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x7f100270
        :pswitch_0
    .end packed-switch
.end method

.method public onScrollChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 865
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 866
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v1, v1, Lcom/zhihu/android/a/ap;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getLocationOnScreen([I)V

    .line 868
    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v1, v1, Lcom/zhihu/android/a/ap;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->w()Lcom/zhihu/android/app/ui/widget/SystemBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 869
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 870
    const/high16 v0, 0x4080

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(F)V

    .line 875
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->m:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 873
    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/m/b;->a(F)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/m;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->v()V

    .line 232
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f003d

    invoke-static {v0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->u:I

    .line 233
    const-string v0, "#FFEFF6FA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->v:I

    .line 235
    new-instance v0, Lcom/zhihu/android/app/util/r;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/util/r;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->z:Lcom/zhihu/android/app/util/r;

    .line 236
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->z:Lcom/zhihu/android/app/util/r;

    invoke-virtual {v0, p1, p0}, Lcom/zhihu/android/app/util/r;->a(Landroid/view/View;Lcom/zhihu/android/app/util/r$a;)V

    .line 237
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zhihu/android/app/draft/RealmProvider;->a(Landroid/content/Context;I)Lio/realm/k;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->B:Lio/realm/k;

    .line 239
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->B:Lio/realm/k;

    const-class v1, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {v0, v1}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/s;->c()Lio/realm/q;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/draft/a/a;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->C:Lcom/zhihu/android/app/draft/a/a;

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->C()V

    .line 243
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->D()V

    .line 244
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->E()V

    .line 245
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->F()V

    .line 246
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->G()V

    .line 247
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/dialog/e;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->h:Landroid/app/Dialog;

    .line 249
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->h:Lcom/zhihu/android/base/widget/ZHImageView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->j:Lcom/zhihu/android/base/widget/ZHImageView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->d:Lcom/zhihu/android/base/widget/ZHImageView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/m/b;->g:Lcom/zhihu/android/a/ap;

    iget-object v0, v0, Lcom/zhihu/android/a/ap;->f:Lcom/zhihu/android/base/widget/ZHImageView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public q_()V
    .locals 0

    .prologue
    .line 1203
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m/b;->Y()V

    .line 1204
    return-void
.end method

.method protected v()I
    .locals 1

    .prologue
    .line 224
    const v0, 0x7f040104

    return v0
.end method
