.class public final Lcom/squareup/protoparser/ProtoSchemaParser;
.super Ljava/lang/Object;
.source "ProtoSchemaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/protoparser/ProtoSchemaParser$Context;
    }
.end annotation


# instance fields
.field private final data:[C

.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extendDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/ExtendDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private line:I

.field private lineStart:I

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private pos:I

.field private prefix:Ljava/lang/String;

.field private final publicDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .parameter "fileName"
    .parameter "data"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->dependencies:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->publicDependencies:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->types:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->services:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->extendDeclarations:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->options:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->fileName:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    .line 87
    return-void
.end method

.method private addToList(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 442
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 446
    :goto_0
    return-void

    .line 444
    .restart local p2
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private column()I
    .locals 2

    .prologue
    .line 734
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static fileToCharArray(Ljava/io/File;)[C
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v0, is:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->streamToCharArray(Ljava/io/InputStream;)[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
.end method

.method private hexDigit(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 582
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x30

    .line 585
    :goto_0
    return v0

    .line 583
    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x66

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 584
    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x46

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 585
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private line()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->line:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private newline()V
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->line:I

    .line 730
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->lineStart:I

    .line 731
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/squareup/protoparser/ProtoFile;
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->fileToCharArray(Ljava/io/File;)[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;-><init>(Ljava/lang/String;[C)V

    invoke-virtual {v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readProtoFile()Lcom/squareup/protoparser/ProtoFile;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;)Lcom/squareup/protoparser/ProtoFile;
    .locals 2
    .parameter "name"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser;

    invoke-static {p1}, Lcom/squareup/protoparser/ProtoSchemaParser;->readerToCharArray(Ljava/io/Reader;)[C

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/protoparser/ProtoSchemaParser;-><init>(Ljava/lang/String;[C)V

    invoke-virtual {v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readProtoFile()Lcom/squareup/protoparser/ProtoFile;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/protoparser/ProtoFile;
    .locals 2
    .parameter "name"
    .parameter "data"

    .prologue
    .line 42
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/protoparser/ProtoSchemaParser;-><init>(Ljava/lang/String;[C)V

    invoke-virtual {v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readProtoFile()Lcom/squareup/protoparser/ProtoFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseUtf8(Ljava/lang/String;Ljava/io/InputStream;)Lcom/squareup/protoparser/ProtoFile;
    .locals 2
    .parameter "name"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser;

    invoke-static {p1}, Lcom/squareup/protoparser/ProtoSchemaParser;->streamToCharArray(Ljava/io/InputStream;)[C

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/protoparser/ProtoSchemaParser;-><init>(Ljava/lang/String;[C)V

    invoke-virtual {v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readProtoFile()Lcom/squareup/protoparser/ProtoFile;

    move-result-object v0

    return-object v0
.end method

.method private peekChar()C
    .locals 2

    .prologue
    .line 518
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->skipWhitespace(Z)V

    .line 519
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const-string v0, "unexpected end of file"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v0, v0, v1

    return v0
.end method

.method private readChar()C
    .locals 2

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    .line 509
    .local v0, result:C
    iget v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 510
    return v0
.end method

.method private readComment()Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0x2f

    const/16 v9, 0x2a

    const/16 v8, 0xa

    .line 661
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v6, v6

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v5, v5, v6

    if-eq v5, v10, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 662
    :cond_1
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 663
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v1, v5, v6

    .line 664
    .local v1, commentType:I
    :goto_0
    if-ne v1, v9, :cond_a

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v2, result:Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 668
    .local v4, startOfLine:Z
    :goto_1
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v6, v6

    if-ge v5, v6, :cond_9

    .line 669
    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v0, v5, v6

    .line 670
    .local v0, c:C
    if-ne v0, v9, :cond_3

    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    aget-char v5, v5, v6

    if-ne v5, v10, :cond_3

    .line 671
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 672
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 703
    .end local v0           #c:C
    .end local v2           #result:Ljava/lang/StringBuilder;
    .end local v4           #startOfLine:Z
    :goto_2
    return-object v5

    .line 663
    .end local v1           #commentType:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 674
    .restart local v0       #c:C
    .restart local v1       #commentType:I
    .restart local v2       #result:Ljava/lang/StringBuilder;
    .restart local v4       #startOfLine:Z
    :cond_3
    if-ne v0, v8, :cond_5

    .line 675
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->newline()V

    .line 677
    const/4 v4, 0x1

    .line 668
    :cond_4
    :goto_3
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    goto :goto_1

    .line 678
    :cond_5
    if-nez v4, :cond_6

    .line 679
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 680
    :cond_6
    if-ne v0, v9, :cond_8

    .line 681
    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    aget-char v5, v5, v6

    if-ne v5, v11, :cond_7

    .line 682
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 684
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 685
    :cond_8
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 686
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    const/4 v4, 0x0

    goto :goto_3

    .line 690
    .end local v0           #c:C
    :cond_9
    const-string v5, "unterminated comment"

    invoke-direct {p0, v5}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 691
    .end local v2           #result:Ljava/lang/StringBuilder;
    .end local v4           #startOfLine:Z
    :cond_a
    if-ne v1, v10, :cond_e

    .line 692
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v6, v6

    if-ge v5, v6, :cond_b

    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v5, v5, v6

    if-ne v5, v11, :cond_b

    .line 693
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 695
    :cond_b
    iget v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 696
    .local v3, start:I
    :cond_c
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v6, v6

    if-ge v5, v6, :cond_d

    .line 697
    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v0, v5, v6

    .line 698
    .restart local v0       #c:C
    if-ne v0, v8, :cond_c

    .line 699
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->newline()V

    .line 703
    .end local v0           #c:C
    :cond_d
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v7, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v3

    invoke-direct {v5, v6, v3, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 705
    .end local v3           #start:I
    :cond_e
    const-string v5, "unexpected \'/\'"

    invoke-direct {p0, v5}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method private readDeclaration(Ljava/lang/String;Lcom/squareup/protoparser/ProtoSchemaParser$Context;)Ljava/lang/Object;
    .locals 10
    .parameter "documentation"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x3d

    const/16 v8, 0x3b

    .line 134
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v6

    if-ne v6, v8, :cond_1

    .line 135
    iget v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 198
    :cond_0
    :goto_0
    return-object v4

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, label:Ljava/lang/String;
    const-string v6, "package"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    invoke-virtual {p2}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->permitsPackage()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 143
    :cond_2
    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string v6, "too many package names"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 144
    :cond_3
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->packageName:Ljava/lang/String;

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v6

    if-eq v6, v8, :cond_0

    const-string v6, "expected \';\'"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 148
    :cond_4
    const-string v6, "import"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 149
    invoke-virtual {p2}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->permitsImport()Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "import in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 150
    :cond_5
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, importString:Ljava/lang/String;
    const-string v6, "public"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 152
    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->publicDependencies:Ljava/util/List;

    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_1
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v6

    if-eq v6, v8, :cond_0

    const-string v6, "expected \';\'"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 154
    :cond_6
    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->dependencies:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v1           #importString:Ljava/lang/String;
    :cond_7
    const-string v6, "option"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 159
    invoke-direct {p0, v9}, Lcom/squareup/protoparser/ProtoSchemaParser;->readOption(C)Lcom/squareup/protoparser/Option;

    move-result-object v4

    .line 160
    .local v4, result:Lcom/squareup/protoparser/Option;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v6

    if-eq v6, v8, :cond_0

    const-string v6, "expected \';\'"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 162
    .end local v4           #result:Lcom/squareup/protoparser/Option;
    :cond_8
    const-string v6, "message"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 163
    invoke-direct {p0, p1}, Lcom/squareup/protoparser/ProtoSchemaParser;->readMessage(Ljava/lang/String;)Lcom/squareup/protoparser/MessageType;

    move-result-object v4

    goto/16 :goto_0

    .line 164
    :cond_9
    const-string v6, "enum"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 165
    invoke-direct {p0, p1}, Lcom/squareup/protoparser/ProtoSchemaParser;->readEnumType(Ljava/lang/String;)Lcom/squareup/protoparser/EnumType;

    move-result-object v4

    goto/16 :goto_0

    .line 166
    :cond_a
    const-string v6, "service"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 167
    invoke-direct {p0, p1}, Lcom/squareup/protoparser/ProtoSchemaParser;->readService(Ljava/lang/String;)Lcom/squareup/protoparser/Service;

    move-result-object v4

    goto/16 :goto_0

    .line 168
    :cond_b
    const-string v6, "extend"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 169
    invoke-direct {p0, p1}, Lcom/squareup/protoparser/ProtoSchemaParser;->readExtend(Ljava/lang/String;)Lcom/squareup/protoparser/ExtendDeclaration;

    move-result-object v4

    goto/16 :goto_0

    .line 170
    :cond_c
    const-string v6, "rpc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 171
    invoke-virtual {p2}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->permitsRpc()Z

    move-result v6

    if-nez v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rpc in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 172
    :cond_d
    invoke-direct {p0, p1}, Lcom/squareup/protoparser/ProtoSchemaParser;->readRpc(Ljava/lang/String;)Lcom/squareup/protoparser/Service$Method;

    move-result-object v4

    goto/16 :goto_0

    .line 173
    :cond_e
    const-string v6, "required"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "optional"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "repeated"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 174
    :cond_f
    invoke-virtual {p2}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->permitsField()Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "fields must be nested"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 175
    :cond_10
    invoke-direct {p0, p1, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->readField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/protoparser/MessageType$Field;

    move-result-object v4

    goto/16 :goto_0

    .line 176
    :cond_11
    const-string v6, "extensions"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 177
    invoke-virtual {p2}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->permitsExtensions()Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "extensions must be nested"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 178
    :cond_12
    invoke-direct {p0, p1}, Lcom/squareup/protoparser/ProtoSchemaParser;->readExtensions(Ljava/lang/String;)Lcom/squareup/protoparser/Extensions;

    move-result-object v4

    goto/16 :goto_0

    .line 179
    :cond_13
    sget-object v6, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->ENUM:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    if-ne p2, v6, :cond_19

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v3, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v6

    if-eq v6, v9, :cond_14

    const-string v6, "expected \'=\'"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 183
    :cond_14
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readInt()I

    move-result v5

    .line 184
    .local v5, tag:I
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_16

    .line 185
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    .line 187
    :cond_15
    invoke-direct {p0, v9}, Lcom/squareup/protoparser/ProtoSchemaParser;->readOption(C)Lcom/squareup/protoparser/Option;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    .line 189
    .local v0, c:C
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_17

    .line 197
    .end local v0           #c:C
    :cond_16
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v6

    if-eq v6, v8, :cond_18

    const-string v6, "expected \';\'"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 192
    .restart local v0       #c:C
    :cond_17
    const/16 v6, 0x2c

    if-eq v0, v6, :cond_15

    .line 193
    const-string v6, "Expected \',\' or \']"

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 198
    .end local v0           #c:C
    :cond_18
    new-instance v4, Lcom/squareup/protoparser/EnumType$Value;

    invoke-direct {v4, v2, v5, p1, v3}, Lcom/squareup/protoparser/EnumType$Value;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 200
    .end local v3           #options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    .end local v5           #tag:I
    :cond_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected label: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method private readDocumentation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 648
    const/4 v1, 0x0

    .line 650
    .local v1, result:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->skipWhitespace(Z)V

    .line 651
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v3, v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v2, v2, v3

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    .line 652
    :cond_0
    if-eqz v1, :cond_1

    .end local v1           #result:Ljava/lang/String;
    :goto_1
    return-object v1

    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 654
    :cond_2
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readComment()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, comment:Ljava/lang/String;
    if-nez v1, :cond_3

    move-object v1, v0

    .line 656
    :goto_2
    goto :goto_0

    .line 655
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private readEnumType(Ljava/lang/String;)Lcom/squareup/protoparser/EnumType;
    .locals 8
    .parameter "documentation"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, name:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v4, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v5, values:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/EnumType$Value;>;"
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1

    const-string v0, "expected \'{\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 296
    .local v7, valueDocumentation:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->ENUM:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    invoke-direct {p0, v7, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDeclaration(Ljava/lang/String;Lcom/squareup/protoparser/ProtoSchemaParser$Context;)Ljava/lang/Object;

    move-result-object v6

    .line 297
    .local v6, declared:Ljava/lang/Object;
    instance-of v0, v6, Lcom/squareup/protoparser/EnumType$Value;

    if-eqz v0, :cond_2

    .line 298
    check-cast v6, Lcom/squareup/protoparser/EnumType$Value;

    .end local v6           #declared:Ljava/lang/Object;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v7           #valueDocumentation:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDocumentation()Ljava/lang/String;

    move-result-object v7

    .line 292
    .restart local v7       #valueDocumentation:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_0

    .line 293
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 303
    new-instance v0, Lcom/squareup/protoparser/EnumType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/protoparser/EnumType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 299
    .restart local v6       #declared:Ljava/lang/Object;
    :cond_2
    instance-of v0, v6, Lcom/squareup/protoparser/Option;

    if-eqz v0, :cond_1

    .line 300
    check-cast v6, Lcom/squareup/protoparser/Option;

    .end local v6           #declared:Ljava/lang/Object;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readExtend(Ljava/lang/String;)Lcom/squareup/protoparser/ExtendDeclaration;
    .locals 7
    .parameter "documentation"

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, name:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/MessageType$Field;>;"
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v5

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_1

    const-string v5, "expected \'{\'"

    invoke-direct {p0, v5}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 250
    .local v4, nestedDocumentation:Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->EXTEND:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    invoke-direct {p0, v4, v5}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDeclaration(Ljava/lang/String;Lcom/squareup/protoparser/ProtoSchemaParser$Context;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, declared:Ljava/lang/Object;
    instance-of v5, v0, Lcom/squareup/protoparser/MessageType$Field;

    if-eqz v5, :cond_1

    .line 252
    check-cast v0, Lcom/squareup/protoparser/MessageType$Field;

    .end local v0           #declared:Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v4           #nestedDocumentation:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDocumentation()Ljava/lang/String;

    move-result-object v4

    .line 246
    .restart local v4       #nestedDocumentation:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v5

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_0

    .line 247
    iget v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 255
    move-object v2, v3

    .line 256
    .local v2, fqname:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    :cond_2
    new-instance v5, Lcom/squareup/protoparser/ExtendDeclaration;

    invoke-direct {v5, v3, v2, p1, v1}, Lcom/squareup/protoparser/ExtendDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v5
.end method

.method private readExtensions(Ljava/lang/String;)Lcom/squareup/protoparser/Extensions;
    .locals 6
    .parameter "documentation"

    .prologue
    const/16 v5, 0x3b

    .line 338
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readInt()I

    move-result v2

    .line 339
    .local v2, start:I
    move v0, v2

    .line 340
    .local v0, end:I
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 341
    const-string v3, "to"

    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "expected \';\' or \'to\'"

    invoke-direct {p0, v3}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, s:Ljava/lang/String;
    const-string v3, "max"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    const v0, 0x1fffffff

    .line 349
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v3

    if-eq v3, v5, :cond_3

    const-string v3, "expected \';\'"

    invoke-direct {p0, v3}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 346
    .restart local v1       #s:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 350
    .end local v1           #s:Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/squareup/protoparser/Extensions;

    invoke-direct {v3, p1, v2, v0}, Lcom/squareup/protoparser/Extensions;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method

.method private readField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/protoparser/MessageType$Field;
    .locals 9
    .parameter "documentation"
    .parameter "label"

    .prologue
    const/16 v8, 0x3d

    .line 308
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/protoparser/MessageType$Label;->valueOf(Ljava/lang/String;)Lcom/squareup/protoparser/MessageType$Label;

    move-result-object v1

    .line 309
    .local v1, labelEnum:Lcom/squareup/protoparser/MessageType$Label;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, type:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    if-eq v0, v8, :cond_0

    const-string v0, "expected \'=\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readInt()I

    move-result v4

    .line 313
    .local v4, tag:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v6, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    const/16 v5, 0x5b

    if-ne v0, v5, :cond_2

    .line 316
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 318
    :cond_1
    :goto_0
    invoke-direct {p0, v8}, Lcom/squareup/protoparser/ProtoSchemaParser;->readOption(C)Lcom/squareup/protoparser/Option;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v7

    .line 322
    .local v7, c:C
    const/16 v0, 0x5d

    if-ne v7, v0, :cond_3

    .line 323
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 330
    .end local v7           #c:C
    :cond_2
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_4

    .line 331
    new-instance v0, Lcom/squareup/protoparser/MessageType$Field;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/squareup/protoparser/MessageType$Field;-><init>(Lcom/squareup/protoparser/MessageType$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 325
    .restart local v7       #c:C
    :cond_3
    const/16 v0, 0x2c

    if-ne v7, v0, :cond_1

    .line 326
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    goto :goto_0

    .line 333
    .end local v7           #c:C
    :cond_4
    const-string v0, "expected \';\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private readInt()I
    .locals 5

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, tag:Ljava/lang/String;
    const/16 v1, 0xa

    .line 632
    .local v1, radix:I
    :try_start_0
    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    const-string v3, "0x"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 634
    const/16 v1, 0x10

    .line 636
    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an integer but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private readList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 453
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 454
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 458
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 459
    return-object v1

    .line 462
    :cond_2
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    .line 465
    .local v0, c:C
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_3

    .line 466
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    goto :goto_0

    .line 467
    :cond_3
    if-eq v0, v4, :cond_1

    .line 468
    const-string v2, "expected \',\' or \']\'"

    invoke-direct {p0, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private readMap(CCC)Ljava/util/Map;
    .locals 10
    .parameter "openBrace"
    .parameter "closeBrace"
    .parameter "keyValueSeparator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CCC)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v8

    if-eq v8, p1, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 394
    :cond_0
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 396
    .local v5, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v8

    if-ne v8, p2, :cond_2

    .line 398
    iget v8, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 399
    return-object v5

    .line 402
    :cond_2
    invoke-direct {p0, p3}, Lcom/squareup/protoparser/ProtoSchemaParser;->readOption(C)Lcom/squareup/protoparser/Option;

    move-result-object v3

    .line 403
    .local v3, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v3}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 405
    .local v6, value:Ljava/lang/Object;
    instance-of v8, v6, Lcom/squareup/protoparser/Option;

    if-eqz v8, :cond_4

    .line 407
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 408
    .local v1, nested:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_3

    .line 409
    new-instance v1, Ljava/util/LinkedHashMap;

    .end local v1           #nested:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 410
    .restart local v1       #nested:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v7, v6

    .line 412
    check-cast v7, Lcom/squareup/protoparser/Option;

    .line 413
    .local v7, valueOption:Lcom/squareup/protoparser/Option;
    invoke-virtual {v7}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .end local v1           #nested:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #valueOption:Lcom/squareup/protoparser/Option;
    :goto_1
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v8

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_1

    .line 432
    iget v8, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    goto :goto_0

    .line 416
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 417
    .local v4, previous:Ljava/lang/Object;
    if-nez v4, :cond_5

    .line 418
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 419
    :cond_5
    instance-of v8, v4, Ljava/util/List;

    if-eqz v8, :cond_6

    .line 421
    check-cast v4, Ljava/util/List;

    .end local v4           #previous:Ljava/lang/Object;
    invoke-direct {p0, v4, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->addToList(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_1

    .line 423
    .restart local v4       #previous:Ljava/lang/Object;
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-direct {p0, v2, v6}, Lcom/squareup/protoparser/ProtoSchemaParser;->addToList(Ljava/util/List;Ljava/lang/Object;)V

    .line 426
    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private readMessage(Ljava/lang/String;)Lcom/squareup/protoparser/MessageType;
    .locals 11
    .parameter "documentation"

    .prologue
    .line 206
    iget-object v10, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    .line 207
    .local v10, previousPrefix:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, name:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    .line 209
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v4, fields:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/MessageType$Field;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v5, nestedTypes:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Type;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v6, extensions:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Extensions;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v7, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1

    const-string v0, "expected \'{\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 220
    .local v9, nestedDocumentation:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->MESSAGE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    invoke-direct {p0, v9, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDeclaration(Ljava/lang/String;Lcom/squareup/protoparser/ProtoSchemaParser$Context;)Ljava/lang/Object;

    move-result-object v8

    .line 221
    .local v8, declared:Ljava/lang/Object;
    instance-of v0, v8, Lcom/squareup/protoparser/MessageType$Field;

    if-eqz v0, :cond_2

    .line 222
    check-cast v8, Lcom/squareup/protoparser/MessageType$Field;

    .end local v8           #declared:Ljava/lang/Object;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v9           #nestedDocumentation:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDocumentation()Ljava/lang/String;

    move-result-object v9

    .line 216
    .restart local v9       #nestedDocumentation:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_0

    .line 217
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 234
    iput-object v10, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/squareup/protoparser/MessageType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/squareup/protoparser/MessageType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 223
    .restart local v8       #declared:Ljava/lang/Object;
    :cond_2
    instance-of v0, v8, Lcom/squareup/protoparser/Type;

    if-eqz v0, :cond_3

    .line 224
    check-cast v8, Lcom/squareup/protoparser/Type;

    .end local v8           #declared:Ljava/lang/Object;
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .restart local v8       #declared:Ljava/lang/Object;
    :cond_3
    instance-of v0, v8, Lcom/squareup/protoparser/Extensions;

    if-eqz v0, :cond_4

    .line 226
    check-cast v8, Lcom/squareup/protoparser/Extensions;

    .end local v8           #declared:Ljava/lang/Object;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .restart local v8       #declared:Ljava/lang/Object;
    :cond_4
    instance-of v0, v8, Lcom/squareup/protoparser/Option;

    if-eqz v0, :cond_5

    .line 228
    check-cast v8, Lcom/squareup/protoparser/Option;

    .end local v8           #declared:Ljava/lang/Object;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .restart local v8       #declared:Ljava/lang/Object;
    :cond_5
    instance-of v0, v8, Lcom/squareup/protoparser/ExtendDeclaration;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->extendDeclarations:Ljava/util/List;

    check-cast v8, Lcom/squareup/protoparser/ExtendDeclaration;

    .end local v8           #declared:Ljava/lang/Object;
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    .line 592
    .local v0, c:C
    const/16 v2, 0x28

    if-ne v0, v2, :cond_0

    .line 593
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 594
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, optionName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2

    const-string v2, "expected \')\'"

    invoke-direct {p0, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 596
    .end local v1           #optionName:Ljava/lang/String;
    :cond_0
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    .line 597
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 598
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v1

    .line 599
    .restart local v1       #optionName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v2

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_2

    const-string v2, "expected \']\'"

    invoke-direct {p0, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 601
    .end local v1           #optionName:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v1

    .line 603
    .restart local v1       #optionName:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private readNumericEscape(II)C
    .locals 5
    .parameter "radix"
    .parameter "len"

    .prologue
    .line 567
    const/4 v2, -0x1

    .line 568
    .local v2, value:I
    iget v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, endPos:I
    :goto_0
    iget v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    if-ge v3, v1, :cond_0

    .line 569
    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v4, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/squareup/protoparser/ProtoSchemaParser;->hexDigit(C)I

    move-result v0

    .line 570
    .local v0, digit:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-lt v0, p1, :cond_1

    .line 577
    .end local v0           #digit:I
    :cond_0
    if-gez v2, :cond_3

    const-string v3, "expected a digit after \\x or \\X"

    invoke-direct {p0, v3}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 571
    .restart local v0       #digit:I
    :cond_1
    if-gez v2, :cond_2

    .line 572
    move v2, v0

    .line 568
    :goto_1
    iget v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    goto :goto_0

    .line 574
    :cond_2
    mul-int v3, v2, p1

    add-int v2, v3, v0

    goto :goto_1

    .line 578
    .end local v0           #digit:I
    :cond_3
    int-to-char v3, v2

    return v3
.end method

.method private readOption(C)Lcom/squareup/protoparser/Option;
    .locals 7
    .parameter "keyValueSeparator"

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    .line 356
    .local v1, isExtension:Z
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    :cond_0
    const/4 v3, 0x0

    .line 361
    .local v3, subName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    .line 362
    .local v0, c:C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    .line 367
    :cond_1
    if-eq v0, p1, :cond_3

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in option"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 355
    .end local v0           #c:C
    .end local v1           #isExtension:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #subName:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 370
    .restart local v0       #c:C
    .restart local v1       #isExtension:Z
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #subName:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readValue()Ljava/lang/Object;

    move-result-object v4

    .line 371
    .local v4, value:Ljava/lang/Object;
    new-instance v6, Lcom/squareup/protoparser/Option;

    if-eqz v3, :cond_4

    new-instance v5, Lcom/squareup/protoparser/Option;

    invoke-direct {v5, v3, v4}, Lcom/squareup/protoparser/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v5

    .end local v4           #value:Ljava/lang/Object;
    :cond_4
    invoke-direct {v6, v2, v4}, Lcom/squareup/protoparser/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6
.end method

.method private readQuotedString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x22

    .line 530
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v2

    if-eq v2, v5, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 531
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .local v1, result:Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 533
    iget-object v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v0, v2, v3

    .line 534
    .local v0, c:C
    if-ne v0, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 536
    :cond_2
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_4

    .line 537
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v3, v3

    if-ne v2, v3, :cond_3

    const-string v2, "unexpected end of file"

    invoke-direct {p0, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 538
    :cond_3
    iget-object v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v0, v2, v3

    .line 539
    sparse-switch v0, :sswitch_data_0

    .line 560
    :cond_4
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->newline()V

    goto :goto_0

    .line 540
    :sswitch_0
    const/4 v0, 0x7

    goto :goto_1

    .line 541
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_1

    .line 542
    :sswitch_2
    const/16 v0, 0xc

    goto :goto_1

    .line 543
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_1

    .line 544
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_1

    .line 545
    :sswitch_5
    const/16 v0, 0x9

    goto :goto_1

    .line 546
    :sswitch_6
    const/16 v0, 0xb

    goto :goto_1

    .line 548
    :sswitch_7
    const/16 v2, 0x10

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/squareup/protoparser/ProtoSchemaParser;->readNumericEscape(II)C

    move-result v0

    .line 549
    goto :goto_1

    .line 551
    :sswitch_8
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 552
    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/squareup/protoparser/ProtoSchemaParser;->readNumericEscape(II)C

    move-result v0

    .line 553
    goto :goto_1

    .line 563
    .end local v0           #c:C
    :cond_5
    const-string v2, "unterminated string"

    invoke-direct {p0, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 539
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x58 -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
        0x78 -> :sswitch_7
    .end sparse-switch
.end method

.method private readRpc(Ljava/lang/String;)Lcom/squareup/protoparser/Service$Method;
    .locals 10
    .parameter "documentation"

    .prologue
    const/16 v9, 0x29

    const/16 v8, 0x28

    .line 475
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    if-eq v0, v8, :cond_0

    const-string v0, "expected \'(\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, requestType:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    if-eq v0, v9, :cond_1

    const-string v0, "expected \')\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v0

    const-string v2, "returns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "expected \'returns\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 483
    :cond_2
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    if-eq v0, v8, :cond_3

    const-string v0, "expected \'(\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 484
    :cond_3
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, responseType:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    if-eq v0, v9, :cond_4

    const-string v0, "expected \')\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 487
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v5, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_8

    .line 489
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 491
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDocumentation()Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, methodDocumentation:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_7

    .line 493
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 503
    .end local v7           #methodDocumentation:Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/squareup/protoparser/Service$Method;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/protoparser/Service$Method;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 496
    .restart local v7       #methodDocumentation:Ljava/lang/String;
    :cond_7
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->RPC:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    invoke-direct {p0, v7, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDeclaration(Ljava/lang/String;Lcom/squareup/protoparser/ProtoSchemaParser$Context;)Ljava/lang/Object;

    move-result-object v6

    .line 497
    .local v6, declared:Ljava/lang/Object;
    instance-of v0, v6, Lcom/squareup/protoparser/Option;

    if-eqz v0, :cond_5

    .line 498
    check-cast v6, Lcom/squareup/protoparser/Option;

    .end local v6           #declared:Ljava/lang/Object;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 501
    .end local v7           #methodDocumentation:Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_6

    const-string v0, "expected \';\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private readService(Ljava/lang/String;)Lcom/squareup/protoparser/Service;
    .locals 8
    .parameter "documentation"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, name:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v4, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v5, methods:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Service$Method;>;"
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readChar()C

    move-result v0

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1

    const-string v0, "expected \'{\'"

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 274
    .local v7, methodDocumentation:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->SERVICE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    invoke-direct {p0, v7, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDeclaration(Ljava/lang/String;Lcom/squareup/protoparser/ProtoSchemaParser$Context;)Ljava/lang/Object;

    move-result-object v6

    .line 275
    .local v6, declared:Ljava/lang/Object;
    instance-of v0, v6, Lcom/squareup/protoparser/Service$Method;

    if-eqz v0, :cond_2

    .line 276
    check-cast v6, Lcom/squareup/protoparser/Service$Method;

    .end local v6           #declared:Ljava/lang/Object;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v7           #methodDocumentation:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDocumentation()Ljava/lang/String;

    move-result-object v7

    .line 270
    .restart local v7       #methodDocumentation:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_0

    .line 271
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 281
    new-instance v0, Lcom/squareup/protoparser/Service;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/protoparser/Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 277
    .restart local v6       #declared:Ljava/lang/Object;
    :cond_2
    instance-of v0, v6, Lcom/squareup/protoparser/Option;

    if-eqz v0, :cond_1

    .line 278
    check-cast v6, Lcom/squareup/protoparser/Option;

    .end local v6           #declared:Ljava/lang/Object;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 525
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->skipWhitespace(Z)V

    .line 526
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readWord()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->peekChar()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 382
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 378
    :sswitch_0
    const/16 v0, 0x7b

    const/16 v1, 0x7d

    const/16 v2, 0x3a

    invoke-direct {p0, v0, v1, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->readMap(CCC)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 380
    :sswitch_1
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private readWord()Ljava/lang/String;
    .locals 5

    .prologue
    .line 608
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->skipWhitespace(Z)V

    .line 609
    iget v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 610
    .local v1, start:I
    :goto_0
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 611
    iget-object v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v0, v2, v3

    .line 612
    .local v0, c:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_4

    .line 618
    :cond_3
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    goto :goto_0

    .line 623
    .end local v0           #c:C
    :cond_4
    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    if-ne v1, v2, :cond_5

    const-string v2, "expected a word"

    invoke-direct {p0, v2}, Lcom/squareup/protoparser/ProtoSchemaParser;->unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 624
    :cond_5
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v4, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static readerToCharArray(Ljava/io/Reader;)[C
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 104
    .local v2, writer:Ljava/io/CharArrayWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 106
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, count:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v3

    return-object v3
.end method

.method private skipWhitespace(Z)V
    .locals 4
    .parameter "skipComments"

    .prologue
    const/16 v3, 0xa

    .line 714
    :cond_0
    :goto_0
    iget v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 715
    iget-object v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    iget v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    aget-char v0, v1, v2

    .line 716
    .local v0, c:C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_2

    .line 717
    :cond_1
    iget v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    .line 718
    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->newline()V

    goto :goto_0

    .line 719
    :cond_2
    if-eqz p1, :cond_3

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 720
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readComment()Ljava/lang/String;

    goto :goto_0

    .line 725
    .end local v0           #c:C
    :cond_3
    return-void
.end method

.method private static streamToCharArray(Ljava/io/InputStream;)[C
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readerToCharArray(Ljava/io/Reader;)[C

    move-result-object v0

    return-object v0
.end method

.method private unexpected(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 5
    .parameter "message"

    .prologue
    .line 742
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Syntax error in %s at %d:%d: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->fileName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 743
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->line()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->column()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method readProtoFile()Lcom/squareup/protoparser/ProtoFile;
    .locals 11

    .prologue
    .line 114
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDocumentation()Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, documentation:Ljava/lang/String;
    iget v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->pos:I

    iget-object v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 116
    new-instance v0, Lcom/squareup/protoparser/ProtoFile;

    iget-object v1, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->dependencies:Ljava/util/List;

    iget-object v4, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->publicDependencies:Ljava/util/List;

    iget-object v5, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->types:Ljava/util/List;

    iget-object v6, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->services:Ljava/util/List;

    iget-object v7, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->options:Ljava/util/List;

    iget-object v8, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->extendDeclarations:Ljava/util/List;

    invoke-direct/range {v0 .. v8}, Lcom/squareup/protoparser/ProtoFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 119
    :cond_1
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->FILE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    invoke-direct {p0, v10, v0}, Lcom/squareup/protoparser/ProtoSchemaParser;->readDeclaration(Ljava/lang/String;Lcom/squareup/protoparser/ProtoSchemaParser$Context;)Ljava/lang/Object;

    move-result-object v9

    .line 120
    .local v9, declaration:Ljava/lang/Object;
    instance-of v0, v9, Lcom/squareup/protoparser/Type;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->types:Ljava/util/List;

    check-cast v9, Lcom/squareup/protoparser/Type;

    .end local v9           #declaration:Ljava/lang/Object;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .restart local v9       #declaration:Ljava/lang/Object;
    :cond_2
    instance-of v0, v9, Lcom/squareup/protoparser/Service;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->services:Ljava/util/List;

    check-cast v9, Lcom/squareup/protoparser/Service;

    .end local v9           #declaration:Ljava/lang/Object;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .restart local v9       #declaration:Ljava/lang/Object;
    :cond_3
    instance-of v0, v9, Lcom/squareup/protoparser/Option;

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->options:Ljava/util/List;

    check-cast v9, Lcom/squareup/protoparser/Option;

    .end local v9           #declaration:Ljava/lang/Object;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .restart local v9       #declaration:Ljava/lang/Object;
    :cond_4
    instance-of v0, v9, Lcom/squareup/protoparser/ExtendDeclaration;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/squareup/protoparser/ProtoSchemaParser;->extendDeclarations:Ljava/util/List;

    check-cast v9, Lcom/squareup/protoparser/ExtendDeclaration;

    .end local v9           #declaration:Ljava/lang/Object;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
