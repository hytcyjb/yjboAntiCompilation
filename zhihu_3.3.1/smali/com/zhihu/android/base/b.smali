.class public Lcom/zhihu/android/base/b;
.super Landroid/support/v7/app/f;
.source "ZHActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/f;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected A()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public a(IZJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 47
    invoke-virtual {p0}, Lcom/zhihu/android/base/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 49
    if-eqz p2, :cond_1

    .line 50
    invoke-direct {p0, v1}, Lcom/zhihu/android/base/b;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 52
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zhihu/android/base/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 54
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0}, Lcom/zhihu/android/base/b;->z()V

    .line 58
    invoke-virtual {p0, v1, p1}, Lcom/zhihu/android/base/b;->a(Landroid/view/View;I)V

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/zhihu/android/base/b$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/zhihu/android/base/b$1;-><init>(Lcom/zhihu/android/base/b;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 95
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/base/b;->z()V

    .line 84
    invoke-virtual {p0, v1, p1}, Lcom/zhihu/android/base/b;->a(Landroid/view/View;I)V

    .line 86
    invoke-virtual {p0}, Lcom/zhihu/android/base/b;->A()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/base/b;->z()V

    .line 91
    invoke-virtual {p0, v1, p1}, Lcom/zhihu/android/base/b;->a(Landroid/view/View;I)V

    .line 93
    invoke-virtual {p0}, Lcom/zhihu/android/base/b;->A()V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 106
    instance-of v1, p1, Lcom/zhihu/android/base/view/b;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 107
    check-cast v1, Lcom/zhihu/android/base/view/b;

    invoke-virtual {p0}, Lcom/zhihu/android/base/b;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/zhihu/android/base/view/b;->setTheme(Landroid/content/res/Resources$Theme;)V

    .line 110
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 111
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 113
    :goto_0
    if-ge v2, v3, :cond_1

    move-object v1, p1

    .line 114
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/zhihu/android/base/b;->a(Landroid/view/View;I)V

    .line 113
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 118
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 119
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    const-string v2, "android.support.v7.widget.RecyclerView$n"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clear"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 123
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$m;->a()V

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->setTheme(I)V

    .line 145
    :cond_2
    :goto_1
    return-void

    .line 132
    :cond_3
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    .line 133
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    const-string v2, "android.widget.AbsListView$RecycleBin"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clear"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 137
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public f(I)V
    .locals 4
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/zhihu/android/base/b;->a(IZJ)V

    .line 43
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .parameter

    .prologue
    .line 155
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/app/f;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected z()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
