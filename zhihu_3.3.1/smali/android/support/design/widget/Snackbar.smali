.class public final Landroid/support/design/widget/Snackbar;
.super Ljava/lang/Object;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$a;,
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

.field private e:I

.field private f:Landroid/support/design/widget/Snackbar$b;

.field private final g:Landroid/view/accessibility/AccessibilityManager;

.field private final h:Landroid/support/design/widget/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Snackbar$1;

    invoke-direct {v2}, Landroid/support/design/widget/Snackbar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/Snackbar;->a:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Landroid/support/design/widget/Snackbar$4;

    invoke-direct {v0, p0}, Landroid/support/design/widget/Snackbar$4;-><init>(Landroid/support/design/widget/Snackbar;)V

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->h:Landroid/support/design/widget/p$a;

    .line 182
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    .line 183
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    .line 185
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/design/widget/s;->a(Landroid/content/Context;)V

    .line 187
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 188
    sget v1, Landroid/support/design/a$f;->design_layout_snackbar:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 193
    return-void
.end method

.method public static a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    new-instance v0, Landroid/support/design/widget/Snackbar;

    invoke-static {p0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 217
    invoke-virtual {v0, p2}, Landroid/support/design/widget/Snackbar;->b(I)Landroid/support/design/widget/Snackbar;

    .line 218
    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/p$a;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->h:Landroid/support/design/widget/p$a;

    return-object v0
.end method

.method private static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 244
    move-object v1, v2

    move-object v0, p0

    .line 246
    :cond_0
    instance-of v3, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    .line 248
    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    :goto_0
    return-object v0

    .line 249
    :cond_1
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1020002

    if-ne v1, v3, :cond_2

    .line 253
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 256
    check-cast v1, Landroid/view/ViewGroup;

    .line 260
    :cond_3
    if-eqz v0, :cond_4

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 263
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/view/View;

    .line 265
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v1

    .line 268
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 263
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/Snackbar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->d(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->g()V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/Snackbar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->f(I)V

    return-void
.end method

.method static synthetic c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method static synthetic d(Landroid/support/design/widget/Snackbar;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->g:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private d(I)V
    .locals 2
    .parameter

    .prologue
    .line 400
    invoke-static {}, Landroid/support/design/widget/p;->a()Landroid/support/design/widget/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->h:Landroid/support/design/widget/p$a;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/p;->a(Landroid/support/design/widget/p$a;I)V

    .line 401
    return-void
.end method

.method private e(I)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0xfa

    .line 562
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 563
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->c(F)Landroid/support/v4/view/bc;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->a(J)Landroid/support/v4/view/bc;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/Snackbar$10;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/Snackbar$10;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->c()V

    .line 604
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_snackbar_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 588
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 589
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 590
    new-instance v1, Landroid/support/design/widget/Snackbar$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/Snackbar$2;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 602
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->h()V

    return-void
.end method

.method static synthetic f()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/support/design/widget/Snackbar;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private f(I)V
    .locals 2
    .parameter

    .prologue
    .line 623
    invoke-static {}, Landroid/support/design/widget/p;->a()Landroid/support/design/widget/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->h:Landroid/support/design/widget/p$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(Landroid/support/design/widget/p$a;)V

    .line 625
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Landroid/support/design/widget/Snackbar$b;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Landroid/support/design/widget/Snackbar$b;

    invoke-virtual {v0, p0, p1}, Landroid/support/design/widget/Snackbar$b;->a(Landroid/support/design/widget/Snackbar;I)V

    .line 629
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 630
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 631
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 633
    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    .line 517
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->c(F)Landroid/support/v4/view/bc;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->a(J)Landroid/support/v4/view/bc;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/Snackbar$8;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$8;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->c()V

    .line 559
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 543
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 544
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 545
    new-instance v1, Landroid/support/design/widget/Snackbar$9;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$9;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 557
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 615
    invoke-static {}, Landroid/support/design/widget/p;->a()Landroid/support/design/widget/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->h:Landroid/support/design/widget/p$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->b(Landroid/support/design/widget/p$a;)V

    .line 616
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Landroid/support/design/widget/Snackbar$b;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Landroid/support/design/widget/Snackbar$b;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/Snackbar$b;->a(Landroid/support/design/widget/Snackbar;)V

    .line 619
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/design/widget/Snackbar;
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    return-object p0
.end method

.method public a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/design/widget/Snackbar$b;)Landroid/support/design/widget/Snackbar;
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->f:Landroid/support/design/widget/Snackbar$b;

    .line 409
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 293
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    :goto_0
    return-object p0

    .line 296
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v1, Landroid/support/design/widget/Snackbar$3;

    invoke-direct {v1, p0, p2}, Landroid/support/design/widget/Snackbar$3;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method public b(I)Landroid/support/design/widget/Snackbar;
    .locals 0
    .parameter

    .prologue
    .line 363
    iput p1, p0, Landroid/support/design/widget/Snackbar;->e:I

    .line 364
    return-object p0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Landroid/support/design/widget/p;->a()Landroid/support/design/widget/p;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/Snackbar;->e:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->h:Landroid/support/design/widget/p$a;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/p;->a(ILandroid/support/design/widget/p$a;)V

    .line 390
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/design/widget/Snackbar;->d(I)V

    .line 397
    return-void
.end method

.method final c(I)V
    .locals 1
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->f(I)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->e(I)V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 424
    invoke-static {}, Landroid/support/design/widget/p;->a()Landroid/support/design/widget/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->h:Landroid/support/design/widget/p$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->e(Landroid/support/design/widget/p$a;)Z

    move-result v0

    return v0
.end method

.method final e()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 443
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_0

    .line 446
    new-instance v1, Landroid/support/design/widget/Snackbar$a;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$a;-><init>(Landroid/support/design/widget/Snackbar;)V

    .line 447
    const v2, 0x3dcccccd

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar$a;->a(F)V

    .line 448
    const v2, 0x3f19999a

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar$a;->b(F)V

    .line 449
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar$a;->a(I)V

    .line 450
    new-instance v2, Landroid/support/design/widget/Snackbar$5;

    invoke-direct {v2, p0}, Landroid/support/design/widget/Snackbar$5;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar$a;->a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V

    .line 472
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout$b;)V

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 478
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v1, Landroid/support/design/widget/Snackbar$6;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$6;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnAttachStateChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$a;)V

    .line 499
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ah;->G(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->g()V

    .line 512
    :goto_0
    return-void

    .line 504
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v1, Landroid/support/design/widget/Snackbar$7;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$7;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$b;)V

    goto :goto_0
.end method
