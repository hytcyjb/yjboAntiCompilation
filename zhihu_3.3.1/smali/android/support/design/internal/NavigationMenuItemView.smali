.class public Landroid/support/design/internal/NavigationMenuItemView;
.super Landroid/support/design/internal/ForegroundLinearLayout;
.source "NavigationMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/m$a;


# static fields
.field private static final c:[I


# instance fields
.field private final d:I

.field private final e:Landroid/widget/CheckedTextView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/support/v7/view/menu/h;

.field private h:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/a$f;->design_navigation_menu_item:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/a$d;->design_navigation_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->d:I

    .line 69
    sget v0, Landroid/support/design/a$e;->design_menu_item_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->e:Landroid/widget/CheckedTextView;

    .line 70
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->e:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 71
    return-void
.end method

.method private c()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .prologue
    .line 110
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/design/a$b;->colorControlHighlight:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 113
    sget-object v2, Landroid/support/design/internal/NavigationMenuItemView;->c:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 114
    sget-object v1, Landroid/support/design/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setActionView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->f:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 100
    sget v0, Landroid/support/design/a$e;->design_menu_item_action_area_stub:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->f:Landroid/widget/FrameLayout;

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 104
    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 107
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->e:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->e:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 185
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->g:Landroid/support/v7/view/menu/h;

    .line 77
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 84
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 86
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 89
    return-void

    .line 77
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getItemData()Landroid/support/v7/view/menu/h;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->g:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter

    .prologue
    .line 168
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/support/design/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 169
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->g:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->g:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->g:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Landroid/support/design/internal/NavigationMenuItemView;->c:[I

    invoke-static {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    .line 172
    :cond_0
    return-object v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 133
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 138
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->e:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 139
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 149
    if-nez v0, :cond_1

    :goto_0
    invoke-static {p1}, Landroid/support/v4/b/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 150
    iget v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->d:I

    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->d:I

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->h:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->e:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1, v2, v2, v2}, Landroid/support/v4/widget/aa;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void

    .line 149
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->h:Landroid/content/res/ColorStateList;

    .line 177
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->g:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->g:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->e:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->e:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method
