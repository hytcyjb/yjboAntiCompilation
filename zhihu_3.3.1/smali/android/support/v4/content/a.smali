.class public Landroid/support/v4/content/a;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# direct methods
.method public static final a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 320
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 321
    invoke-static {p0, p1}, Landroid/support/v4/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 107
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/e;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 113
    :goto_0
    return v0

    .line 109
    :cond_0
    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 110
    invoke-static {p0, p1}, Landroid/support/v4/content/d;->a(Landroid/content/Context;[Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 344
    invoke-static {p0, p1}, Landroid/support/v4/content/c;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 365
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 366
    invoke-static {p0, p1}, Landroid/support/v4/content/c;->b(Landroid/content/Context;I)I

    move-result v0

    .line 368
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method
