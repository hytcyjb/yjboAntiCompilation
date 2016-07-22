.class public abstract Landroid/support/v4/b/a/j$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableWrapperDonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroid/graphics/drawable/Drawable$ConstantState;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/b/a/j$a;->c:Landroid/content/res/ColorStateList;

    .line 337
    sget-object v0, Landroid/support/v4/b/a/j;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/v4/b/a/j$a;->d:Landroid/graphics/PorterDuff$Mode;

    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget v0, p1, Landroid/support/v4/b/a/j$a;->a:I

    iput v0, p0, Landroid/support/v4/b/a/j$a;->a:I

    .line 342
    iget-object v0, p1, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 343
    iget-object v0, p1, Landroid/support/v4/b/a/j$a;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v4/b/a/j$a;->c:Landroid/content/res/ColorStateList;

    .line 344
    iget-object v0, p1, Landroid/support/v4/b/a/j$a;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/v4/b/a/j$a;->d:Landroid/graphics/PorterDuff$Mode;

    .line 346
    :cond_0
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 357
    iget v1, p0, Landroid/support/v4/b/a/j$a;->a:I

    iget-object v0, p0, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/b/a/j$a;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method
