.class public abstract Landroid/support/v7/preference/d;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Landroid/support/v7/preference/DialogPreference$a;
.implements Landroid/support/v7/preference/g$a;
.implements Landroid/support/v7/preference/g$b;
.implements Landroid/support/v7/preference/g$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/d$a;,
        Landroid/support/v7/preference/d$b;,
        Landroid/support/v7/preference/d$d;,
        Landroid/support/v7/preference/d$c;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/preference/g;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:I

.field private final g:Landroid/support/v7/preference/d$a;

.field private h:Landroid/os/Handler;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 128
    sget v0, Landroid/support/v7/preference/i$c;->preference_list_fragment:I

    iput v0, p0, Landroid/support/v7/preference/d;->f:I

    .line 130
    new-instance v0, Landroid/support/v7/preference/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/preference/d$a;-><init>(Landroid/support/v7/preference/d;Landroid/support/v7/preference/d$1;)V

    iput-object v0, p0, Landroid/support/v7/preference/d;->g:Landroid/support/v7/preference/d$a;

    .line 133
    new-instance v0, Landroid/support/v7/preference/d$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/d$1;-><init>(Landroid/support/v7/preference/d;)V

    iput-object v0, p0, Landroid/support/v7/preference/d;->h:Landroid/os/Handler;

    .line 145
    new-instance v0, Landroid/support/v7/preference/d$2;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/d$2;-><init>(Landroid/support/v7/preference/d;)V

    iput-object v0, p0, Landroid/support/v7/preference/d;->i:Ljava/lang/Runnable;

    .line 623
    return-void
.end method

.method static synthetic a(Landroid/support/v7/preference/d;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/support/v7/preference/d;->j()V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/preference/d;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/preference/d;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 504
    iget-object v0, p0, Landroid/support/v7/preference/d;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/d;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->e()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/d;->c(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 512
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->I()V

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->c()V

    .line 515
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 494
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/g;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    sget v0, Landroid/support/v7/preference/i$c;->preference_recyclerview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 547
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->f()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 549
    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v7/preference/d;->g:Landroid/support/v7/preference/d$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/d$a;->a(I)V

    .line 309
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v7/preference/d;->g:Landroid/support/v7/preference/d$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/d$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 298
    return-void
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public a(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/g;->a(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->d()V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/d;->c:Z

    .line 383
    iget-boolean v0, p0, Landroid/support/v7/preference/d;->d:Z

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0}, Landroid/support/v7/preference/d;->i()V

    .line 387
    :cond_0
    return-void
.end method

.method public b()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    invoke-virtual {v0}, Landroid/support/v7/preference/g;->c()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/support/v7/preference/d;->h()V

    .line 408
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    iget-object v1, p0, Landroid/support/v7/preference/d;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/support/v7/preference/d;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/d;->a(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 410
    return-void
.end method

.method public b(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->g()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/preference/d$d;

    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->g()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/d$d;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/d$d;->a(Landroid/support/v7/preference/d;Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    .line 477
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/d$d;

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/d$d;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/d$d;->a(Landroid/support/v7/preference/d;Landroid/support/v7/preference/PreferenceScreen;)Z

    .line 481
    :cond_1
    return-void
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->g()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/preference/d$c;

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->g()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/d$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/d$c;->a(Landroid/support/v7/preference/d;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 451
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/preference/d$c;

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/d$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/d$c;->a(Landroid/support/v7/preference/d;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 457
    :cond_1
    return v0
.end method

.method protected c(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$a;
    .locals 1
    .parameter

    .prologue
    .line 569
    new-instance v0, Landroid/support/v7/preference/e;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/e;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public c(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 582
    .line 583
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->g()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/d$b;

    if-eqz v0, :cond_5

    .line 584
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->g()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/d$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/d$b;->a(Landroid/support/v7/preference/d;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 587
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/preference/d$b;

    if-eqz v2, :cond_0

    .line 588
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/d$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/d$b;->a(Landroid/support/v7/preference/d;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 592
    :cond_0
    if-eqz v0, :cond_2

    .line 612
    :cond_1
    :goto_1
    return-void

    .line 597
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v2, "android.support.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 602
    instance-of v0, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/preference/a;->a(Ljava/lang/String;)Landroid/support/v7/preference/a;

    move-result-object v0

    .line 610
    :goto_2
    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/k;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 611
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "android.support.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/k;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_1

    .line 604
    :cond_3
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 605
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/preference/b;->a(Ljava/lang/String;)Landroid/support/v7/preference/b;

    move-result-object v0

    goto :goto_2

    .line 607
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public final e()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v7/preference/d;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public f()Landroid/support/v7/widget/RecyclerView$h;
    .locals 2

    .prologue
    .line 559
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public g()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 315
    iget-boolean v0, p0, Landroid/support/v7/preference/d;->c:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Landroid/support/v7/preference/d;->j()V

    .line 319
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/d;->d:Z

    .line 321
    if-eqz p1, :cond_1

    .line 322
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->c(Landroid/os/Bundle;)V

    .line 330
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 200
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/preference/i$a;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 201
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 202
    if-gtz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify preferenceTheme in theme"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/preference/d;->e:Landroid/content/Context;

    .line 207
    new-instance v0, Landroid/support/v7/preference/g;

    iget-object v1, p0, Landroid/support/v7/preference/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    .line 208
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/g;->a(Landroid/support/v7/preference/g$b;)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/preference/d;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 217
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 235
    iget-object v0, p0, Landroid/support/v7/preference/d;->e:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/preference/i$d;->PreferenceFragmentCompat:[I

    sget v3, Landroid/support/v7/preference/i$a;->preferenceFragmentCompatStyle:I

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    sget v1, Landroid/support/v7/preference/i$d;->PreferenceFragmentCompat_android_layout:I

    iget v2, p0, Landroid/support/v7/preference/d;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/d;->f:I

    .line 243
    sget v1, Landroid/support/v7/preference/i$d;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 245
    sget v2, Landroid/support/v7/preference/i$d;->PreferenceFragmentCompat_android_dividerHeight:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 248
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 252
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/l;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/preference/i$a;->preferenceTheme:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 253
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 255
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 256
    invoke-virtual {p1, v3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 258
    iget v0, p0, Landroid/support/v7/preference/d;->f:I

    invoke-virtual {v3, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 260
    sget v0, Landroid/support/v7/preference/i$b;->list_container:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 261
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    invoke-virtual {p0, v3, v0, p3}, Landroid/support/v7/preference/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 270
    if-nez v3, :cond_1

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create RecyclerView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    iput-object v3, p0, Landroid/support/v7/preference/d;->b:Landroid/support/v7/widget/RecyclerView;

    .line 276
    iget-object v5, p0, Landroid/support/v7/preference/d;->g:Landroid/support/v7/preference/d$a;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 277
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 278
    if-eq v2, v6, :cond_2

    .line 279
    invoke-virtual {p0, v2}, Landroid/support/v7/preference/d;->a(I)V

    .line 282
    :cond_2
    iget-object v1, p0, Landroid/support/v7/preference/d;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Landroid/support/v7/preference/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/d;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-object v4
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/d;->b:Landroid/support/v7/widget/RecyclerView;

    .line 349
    iget-object v0, p0, Landroid/support/v7/preference/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/d;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    iget-object v0, p0, Landroid/support/v7/preference/d;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 352
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 358
    invoke-virtual {p0}, Landroid/support/v7/preference/d;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 361
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->a(Landroid/os/Bundle;)V

    .line 362
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 364
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 335
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/g;->a(Landroid/support/v7/preference/g$c;)V

    .line 336
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/g;->a(Landroid/support/v7/preference/g$a;)V

    .line 337
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 342
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/g;->a(Landroid/support/v7/preference/g$c;)V

    .line 343
    iget-object v0, p0, Landroid/support/v7/preference/d;->a:Landroid/support/v7/preference/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/g;->a(Landroid/support/v7/preference/g$a;)V

    .line 344
    return-void
.end method
