.class public Lcom/zhihu/android/app/ui/fragment/o;
.super Lcom/zhihu/android/app/ui/fragment/d;
.source "SupportSystemBarFragment.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/zhihu/android/app/ui/widget/SystemBar;

.field private d:I

.field private e:I

.field private f:Landroid/view/View$OnClickListener;

.field protected j:Lcom/zhihu/android/base/widget/ZHToolBar;

.field protected k:Lcom/zhihu/android/app/ui/widget/StatusBar;

.field protected l:Lcom/zhihu/android/base/view/ZHView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/d;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->a:Z

    .line 69
    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->b:Z

    .line 79
    const/16 v0, 0xff

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->d:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->e:I

    .line 338
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/o$3;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/o$3;-><init>(Lcom/zhihu/android/app/ui/fragment/o;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->a:Z

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call setHasSystemBar(true)!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 261
    const v0, 0x7f0200bb

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/o;->a(ILandroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 238
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 295
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/widget/StatusBar;->setBackgroundColor(I)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0, p2}, Lcom/zhihu/android/base/widget/ZHToolBar;->setBackgroundColor(I)V

    .line 300
    return-void
.end method

.method public a(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 252
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    invoke-virtual {p0, v0, p2}, Lcom/zhihu/android/app/ui/fragment/o;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 254
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 267
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->e:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 271
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0, p2}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :cond_0
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 147
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    new-instance v1, Landroid/support/v7/c/a/b;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/c/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(I)V

    .line 149
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/o$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/o$1;-><init>(Lcom/zhihu/android/app/ui/fragment/o;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    new-instance v1, Landroid/support/v7/view/g;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v2}, Lcom/zhihu/android/base/widget/ZHToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/o;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/o;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 163
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setMenuIconTintColor(Landroid/content/res/Resources$Theme;)V

    .line 165
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/o$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/o$2;-><init>(Lcom/zhihu/android/app/ui/fragment/o;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHToolBar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$c;)V

    .line 174
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 287
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 214
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->d:I

    .line 216
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/StatusBar;->setAlpha(F)V

    .line 219
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/StatusBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/StatusBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 223
    :cond_0
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/zhihu/android/base/util/SystemUtils;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/StatusBar;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/StatusBar;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    :cond_2
    return-void
.end method

.method protected d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/o;->a:Z

    .line 85
    return-void
.end method

.method public e(I)V
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/widget/SystemBar;->setMaskViewVisibility(I)V

    .line 247
    return-void
.end method

.method protected e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/o;->b:Z

    .line 89
    return-void
.end method

.method public f(I)V
    .locals 1
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 280
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(I)V

    .line 283
    :cond_0
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public g(I)V
    .locals 4
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 306
    iput p1, p0, Lcom/zhihu/android/app/ui/fragment/o;->e:I

    .line 308
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 319
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 320
    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 322
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 323
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 319
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 329
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 331
    :cond_4
    return-void
.end method

.method public h(I)V
    .locals 1
    .parameter

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 335
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitleTextColor(I)V

    .line 336
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 94
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->a:Z

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v1, Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->v()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/zhihu/android/app/ui/widget/SystemBar;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    .line 101
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    const v2, 0x7f100020

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/ui/widget/SystemBar;->setId(I)V

    .line 102
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getToolbar()Lcom/zhihu/android/base/widget/ZHToolBar;

    move-result-object v2

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    .line 105
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getStatusBar()Lcom/zhihu/android/app/ui/widget/StatusBar;

    move-result-object v2

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->k:Lcom/zhihu/android/app/ui/widget/StatusBar;

    .line 106
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getMaskView()Lcom/zhihu/android/base/view/ZHView;

    move-result-object v2

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->l:Lcom/zhihu/android/base/view/ZHView;

    .line 108
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {p0, v2, p3}, Lcom/zhihu/android/app/ui/fragment/o;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 110
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 112
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    iget-boolean v4, p0, Lcom/zhihu/android/app/ui/fragment/o;->b:Z

    if-nez v4, :cond_1

    .line 114
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v5}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 116
    :cond_1
    invoke-virtual {p0, p1, v0, p3}, Lcom/zhihu/android/app/ui/fragment/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 117
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/d;->onDestroyView()V

    .line 133
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 137
    :cond_0
    return-void
.end method

.method protected v()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public w()Lcom/zhihu/android/app/ui/widget/SystemBar;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;->d()V

    .line 191
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->c:Lcom/zhihu/android/app/ui/widget/SystemBar;

    return-object v0
.end method

.method protected x()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/o;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHToolBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/o;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/o;->d:I

    return v0
.end method

.method public z()V
    .locals 2

    .prologue
    .line 257
    const v0, 0x7f0200a3

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/o;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/o;->a(ILandroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method
