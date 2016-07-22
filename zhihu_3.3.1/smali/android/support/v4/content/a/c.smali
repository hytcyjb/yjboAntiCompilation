.class public Landroid/support/v4/content/a/c;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# direct methods
.method public static a(Landroid/content/res/TypedArray;III)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 47
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/res/TypedArray;IIZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/res/TypedArray;III)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method
