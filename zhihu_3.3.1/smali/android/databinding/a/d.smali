.class public Landroid/databinding/a/d;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# direct methods
.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {p1, v0}, Landroid/databinding/a/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    if-nez p0, :cond_1

    move v3, v0

    :goto_0
    if-nez p1, :cond_2

    move v2, v0

    :goto_1
    if-eq v3, v2, :cond_3

    .line 341
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v3, v1

    .line 327
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 329
    :cond_3
    if-nez p0, :cond_4

    move v0, v1

    .line 330
    goto :goto_2

    .line 332
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 333
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v3, v2, :cond_0

    move v2, v1

    .line 336
    :goto_3
    if-ge v2, v3, :cond_5

    .line 337
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 341
    goto :goto_2
.end method
