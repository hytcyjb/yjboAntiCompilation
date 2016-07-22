.class public Lcom/didi/beatles/utils/Spanny;
.super Landroid/text/SpannableStringBuilder;
.source "Spanny.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/utils/Spanny$GetSpan;
    }
.end annotation


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    const/16 v0, 0x21

    iput v0, p0, Lcom/didi/beatles/utils/Spanny;->flag:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    const/16 v0, 0x21

    iput v0, p0, Lcom/didi/beatles/utils/Spanny;->flag:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 2
    .parameter "text"
    .parameter "span"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    const/16 v0, 0x21

    iput v0, p0, Lcom/didi/beatles/utils/Spanny;->flag:I

    .line 34
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/didi/beatles/utils/Spanny;->setSpan(Ljava/lang/Object;II)V

    .line 35
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/Object;)V
    .locals 6
    .parameter "text"
    .parameter "spans"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    const/16 v4, 0x21

    iput v4, p0, Lcom/didi/beatles/utils/Spanny;->flag:I

    .line 27
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 28
    .local v3, span:Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/didi/beatles/utils/Spanny;->length()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/didi/beatles/utils/Spanny;->setSpan(Ljava/lang/Object;II)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v3           #span:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private setSpan(Ljava/lang/Object;II)V
    .locals 1
    .parameter "span"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 102
    iget v0, p0, Lcom/didi/beatles/utils/Spanny;->flag:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/didi/beatles/utils/Spanny;->setSpan(Ljava/lang/Object;III)V

    .line 103
    return-void
.end method

.method public static spanText(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 4
    .parameter "text"
    .parameter "span"

    .prologue
    .line 151
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    .local v0, spannableString:Landroid/text/SpannableString;
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 153
    return-object v0
.end method

.method public static varargs spanText(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 8
    .parameter "text"
    .parameter "spans"

    .prologue
    .line 143
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    .local v4, spannableString:Landroid/text/SpannableString;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 145
    .local v3, span:Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v3           #span:Ljava/lang/Object;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/didi/beatles/utils/Spanny;->append(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/didi/beatles/utils/Spanny;->append(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;
    .locals 0
    .parameter "text"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 75
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Landroid/text/style/ImageSpan;)Lcom/didi/beatles/utils/Spanny;
    .locals 3
    .parameter "text"
    .parameter "imageSpan"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/didi/beatles/utils/Spanny;->append(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;

    .line 64
    invoke-virtual {p0}, Lcom/didi/beatles/utils/Spanny;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/didi/beatles/utils/Spanny;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/didi/beatles/utils/Spanny;->setSpan(Ljava/lang/Object;II)V

    .line 65
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/didi/beatles/utils/Spanny;
    .locals 2
    .parameter "text"
    .parameter "span"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/didi/beatles/utils/Spanny;->append(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;

    .line 53
    invoke-virtual {p0}, Lcom/didi/beatles/utils/Spanny;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/didi/beatles/utils/Spanny;->length()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/didi/beatles/utils/Spanny;->setSpan(Ljava/lang/Object;II)V

    .line 54
    return-object p0
.end method

.method public varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/didi/beatles/utils/Spanny;
    .locals 6
    .parameter "text"
    .parameter "spans"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/didi/beatles/utils/Spanny;->append(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;

    .line 45
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 46
    .local v3, span:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/didi/beatles/utils/Spanny;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/didi/beatles/utils/Spanny;->length()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/didi/beatles/utils/Spanny;->setSpan(Ljava/lang/Object;II)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v3           #span:Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/didi/beatles/utils/Spanny;->append(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;

    move-result-object v0

    return-object v0
.end method

.method public appendText(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;
    .locals 0
    .parameter "text"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/didi/beatles/utils/Spanny;->append(Ljava/lang/CharSequence;)Lcom/didi/beatles/utils/Spanny;

    .line 83
    return-object p0
.end method

.method public findAndSpan(Ljava/lang/CharSequence;Lcom/didi/beatles/utils/Spanny$GetSpan;)Lcom/didi/beatles/utils/Spanny;
    .locals 4
    .parameter "textToSpan"
    .parameter "getSpan"

    .prologue
    const/4 v3, -0x1

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, lastIndex:I
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/didi/beatles/utils/Spanny;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 118
    if-eq v0, v3, :cond_0

    .line 119
    invoke-interface {p2}, Lcom/didi/beatles/utils/Spanny$GetSpan;->getSpan()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/didi/beatles/utils/Spanny;->setSpan(Ljava/lang/Object;II)V

    .line 120
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 123
    :cond_1
    return-object p0
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 93
    iput p1, p0, Lcom/didi/beatles/utils/Spanny;->flag:I

    .line 94
    return-void
.end method
