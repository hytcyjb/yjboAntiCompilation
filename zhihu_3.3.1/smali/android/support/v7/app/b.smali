.class public Landroid/support/v7/app/b;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/b$e;,
        Landroid/support/v7/app/b$h;,
        Landroid/support/v7/app/b$g;,
        Landroid/support/v7/app/b$f;,
        Landroid/support/v7/app/b$d;,
        Landroid/support/v7/app/b$c;,
        Landroid/support/v7/app/b$a;,
        Landroid/support/v7/app/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/app/b$a;

.field private final b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/support/v7/app/b$d;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private final g:I

.field private final h:I

.field private i:Landroid/view/View$OnClickListener;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/b;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 152
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/support/v7/app/b$d;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/support/v7/widget/Toolbar;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/b;->e:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/b;->j:Z

    .line 194
    if-eqz p2, :cond_0

    .line 195
    new-instance v0, Landroid/support/v7/app/b$h;

    invoke-direct {v0, p2}, Landroid/support/v7/app/b$h;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    .line 196
    new-instance v0, Landroid/support/v7/app/b$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$1;-><init>(Landroid/support/v7/app/b;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/b;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 217
    iput p5, p0, Landroid/support/v7/app/b;->g:I

    .line 218
    iput p6, p0, Landroid/support/v7/app/b;->h:I

    .line 219
    if-nez p4, :cond_4

    .line 220
    new-instance v0, Landroid/support/v7/app/b$c;

    iget-object v1, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    invoke-interface {v1}, Landroid/support/v7/app/b$a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/b$c;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->c:Landroid/support/v7/app/b$d;

    .line 226
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b;->d:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void

    .line 206
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/b$b;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 207
    check-cast v0, Landroid/support/v7/app/b$b;

    invoke-interface {v0}, Landroid/support/v7/app/b$b;->b()Landroid/support/v7/app/b$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    goto :goto_0

    .line 208
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 209
    new-instance v0, Landroid/support/v7/app/b$g;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/b$g;-><init>(Landroid/app/Activity;Landroid/support/v7/app/b$1;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    goto :goto_0

    .line 210
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 211
    new-instance v0, Landroid/support/v7/app/b$f;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/b$f;-><init>(Landroid/app/Activity;Landroid/support/v7/app/b$1;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    goto :goto_0

    .line 213
    :cond_3
    new-instance v0, Landroid/support/v7/app/b$e;

    invoke-direct {v0, p1}, Landroid/support/v7/app/b$e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    goto :goto_0

    .line 223
    :cond_4
    check-cast p4, Landroid/support/v7/app/b$d;

    iput-object p4, p0, Landroid/support/v7/app/b;->c:Landroid/support/v7/app/b$d;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/app/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v7/app/b;->e:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/app/b;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/b;->c()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/app/b;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/app/b;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 285
    iget-object v0, p0, Landroid/support/v7/app/b;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v0

    .line 286
    iget-object v1, p0, Landroid/support/v7/app/b;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Landroid/support/v7/app/b;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Landroid/support/v7/app/b;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 239
    iget-object v0, p0, Landroid/support/v7/app/b;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Landroid/support/v7/app/b;->c:Landroid/support/v7/app/b$d;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v1}, Landroid/support/v7/app/b$d;->a(F)V

    .line 244
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/b;->e:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/support/v7/app/b;->c:Landroid/support/v7/app/b$d;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/b;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/b;->h:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/b;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 249
    :cond_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/b;->c:Landroid/support/v7/app/b$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/b$d;->a(F)V

    goto :goto_0

    .line 245
    :cond_2
    iget v1, p0, Landroid/support/v7/app/b;->g:I

    goto :goto_1
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 422
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/support/v7/app/b;->f:Z

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/app/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/b;->d:Landroid/graphics/drawable/Drawable;

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/b;->a()V

    .line 265
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 452
    iget-boolean v0, p0, Landroid/support/v7/app/b;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    invoke-interface {v0}, Landroid/support/v7/app/b$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/b;->j:Z

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/b$a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 459
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v7/app/b;->c:Landroid/support/v7/app/b$d;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/app/b$d;->a(F)V

    .line 381
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 277
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/b;->e:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Landroid/support/v7/app/b;->c()V

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    invoke-interface {v0}, Landroid/support/v7/app/b$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method b(I)V
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/b$a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/b$a;->a(I)V

    .line 463
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/v7/app/b;->c:Landroid/support/v7/app/b$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/b$d;->a(F)V

    .line 408
    iget-boolean v0, p0, Landroid/support/v7/app/b;->e:Z

    if-eqz v0, :cond_0

    .line 409
    iget v0, p0, Landroid/support/v7/app/b;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/b;->b(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/v7/app/b;->c:Landroid/support/v7/app/b$d;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v1}, Landroid/support/v7/app/b$d;->a(F)V

    .line 393
    iget-boolean v0, p0, Landroid/support/v7/app/b;->e:Z

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Landroid/support/v7/app/b;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/b;->b(I)V

    .line 396
    :cond_0
    return-void
.end method
