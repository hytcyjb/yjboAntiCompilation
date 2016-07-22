.class public Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;
.super Lx/TextView;
.source "BtsRichTextView.java"


# static fields
.field private static TAG_RED:Ljava/lang/String;


# instance fields
.field private builder:Landroid/text/SpannableString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "red"

    sput-object v0, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->TAG_RED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lx/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private setSpan(Ljava/util/ArrayList;I)V
    .locals 7
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/richtextview/Span;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, spans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    const-string v0, "#ff8903"

    .line 63
    .local v0, colors:Ljava/lang/String;
    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->TAG_RED:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v0, "#dd170c"

    .line 66
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 67
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->builder:Landroid/text/SpannableString;

    new-instance v4, Lcom/didi/common/richtextview/NoLineClickSpan;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/richtextview/Span;

    iget-object v5, v2, Lcom/didi/common/richtextview/Span;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/richtextview/Span;

    iget-object v6, v2, Lcom/didi/common/richtextview/Span;->link:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/richtextview/Span;

    iget-object v2, v2, Lcom/didi/common/richtextview/Span;->title:Ljava/lang/String;

    invoke-direct {v4, v0, v5, v6, v2}, Lcom/didi/common/richtextview/NoLineClickSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/richtextview/Span;

    iget v5, v2, Lcom/didi/common/richtextview/Span;->spanStart:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/richtextview/Span;

    iget v2, v2, Lcom/didi/common/richtextview/Span;->spanEnd:I

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, str:Ljava/lang/String;
    const/4 v2, 0x0

    .line 40
    .local v2, isMatch:Z
    new-instance v0, Lcom/didi/common/richtextview/BraceSpan;

    invoke-direct {v0}, Lcom/didi/common/richtextview/BraceSpan;-><init>()V

    .line 41
    .local v0, braceSpan:Lcom/didi/common/richtextview/BraceSpan;
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/didi/common/richtextview/BraceSpan;->getSpans(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 42
    .local v1, braceSpans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 43
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/richtextview/Span;

    iget-object v3, v4, Lcom/didi/common/richtextview/Span;->source:Ljava/lang/String;

    .line 44
    const/4 v2, 0x1

    .line 47
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseSpan bracespan:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 48
    if-eqz v2, :cond_1

    .line 49
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->builder:Landroid/text/SpannableString;

    .line 50
    invoke-direct {p0, v1, v6}, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->setSpan(Ljava/util/ArrayList;I)V

    .line 51
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->builder:Landroid/text/SpannableString;

    invoke-super {p0, v4, p2}, Lx/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 58
    .end local v0           #braceSpan:Lcom/didi/common/richtextview/BraceSpan;
    .end local v1           #braceSpans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    .end local v2           #isMatch:Z
    .end local v3           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 53
    .restart local v0       #braceSpan:Lcom/didi/common/richtextview/BraceSpan;
    .restart local v1       #braceSpans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    .restart local v2       #isMatch:Z
    .restart local v3       #str:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lx/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 56
    .end local v0           #braceSpan:Lcom/didi/common/richtextview/BraceSpan;
    .end local v1           #braceSpans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    .end local v2           #isMatch:Z
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2}, Lx/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method
