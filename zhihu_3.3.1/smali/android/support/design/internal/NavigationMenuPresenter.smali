.class public Landroid/support/design/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/NavigationMenuPresenter$b;,
        Landroid/support/design/internal/NavigationMenuPresenter$d;,
        Landroid/support/design/internal/NavigationMenuPresenter$e;,
        Landroid/support/design/internal/NavigationMenuPresenter$c;,
        Landroid/support/design/internal/NavigationMenuPresenter$a;,
        Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$g;,
        Landroid/support/design/internal/NavigationMenuPresenter$h;,
        Landroid/support/design/internal/NavigationMenuPresenter$f;,
        Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field private a:Landroid/support/design/internal/NavigationMenuView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/support/v7/view/menu/l$a;

.field private d:Landroid/support/v7/view/menu/f;

.field private e:I

.field private f:Landroid/support/design/internal/NavigationMenuPresenter$a;

.field private g:Landroid/view/LayoutInflater;

.field private h:I

.field private i:Z

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I

.field private final o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/NavigationMenuPresenter$1;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->o:Landroid/view/View$OnClickListener;

    .line 647
    return-void
.end method

.method static synthetic a(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/f;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->d:Landroid/support/v7/view/menu/f;

    return-object v0
.end method

.method static synthetic b(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/design/internal/NavigationMenuPresenter$a;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic d(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic g(Landroid/support/design/internal/NavigationMenuPresenter;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->i:Z

    return v0
.end method

.method static synthetic h(Landroid/support/design/internal/NavigationMenuPresenter;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->h:I

    return v0
.end method

.method static synthetic i(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic j(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic k(Landroid/support/design/internal/NavigationMenuPresenter;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->n:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/m;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/a$f;->design_navigation_menu:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    .line 98
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$a;

    invoke-direct {v0, p0}, Landroid/support/design/internal/NavigationMenuPresenter$a;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/a$f;->design_navigation_item_header:I

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    .line 104
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 106
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->e:I

    .line 155
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    .line 87
    iput-object p2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->d:Landroid/support/v7/view/menu/f;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    sget v1, Landroid/support/design/a$d;->design_navigation_separator_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->n:I

    .line 91
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->k:Landroid/content/res/ColorStateList;

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Z)V

    .line 223
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Z)V

    .line 249
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    check-cast p1, Landroid/os/Bundle;

    .line 174
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 178
    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/os/Bundle;)V

    .line 182
    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/f;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->c:Landroid/support/v7/view/menu/l$a;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->c:Landroid/support/v7/view/menu/l$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/l$a;->a(Landroid/support/v7/view/menu/f;Z)V

    .line 131
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Landroid/support/v7/view/menu/h;)V

    .line 186
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 198
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$a;->b()V

    .line 114
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/f;Landroid/support/v7/view/menu/h;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/p;)Z
    .locals 1
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->e:I

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->g:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Landroid/view/View;)V

    .line 191
    return-object v0
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->j:Landroid/content/res/ColorStateList;

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Z)V

    .line 233
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$a;->a(Z)V

    .line 255
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/f;Landroid/support/v7/view/menu/h;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 162
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 163
    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 165
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "android:menu:adapter"

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->f:Landroid/support/design/internal/NavigationMenuPresenter$a;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuPresenter$a;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    :cond_1
    return-object v0
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 236
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->h:I

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->i:Z

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->a(Z)V

    .line 239
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 258
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->m:I

    if-eq v0, p1, :cond_0

    .line 259
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->m:I

    .line 260
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    iget v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->m:I

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 264
    :cond_0
    return-void
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public f()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
