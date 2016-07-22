.class Landroid/support/v4/widget/DrawerLayout$a;
.super Landroid/support/v4/view/a;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 2194
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 2195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/support/v4/view/a/e;Landroid/support/v4/view/a/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2287
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    .line 2289
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->a(Landroid/graphics/Rect;)V

    .line 2290
    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->b(Landroid/graphics/Rect;)V

    .line 2292
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->c(Landroid/graphics/Rect;)V

    .line 2293
    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->d(Landroid/graphics/Rect;)V

    .line 2295
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->c(Z)V

    .line 2296
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->q()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->a(Ljava/lang/CharSequence;)V

    .line 2297
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->b(Ljava/lang/CharSequence;)V

    .line 2298
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->t()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->d(Ljava/lang/CharSequence;)V

    .line 2300
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->h(Z)V

    .line 2301
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->f(Z)V

    .line 2302
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->a(Z)V

    .line 2303
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->b(Z)V

    .line 2304
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->d(Z)V

    .line 2305
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->e(Z)V

    .line 2306
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->g(Z)V

    .line 2308
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->a(I)V

    .line 2309
    return-void
.end method

.method private a(Landroid/support/v4/view/a/e;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2271
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2272
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2273
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2274
    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2275
    invoke-virtual {p1, v2}, Landroid/support/v4/view/a/e;->c(Landroid/view/View;)V

    .line 2272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2278
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2199
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/e;)V

    .line 2219
    :goto_0
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->b(Ljava/lang/CharSequence;)V

    .line 2224
    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/e;->a(Z)V

    .line 2225
    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/e;->b(Z)V

    .line 2226
    sget-object v0, Landroid/support/v4/view/a/e$a;->a:Landroid/support/v4/view/a/e$a;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->a(Landroid/support/v4/view/a/e$a;)Z

    .line 2227
    sget-object v0, Landroid/support/v4/view/a/e$a;->b:Landroid/support/v4/view/a/e$a;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->a(Landroid/support/v4/view/a/e$a;)Z

    .line 2228
    return-void

    .line 2204
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/a/e;->a(Landroid/support/v4/view/a/e;)Landroid/support/v4/view/a/e;

    move-result-object v1

    .line 2206
    invoke-super {p0, p1, v1}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/e;)V

    .line 2208
    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/e;->b(Landroid/view/View;)V

    .line 2209
    invoke-static {p1}, Landroid/support/v4/view/ah;->i(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 2210
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2211
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->d(Landroid/view/View;)V

    .line 2213
    :cond_1
    invoke-direct {p0, p2, v1}, Landroid/support/v4/widget/DrawerLayout$a;->a(Landroid/support/v4/view/a/e;Landroid/support/v4/view/a/e;)V

    .line 2214
    invoke-virtual {v1}, Landroid/support/v4/view/a/e;->u()V

    .line 2216
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/DrawerLayout$a;->a(Landroid/support/v4/view/a/e;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2232
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2234
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2235
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2264
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2267
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2244
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2245
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2246
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;

    move-result-object v1

    .line 2247
    if-eqz v1, :cond_0

    .line 2248
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v1

    .line 2249
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$a;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2250
    if-eqz v1, :cond_0

    .line 2251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    :cond_0
    const/4 v0, 0x1

    .line 2258
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method
