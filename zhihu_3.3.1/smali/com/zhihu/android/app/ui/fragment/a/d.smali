.class public Lcom/zhihu/android/app/ui/fragment/a/d;
.super Lcom/zhihu/android/app/ui/fragment/m;
.source "AnswerOldEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhihu/android/app/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/a/d$a;,
        Lcom/zhihu/android/app/ui/fragment/a/d$b;
    }
.end annotation


# instance fields
.field private c:Lcom/zhihu/android/api/b/aa;

.field private d:Lcom/zhihu/android/api/b/d;

.field private e:Lcom/zhihu/android/api/b/o;

.field private f:Lcom/zhihu/android/bumblebee/http/e;

.field private g:Lcom/zhihu/android/bumblebee/http/e;

.field private h:Lcom/zhihu/android/bumblebee/http/e;

.field private i:Lcom/zhihu/android/bumblebee/http/e;

.field private m:Lcom/zhihu/android/api/model/Question;

.field private n:Lcom/zhihu/android/api/model/Draft;

.field private o:Lcom/zhihu/android/api/model/Answer;

.field private p:Lcom/zhihu/android/a/y;

.field private q:Landroid/app/Dialog;

.field private r:Landroid/view/MenuItem;

.field private s:Landroid/view/MenuItem;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lrx/i;

.field private y:Lcom/zhihu/android/app/util/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/m;-><init>()V

    return-void
.end method

.method private D()V
    .locals 4

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->I()J

    move-result-wide v0

    .line 287
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->c:Lcom/zhihu/android/api/b/aa;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/d$8;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$8;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/zhihu/android/api/b/aa;->c(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->i:Lcom/zhihu/android/bumblebee/http/e;

    .line 300
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->x:Lrx/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->x:Lrx/i;

    invoke-interface {v0}, Lrx/i;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->x:Lrx/i;

    invoke-interface {v0}, Lrx/i;->unsubscribe()V

    .line 306
    :cond_0
    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lrx/b;->interval(JLjava/util/concurrent/TimeUnit;)Lrx/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$9;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$9;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    .line 307
    invoke-virtual {v0, v1}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->x:Lrx/i;

    .line 324
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->a:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$10;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$10;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Lcom/zhihu/android/app/webkit/ZHRichTextEditor$c;)V

    .line 351
    return-void
.end method

.method private G()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 447
    return-void
.end method

.method private H()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 451
    return-void
.end method

.method private I()J
    .locals 3

    .prologue
    .line 563
    const-wide/16 v0, 0x0

    .line 565
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->m:Lcom/zhihu/android/api/model/Question;

    if-eqz v2, :cond_1

    .line 566
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->m:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    .line 573
    :cond_0
    :goto_0
    return-wide v0

    .line 567
    :cond_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    iget-object v2, v2, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    if-eqz v2, :cond_2

    .line 568
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    goto :goto_0

    .line 569
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    iget-object v2, v2, Lcom/zhihu/android/api/model/Draft;->draftQuestion:Lcom/zhihu/android/api/model/Question;

    if-eqz v2, :cond_0

    .line 570
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Draft;->draftQuestion:Lcom/zhihu/android/api/model/Question;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Question;->id:J

    goto :goto_0
.end method

.method private J()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0900ad

    const v2, 0x7f090074

    invoke-static {v0, v3, v1, v2, v3}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/content/Context;IIIZ)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$2;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 624
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 625
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/d;)Lcom/zhihu/android/a/y;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    return-object v0
.end method

.method public static a(Lcom/zhihu/android/api/model/Answer;)Lcom/zhihu/android/app/util/bb;
    .locals 4
    .parameter

    .prologue
    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v1, "extra_answer"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 171
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/d;

    const-string v3, "answer_edit"

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/Draft;Z)Lcom/zhihu/android/app/util/bb;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    const-string v1, "extra_draft"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    const-string v1, "extra_anonymous"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/d;

    const-string v3, "answer-editor-draft"

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/Question;Z)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string v1, "extra_question"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    const-string v1, "extra_anonymous"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answer-editor-question-"

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

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/d;Lcom/zhihu/android/bumblebee/http/e;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->g:Lcom/zhihu/android/bumblebee/http/e;

    return-object p1
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter

    .prologue
    .line 729
    new-instance v0, Landroid/support/v7/app/e$a;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/e$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090393

    .line 730
    invoke-virtual {v0, v1}, Landroid/support/v7/app/e$a;->a(I)Landroid/support/v7/app/e$a;

    move-result-object v0

    const v1, 0x7f0901f8

    .line 731
    invoke-virtual {v0, v1}, Landroid/support/v7/app/e$a;->b(I)Landroid/support/v7/app/e$a;

    move-result-object v0

    const v1, 0x104000a

    .line 732
    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/e$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    .line 733
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/e$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Landroid/support/v7/app/e$a;->c()Landroid/support/v7/app/e;

    .line 735
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/d;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V

    return-void
.end method

.method private a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 578
    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getCode()I

    move-result v0

    .line 579
    sparse-switch v0, :sswitch_data_0

    .line 588
    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    invoke-virtual {v1}, Lcom/zhihu/android/a/y;->e()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->a(I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 592
    const v1, 0x7f09031c

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/a/d$14;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$14;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 599
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 581
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    invoke-virtual {v1}, Lcom/zhihu/android/a/y;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v2, v2, Lcom/zhihu/android/a/y;->e:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    invoke-virtual {v2}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->a(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)V

    goto :goto_0

    .line 584
    :sswitch_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://www.zhihu.com/antispam/unblock"

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 579
    :sswitch_data_0
    .sparse-switch
        0xfbf -> :sswitch_0
        0x2bf20 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->r:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 442
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->s:Landroid/view/MenuItem;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 443
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZLcom/zhihu/android/app/ui/dialog/c$a;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 719
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 720
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090340

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 721
    :goto_1
    const v2, 0x7f0900c5

    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/zhihu/android/app/ui/dialog/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/c;

    move-result-object v0

    .line 723
    invoke-virtual {v0, p2}, Lcom/zhihu/android/app/ui/dialog/c;->b(Lcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 724
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/dialog/c;->a(Landroid/support/v4/app/p;)V

    .line 725
    return-void

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f09033f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/a/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/d;)Lcom/zhihu/android/app/ui/fragment/m$b;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->b:Lcom/zhihu/android/app/ui/fragment/m$b;

    return-object v0
.end method

.method private b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->I()J

    move-result-wide v0

    .line 630
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 631
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    invoke-virtual {v0}, Lcom/zhihu/android/a/y;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090103

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v2, v2, Lcom/zhihu/android/a/y;->e:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    invoke-virtual {v2}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/ao;->a(Landroid/view/View;ILandroid/os/IBinder;)V

    .line 673
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->h:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v2, :cond_1

    .line 637
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v2}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 640
    :cond_1
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->i:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v2, :cond_2

    .line 641
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->i:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v2}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 644
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->c:Lcom/zhihu/android/api/b/aa;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/a/d$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/d$3;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;J)V

    invoke-interface {v2, v0, v1, p1, v3}, Lcom/zhihu/android/api/b/aa;->a(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->h:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/a/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->F()V

    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/a/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->w:Z

    return p1
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/a/d;)J
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/a/d;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/d;->b(Z)V

    return-void
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/a/d;)Lcom/zhihu/android/api/b/o;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->e:Lcom/zhihu/android/api/b/o;

    return-object v0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->H()V

    return-void
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/a/d;)Lcom/zhihu/android/app/ui/fragment/m$b;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->b:Lcom/zhihu/android/app/ui/fragment/m$b;

    return-object v0
.end method

.method static synthetic h(Lcom/zhihu/android/app/ui/fragment/a/d;)Lcom/zhihu/android/app/ui/fragment/m$b;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->b:Lcom/zhihu/android/app/ui/fragment/m$b;

    return-object v0
.end method

.method static synthetic i(Lcom/zhihu/android/app/ui/fragment/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->u:Z

    return v0
.end method

.method static synthetic j(Lcom/zhihu/android/app/ui/fragment/a/d;)Lcom/zhihu/android/app/ui/fragment/m$b;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->b:Lcom/zhihu/android/app/ui/fragment/m$b;

    return-object v0
.end method

.method static synthetic k(Lcom/zhihu/android/app/ui/fragment/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->w:Z

    return v0
.end method


# virtual methods
.method public B()V
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->w:Z

    if-nez v0, :cond_0

    .line 691
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/a/d$4;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$4;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 703
    :goto_0
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->w:Z

    .line 701
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->b:Lcom/zhihu/android/app/ui/fragment/m$b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/m$b;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public C()V
    .locals 2

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$5;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$5;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-direct {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(ZLcom/zhihu/android/app/ui/dialog/c$a;)V

    .line 715
    return-void

    .line 706
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    const v0, 0x7f04004e

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/y;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    .line 206
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    invoke-virtual {v0}, Lcom/zhihu/android/a/y;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/zhihu/android/app/ui/fragment/m$b;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/d$a;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;Lcom/zhihu/android/app/ui/fragment/a/d$1;)V

    return-object v0
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/m;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 213
    const v0, 0x7f0903c0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->f(I)V

    .line 214
    const v0, 0x7f0200bb

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$1;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(ILandroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->t()V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->v:Z

    if-nez v0, :cond_3

    move v0, v4

    .line 471
    :goto_1
    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->t:Z

    if-eqz v1, :cond_6

    .line 472
    if-eqz v0, :cond_5

    .line 473
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->G()V

    .line 475
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->f:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->f:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 479
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 480
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v1, "is_copyable"

    iget-boolean v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->w:Z

    if-nez v2, :cond_4

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->d:Lcom/zhihu/android/api/b/d;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Answer;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/a/d$11;

    invoke-direct {v4, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$11;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/zhihu/android/api/b/d;->a(JLjava/util/Map;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->f:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    :cond_3
    move v0, v5

    .line 470
    goto :goto_1

    :cond_4
    move v4, v5

    .line 481
    goto :goto_2

    .line 502
    :cond_5
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->J()V

    goto :goto_0

    .line 505
    :cond_6
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->I()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->G()V

    .line 511
    if-eqz v0, :cond_9

    .line 513
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->f:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_7

    .line 514
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->f:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 517
    :cond_7
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->d:Lcom/zhihu/android/api/b/d;

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->I()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->w:Z

    if-nez v0, :cond_8

    move v5, v4

    :cond_8
    new-instance v6, Lcom/zhihu/android/app/ui/fragment/a/d$12;

    invoke-direct {v6, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$12;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/zhihu/android/api/b/d;->a(JLjava/lang/String;ZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->f:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    .line 534
    :cond_9
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->g:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_a

    .line 535
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->g:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 538
    :cond_a
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->e:Lcom/zhihu/android/api/b/o;

    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->I()J

    move-result-wide v2

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$13;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$13;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/zhihu/android/api/b/o;->a(JLjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->g:Lcom/zhihu/android/bumblebee/http/e;

    goto/16 :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/m;->c()V

    .line 357
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->t:Z

    if-eqz v0, :cond_0

    const-string v0, "EditAnswer"

    :goto_0
    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 358
    return-void

    .line 357
    :cond_0
    const-string v0, "AddAnswer"

    goto :goto_0
.end method

.method protected d()Lcom/zhihu/android/app/webkit/ZHRichTextEditor;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->e:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    return-object v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(Z)V

    .line 393
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(Z)V

    .line 398
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->G()V

    .line 403
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->H()V

    .line 408
    return-void
.end method

.method public k_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 605
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    :goto_0
    return v1

    .line 608
    :cond_0
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->v:Z

    .line 609
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->e()V

    goto :goto_0
.end method

.method public onAgentEvent(Lcom/zhihu/android/app/ui/activity/AgentActivity$a;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->a()I

    move-result v0

    .line 456
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->b()I

    move-result v1

    .line 457
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->c()Landroid/content/Intent;

    move-result-object v2

    .line 459
    invoke-virtual {p0, v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(IILandroid/content/Intent;)V

    .line 460
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 678
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->h:Lcom/zhihu/android/base/widget/ZHImageView;

    if-ne v0, p1, :cond_1

    .line 679
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/d;->c(Landroid/view/View;)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->i:Lcom/zhihu/android/base/widget/ZHImageView;

    if-ne v0, p1, :cond_2

    .line 681
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/a/d;->d(Landroid/view/View;)V

    goto :goto_0

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->d:Lcom/zhihu/android/base/widget/ZHImageView;

    if-ne v0, p1, :cond_3

    .line 683
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->l()V

    goto :goto_0

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->f:Lcom/zhihu/android/base/widget/ZHImageView;

    if-ne v0, p1, :cond_0

    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->a:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    invoke-virtual {v1}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/m;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/a/d;->d(Z)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/a/d;->e(Z)V

    .line 180
    const-class v0, Lcom/zhihu/android/api/b/aa;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/aa;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->c:Lcom/zhihu/android/api/b/aa;

    .line 181
    const-class v0, Lcom/zhihu/android/api/b/d;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/d;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->d:Lcom/zhihu/android/api/b/d;

    .line 182
    const-class v0, Lcom/zhihu/android/api/b/o;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/o;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->e:Lcom/zhihu/android/api/b/o;

    .line 184
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_question"

    const-class v4, Lcom/zhihu/android/api/model/Question;

    invoke-static {v0, v3, v4}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->m:Lcom/zhihu/android/api/model/Question;

    .line 185
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_draft"

    const-class v4, Lcom/zhihu/android/api/model/Draft;

    invoke-static {v0, v3, v4}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Draft;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    .line 186
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_answer"

    const-class v4, Lcom/zhihu/android/api/model/Answer;

    invoke-static {v0, v3, v4}, Lcom/zhihu/android/api/model/ZHObject;->unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    .line 187
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_anonymous"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->u:Z

    .line 189
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    iget-boolean v0, v0, Lcom/zhihu/android/api/model/Answer;->isCopyable:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->w:Z

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    if-eqz v0, :cond_1

    .line 195
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->t:Z

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->m:Lcom/zhihu/android/api/model/Question;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Draft;->draftQuestion:Lcom/zhihu/android/api/model/Question;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->m:Lcom/zhihu/android/api/model/Question;

    .line 201
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 190
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 414
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 416
    const v0, 0x7f10026f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->r:Landroid/view/MenuItem;

    .line 417
    const v0, 0x7f100270

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->s:Landroid/view/MenuItem;

    .line 419
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->r:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 420
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->s:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->r:Landroid/view/MenuItem;

    const v1, 0x7f040019

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 424
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->a:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    invoke-virtual {v1}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 363
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->y:Lcom/zhihu/android/app/util/r;

    invoke-virtual {v0}, Lcom/zhihu/android/app/util/r;->a()V

    .line 365
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->w()V

    .line 367
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->f:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->f:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->g:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->g:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->h:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->h:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->i:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->i:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 382
    :cond_3
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/m;->onDestroyView()V

    .line 383
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 428
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 437
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 430
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->v:Z

    .line 431
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->e()V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x7f100270
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 739
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/m;->onPause()V

    .line 740
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->x:Lrx/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->x:Lrx/i;

    invoke-interface {v0}, Lrx/i;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->x:Lrx/i;

    invoke-interface {v0}, Lrx/i;->unsubscribe()V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->x:Lrx/i;

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->a:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$6;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$6;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Lcom/zhihu/android/app/webkit/ZHRichTextEditor$c;)V

    .line 755
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 759
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/m;->onResume()V

    .line 760
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->E()V

    .line 761
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/m;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->v()V

    .line 234
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->D()V

    .line 235
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->h:Lcom/zhihu/android/base/widget/ZHImageView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->i:Lcom/zhihu/android/base/widget/ZHImageView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->d:Lcom/zhihu/android/base/widget/ZHImageView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v0, v0, Lcom/zhihu/android/a/y;->f:Lcom/zhihu/android/base/widget/ZHImageView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/dialog/e;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->q:Landroid/app/Dialog;

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 243
    if-eqz p2, :cond_5

    .line 244
    const-string v0, "saved_answer_content"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    if-eqz v1, :cond_3

    .line 248
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->o:Lcom/zhihu/android/api/model/Answer;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Answer;->content:Ljava/lang/String;

    .line 253
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->a:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    invoke-virtual {v1, p0}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->setEditorListener(Lcom/zhihu/android/app/webkit/ZHRichTextEditor$b;)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/a/d;->c(Ljava/lang/String;)V

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->p:Lcom/zhihu/android/a/y;

    iget-object v1, v1, Lcom/zhihu/android/a/y;->e:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 261
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_answer_content"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 264
    new-instance v0, Lcom/zhihu/android/app/util/r;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/a/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/util/r;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->y:Lcom/zhihu/android/app/util/r;

    .line 265
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->y:Lcom/zhihu/android/app/util/r;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/a/d$7;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/a/d$7;-><init>(Lcom/zhihu/android/app/ui/fragment/a/d;)V

    invoke-virtual {v0, p1, v1}, Lcom/zhihu/android/app/util/r;->a(Landroid/view/View;Lcom/zhihu/android/app/util/r$a;)V

    .line 277
    return-void

    .line 248
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    if-eqz v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Draft;->content:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/a/d;->n:Lcom/zhihu/android/api/model/Draft;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Draft;->content:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method protected v()I
    .locals 1

    .prologue
    .line 226
    const v0, 0x7f040104

    return v0
.end method
