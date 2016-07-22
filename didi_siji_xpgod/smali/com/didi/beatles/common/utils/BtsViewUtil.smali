.class public Lcom/didi/beatles/common/utils/BtsViewUtil;
.super Ljava/lang/Object;
.source "BtsViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeColor(Landroid/widget/TextView;IIII)V
    .locals 3
    .parameter "tv"
    .parameter "color"
    .parameter "fromIndex"
    .parameter "endIndex"
    .parameter "spanExclusiveOrInclusive"

    .prologue
    .line 25
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    .local v0, spanText:Landroid/text/SpannableString;
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    if-ge v1, p3, :cond_0

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static changeColor(Landroid/widget/TextView;I[I[II)V
    .locals 6
    .parameter "tv"
    .parameter "color"
    .parameter "fromIndex"
    .parameter "endIndex"
    .parameter "spanExclusiveOrInclusive"

    .prologue
    .line 33
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    .local v1, spanText:Landroid/text/SpannableString;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 35
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    aget v3, p3, v0

    if-ge v2, v3, :cond_0

    .line 40
    :goto_1
    return-void

    .line 37
    :cond_0
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget v3, p2, v0

    aget v4, p3, v0

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
