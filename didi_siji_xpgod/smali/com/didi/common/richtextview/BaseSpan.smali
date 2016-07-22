.class public Lcom/didi/common/richtextview/BaseSpan;
.super Ljava/lang/Object;
.source "BaseSpan.java"


# instance fields
.field private link:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/didi/common/richtextview/BaseSpan;->link:Ljava/lang/String;

    return-object v0
.end method

.method protected getSpans(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .parameter "s"
    .parameter "keywords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/richtextview/Span;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    const-string p2, ""

    .line 49
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/richtextview/Span;>;"
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct {v9, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 52
    .local v9, result:Ljava/lang/StringBuffer;
    const-string v8, "(\\u007B)(.*?)(\\u007D)"

    .line 53
    .local v8, regex:Ljava/lang/String;
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 54
    .local v7, pt:Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 56
    .local v5, mt:Ljava/util/regex/Matcher;
    move-object/from16 v12, p1

    .line 57
    .local v12, tmpString:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 58
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, dString:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BaseSpan find:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 61
    .local v11, start:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BaseSpan start:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " find:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " tmpStr:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 62
    const-string v13, "\\|\\|"

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, keys:[Ljava/lang/String;
    const-string v6, ""

    .line 64
    .local v6, name:Ljava/lang/String;
    array-length v13, v3

    const/4 v14, 0x1

    if-lt v13, v14, :cond_1

    .line 65
    const/4 v13, 0x0

    aget-object v13, v3, v13

    const-string v14, "{"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "}"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 68
    :cond_1
    array-length v13, v3

    const/4 v14, 0x2

    if-lt v13, v14, :cond_2

    .line 69
    const/4 v13, 0x1

    aget-object v13, v3, v13

    const-string v14, "{"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "}"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/didi/common/richtextview/BaseSpan;->setLink(Ljava/lang/String;)V

    .line 72
    :cond_2
    array-length v13, v3

    const/4 v14, 0x3

    if-lt v13, v14, :cond_3

    .line 73
    const/4 v13, 0x2

    aget-object v13, v3, v13

    const-string v14, "{"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "}"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/didi/common/richtextview/BaseSpan;->setTitle(Ljava/lang/String;)V

    .line 76
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BaseSpan name new :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/richtextview/BaseSpan;->getLink()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " title:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/richtextview/BaseSpan;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 78
    :try_start_0
    invoke-virtual {v5, v9, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    invoke-virtual {v12, v8, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 84
    new-instance v10, Lcom/didi/common/richtextview/Span;

    invoke-direct {v10}, Lcom/didi/common/richtextview/Span;-><init>()V

    .line 85
    .local v10, span:Lcom/didi/common/richtextview/Span;
    iput v11, v10, Lcom/didi/common/richtextview/Span;->spanStart:I

    .line 86
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v11

    iput v13, v10, Lcom/didi/common/richtextview/Span;->spanEnd:I

    .line 87
    iput-object v6, v10, Lcom/didi/common/richtextview/Span;->key:Ljava/lang/String;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/richtextview/BaseSpan;->getLink()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/didi/common/richtextview/Span;->link:Ljava/lang/String;

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/richtextview/BaseSpan;->getTitle()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/didi/common/richtextview/Span;->title:Ljava/lang/String;

    .line 90
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    .end local v10           #span:Lcom/didi/common/richtextview/Span;
    :catch_0
    move-exception v2

    .line 80
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v1           #dString:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v3           #keys:[Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v11           #start:I
    :cond_4
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 93
    new-instance v10, Lcom/didi/common/richtextview/Span;

    invoke-direct {v10}, Lcom/didi/common/richtextview/Span;-><init>()V

    .line 94
    .restart local v10       #span:Lcom/didi/common/richtextview/Span;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/didi/common/richtextview/Span;->source:Ljava/lang/String;

    .line 95
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    return-object v4
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/common/richtextview/BaseSpan;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected keywordNoDisplay(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/common/richtextview/Span;
    .locals 6
    .parameter "s"
    .parameter "keywords"

    .prologue
    .line 107
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 108
    .local v3, result:Ljava/lang/StringBuffer;
    const-string v2, "(\\u007B)(.*?)(\\u007D)"

    .line 109
    .local v2, regex:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 110
    .local v1, pt:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 112
    .local v0, mt:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 116
    new-instance v4, Lcom/didi/common/richtextview/Span;

    invoke-direct {v4}, Lcom/didi/common/richtextview/Span;-><init>()V

    .line 117
    .local v4, span:Lcom/didi/common/richtextview/Span;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/didi/common/richtextview/Span;->source:Ljava/lang/String;

    .line 118
    return-object v4
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/didi/common/richtextview/BaseSpan;->link:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/didi/common/richtextview/BaseSpan;->title:Ljava/lang/String;

    .line 35
    return-void
.end method
