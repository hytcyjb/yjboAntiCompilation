.class public Lcom/didi/common/richtextview/RichTextView;
.super Lx/TextView;
.source "RichTextView.java"


# static fields
.field private static TAG_RED:Ljava/lang/String;


# instance fields
.field private builder:Landroid/text/SpannableString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "red"

    sput-object v0, Lcom/didi/common/richtextview/RichTextView;->TAG_RED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lx/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
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
    .line 64
    .local p1, spans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    const-string v0, "#ff8903"

    .line 65
    .local v0, colors:Ljava/lang/String;
    sget-object v2, Lcom/didi/common/richtextview/RichTextView;->TAG_RED:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/didi/common/richtextview/RichTextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v0, "#dd170c"

    .line 68
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 69
    iget-object v3, p0, Lcom/didi/common/richtextview/RichTextView;->builder:Landroid/text/SpannableString;

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

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 77
    move-object v7, p0

    .line 78
    .local v7, widget:Lx/TextView;
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/didi/common/richtextview/RichTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    .local v1, buffer:Landroid/text/Spannable;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 80
    .local v0, action:I
    if-eq v0, v10, :cond_0

    if-nez v0, :cond_3

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v8, v12

    .line 82
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v9, v12

    .line 84
    .local v9, y:I
    invoke-virtual {v7}, Lx/TextView;->getTotalPaddingLeft()I

    move-result v12

    sub-int/2addr v8, v12

    .line 85
    invoke-virtual {v7}, Lx/TextView;->getTotalPaddingTop()I

    move-result v12

    sub-int/2addr v9, v12

    .line 87
    invoke-virtual {v7}, Lx/TextView;->getScrollX()I

    move-result v12

    add-int/2addr v8, v12

    .line 88
    invoke-virtual {v7}, Lx/TextView;->getScrollY()I

    move-result v12

    add-int/2addr v9, v12

    .line 90
    invoke-virtual {v7}, Lx/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 91
    .local v2, layout:Landroid/text/Layout;
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 92
    .local v3, line:I
    int-to-float v12, v8

    invoke-virtual {v2, v3, v12}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 94
    .local v5, off:I
    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v5, v5, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 97
    .local v4, link:[Landroid/text/style/ClickableSpan;
    array-length v12, v4

    if-eqz v12, :cond_3

    .line 98
    if-ne v0, v10, :cond_1

    .line 100
    aget-object v12, v4, v11

    instance-of v12, v12, Lcom/didi/common/richtextview/NoLineClickSpan;

    if-eqz v12, :cond_2

    .line 101
    aget-object v6, v4, v11

    check-cast v6, Lcom/didi/common/richtextview/NoLineClickSpan;

    .line 102
    .local v6, us:Lcom/didi/common/richtextview/NoLineClickSpan;
    invoke-virtual {v6, v7}, Lcom/didi/common/richtextview/NoLineClickSpan;->onClick(Landroid/view/View;)V

    .line 111
    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #line:I
    .end local v4           #link:[Landroid/text/style/ClickableSpan;
    .end local v5           #off:I
    .end local v6           #us:Lcom/didi/common/richtextview/NoLineClickSpan;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_1
    :goto_0
    return v10

    .line 105
    .restart local v2       #layout:Landroid/text/Layout;
    .restart local v3       #line:I
    .restart local v4       #link:[Landroid/text/style/ClickableSpan;
    .restart local v5       #off:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_2
    aget-object v11, v4, v11

    invoke-virtual {v11, v7}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #line:I
    .end local v4           #link:[Landroid/text/style/ClickableSpan;
    .end local v5           #off:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_3
    move v10, v11

    .line 111
    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, str:Ljava/lang/String;
    const/4 v2, 0x0

    .line 42
    .local v2, isMatch:Z
    new-instance v0, Lcom/didi/common/richtextview/BraceSpan;

    invoke-direct {v0}, Lcom/didi/common/richtextview/BraceSpan;-><init>()V

    .line 43
    .local v0, braceSpan:Lcom/didi/common/richtextview/BraceSpan;
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/didi/common/richtextview/BraceSpan;->getSpans(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    .local v1, braceSpans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 45
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/richtextview/Span;

    iget-object v3, v4, Lcom/didi/common/richtextview/Span;->source:Ljava/lang/String;

    .line 46
    const/4 v2, 0x1

    .line 49
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

    .line 50
    if-eqz v2, :cond_1

    .line 51
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/didi/common/richtextview/RichTextView;->builder:Landroid/text/SpannableString;

    .line 52
    invoke-direct {p0, v1, v6}, Lcom/didi/common/richtextview/RichTextView;->setSpan(Ljava/util/ArrayList;I)V

    .line 53
    iget-object v4, p0, Lcom/didi/common/richtextview/RichTextView;->builder:Landroid/text/SpannableString;

    invoke-super {p0, v4, p2}, Lx/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 60
    .end local v0           #braceSpan:Lcom/didi/common/richtextview/BraceSpan;
    .end local v1           #braceSpans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    .end local v2           #isMatch:Z
    .end local v3           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 55
    .restart local v0       #braceSpan:Lcom/didi/common/richtextview/BraceSpan;
    .restart local v1       #braceSpans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    .restart local v2       #isMatch:Z
    .restart local v3       #str:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lx/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 58
    .end local v0           #braceSpan:Lcom/didi/common/richtextview/BraceSpan;
    .end local v1           #braceSpans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    .end local v2           #isMatch:Z
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2}, Lx/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method
