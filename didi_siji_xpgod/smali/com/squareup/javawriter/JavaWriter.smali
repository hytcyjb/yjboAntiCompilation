.class public Lcom/squareup/javawriter/JavaWriter;
.super Ljava/lang/Object;
.source "JavaWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javawriter/JavaWriter$Scope;
    }
.end annotation


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "

.field private static final MAX_SINGLE_LINE_ATTRIBUTES:I = 0x3

.field private static final METHOD_SCOPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/squareup/javawriter/JavaWriter$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final importedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indent:Ljava/lang/String;

.field private isCompressingTypes:Z

.field private final out:Ljava/io/Writer;

.field private packagePrefix:Ljava/lang/String;

.field private final scopes:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/squareup/javawriter/JavaWriter$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "(?:[\\w$]+\\.)*([\\w\\.*$]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 837
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v3, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/squareup/javawriter/JavaWriter;->METHOD_SCOPES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    .line 39
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/javawriter/JavaWriter;->isCompressingTypes:Z

    .line 42
    const-string v0, "  "

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    .line 49
    return-void
.end method

.method private checkInMethod()V
    .locals 2

    .prologue
    .line 841
    sget-object v0, Lcom/squareup/javawriter/JavaWriter;->METHOD_SCOPES:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 844
    :cond_0
    return-void
.end method

.method private containsArray(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, values:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 615
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 616
    const/4 v1, 0x1

    .line 619
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 627
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x1

    .line 630
    .local v0, firstValue:Z
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v4, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v2, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 631
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p1, v2

    .line 632
    .local v1, o:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 634
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 638
    :goto_1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 639
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    :cond_0
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 641
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v4, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 642
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 644
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 648
    .end local v0           #firstValue:Z
    :goto_2
    return-object p0

    .line 646
    .restart local p1
    :cond_2
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/squareup/javawriter/JavaWriter;->isCompressingTypes:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-object p0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private emitLastEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 492
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 494
    return-object p0
.end method

.method private emitModifiers(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    .local p1, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    :cond_0
    return-void

    .line 817
    :cond_1
    instance-of v1, p1, Ljava/util/EnumSet;

    if-nez v1, :cond_2

    .line 818
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 820
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    .line 821
    .local v0, modifier:Ljavax/lang/model/element/Modifier;
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljavax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_0
.end method

.method private hangingIndent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 833
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 835
    :cond_0
    return-void
.end method

.method private indent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 827
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 826
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    :cond_0
    return-void
.end method

.method private isAmbiguous(Ljava/lang/String;)Z
    .locals 1
    .parameter "compressed"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isClassInPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "packagePrefix"

    .prologue
    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const/16 v1, 0x2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V
    .locals 2
    .parameter "expected"

    .prologue
    .line 847
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 850
    :cond_0
    return-void
.end method

.method public static rawType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 800
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 801
    .local v0, lessThanIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 802
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 804
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static stringLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    const/16 v7, 0x22

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .local v2, result:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 743
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 744
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 767
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    :sswitch_0
    const-string v3, "\\\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 749
    :sswitch_1
    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 752
    :sswitch_2
    const-string v3, "\\b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 755
    :sswitch_3
    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 758
    :sswitch_4
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 761
    :sswitch_5
    const-string v3, "\\f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 764
    :sswitch_6
    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 770
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 774
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 744
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static varargs type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, raw:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v2, p1

    if-nez v2, :cond_0

    .line 781
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 795
    :goto_0
    return-object v2

    .line 783
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 784
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 786
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .local v1, result:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 791
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 794
    :cond_2
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public beginConstructor(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    .local p1, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    .local p2, parameters:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, throwsTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/javawriter/JavaWriter;->rawType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    .line 438
    return-object p0
.end method

.method public varargs beginConstructor(Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    .local p1, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/javawriter/JavaWriter;->rawType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 431
    return-object p0
.end method

.method public varargs beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "controlFlow"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->checkInMethod()V

    .line 675
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 676
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 679
    return-object p0
.end method

.method public beginInitializer(Z)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "isStatic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "static"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 243
    return-object p0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;
    .locals 5
    .parameter "returnType"
    .parameter "name"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    .local p3, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    .local p4, parameters:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, throwsTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 387
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 388
    if-eqz p1, :cond_1

    .line 389
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 390
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 395
    :goto_0
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 396
    if-eqz p4, :cond_2

    .line 397
    const/4 v1, 0x0

    .local v1, p:I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 398
    if-eqz v1, :cond_0

    .line 399
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 401
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #p:I
    .local v2, p:I
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 402
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    add-int/lit8 v1, v2, 0x1

    .end local v2           #p:I
    .restart local v1       #p:I
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 393
    .end local v1           #p:I
    :cond_1
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 406
    :cond_2
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 407
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 408
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 410
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, "    throws "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 412
    if-eqz v0, :cond_3

    .line 413
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    :cond_3
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 418
    .end local v0           #i:I
    :cond_4
    sget-object v3, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/squareup/javawriter/JavaWriter$Scope;->INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/javawriter/JavaWriter$Scope;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 419
    :cond_5
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v4, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 425
    :goto_3
    return-object p0

    .line 422
    :cond_6
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, " {\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    if-nez p1, :cond_7

    sget-object v3, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    :goto_4
    invoke-interface {v4, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    goto :goto_4
.end method

.method public varargs beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .parameter "returnType"
    .parameter "name"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    .local p3, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .parameter "type"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .parameter "type"
    .parameter "kind"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    .local p3, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .parameter "type"
    .parameter "kind"
    .parameter
    .parameter "extendsType"
    .parameter "implementsTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    .local p3, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 282
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 283
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 286
    if-eqz p4, :cond_0

    .line 287
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p4}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 290
    :cond_0
    array-length v1, p5

    if-lez v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 293
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "    implements "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_2

    .line 295
    if-eqz v0, :cond_1

    .line 296
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 298
    :cond_1
    aget-object v1, p5, v0

    invoke-direct {p0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    const-string v1, "interface"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    :goto_1
    invoke-interface {v2, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 304
    return-object p0

    .line 302
    :cond_3
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    goto :goto_1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 809
    return-void
.end method

.method public compressType(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "type"

    .prologue
    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 169
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 172
    :cond_0
    sget-object v8, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 173
    .local v3, m:Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 175
    .local v5, pos:I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    .line 178
    .local v1, found:Z
    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 179
    .local v7, typeStart:I
    :goto_1
    invoke-virtual {v6, p1, v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 181
    if-nez v1, :cond_2

    .line 204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 178
    .end local v7           #typeStart:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_1

    .line 186
    .restart local v7       #typeStart:I
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, imported:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 203
    goto :goto_0

    .line 190
    :cond_3
    iget-object v8, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/squareup/javawriter/JavaWriter;->isClassInPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 191
    iget-object v8, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, compressed:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->isAmbiguous(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 193
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 195
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 197
    .end local v0           #compressed:Ljava/lang/String;
    :cond_5
    const-string v8, "java.lang."

    invoke-static {v4, v8}, Lcom/squareup/javawriter/JavaWriter;->isClassInPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 198
    const-string v8, "java.lang."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 200
    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public emitAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public emitAnnotation(Ljava/lang/Class;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p2, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public emitAnnotation(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .parameter "annotation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "annotation"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 544
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 546
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 548
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 550
    return-object p0
.end method

.method public emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;
    .locals 10
    .parameter "annotation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 568
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 569
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v8, "@"

    invoke-virtual {v5, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 571
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 585
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v8, 0x3

    if-gt v5, v8, :cond_0

    .line 586
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/javawriter/JavaWriter;->containsArray(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v3, v7

    .line 587
    .local v3, split:Z
    :goto_0
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v8, "("

    invoke-virtual {v5, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 588
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v8, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v5, v8}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 589
    if-eqz v3, :cond_4

    const-string v2, "\n"

    .line 590
    .local v2, separator:Ljava/lang/String;
    :goto_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 591
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 592
    if-eqz v3, :cond_5

    const-string v2, ",\n"

    .line 593
    :goto_3
    if-eqz v3, :cond_1

    .line 594
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 596
    :cond_1
    iget-object v9, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 597
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v9, " = "

    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 598
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 599
    .local v4, value:Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_2

    .line 575
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2           #separator:Ljava/lang/String;
    .end local v3           #split:Z
    .end local v4           #value:Ljava/lang/Object;
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 576
    .local v1, onlyEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 577
    const-string v5, "value"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 578
    iget-object v6, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 579
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 581
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 582
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 609
    .end local v1           #onlyEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :goto_4
    :pswitch_1
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 610
    return-object p0

    :cond_3
    move v3, v6

    .line 586
    goto/16 :goto_0

    .line 589
    .restart local v3       #split:Z
    :cond_4
    const-string v2, ""

    goto/16 :goto_1

    .line 592
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v2       #separator:Ljava/lang/String;
    :cond_5
    const-string v2, ", "

    goto :goto_3

    .line 601
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_6
    new-array v5, v7, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v7, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v7, v5, v6

    invoke-direct {p0, v5}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 602
    if-eqz v3, :cond_7

    .line 603
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 606
    :cond_7
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 472
    return-object p0
.end method

.method public emitEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 477
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 479
    return-object p0
.end method

.method public emitEnumValue(Ljava/lang/String;Z)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .parameter "name"
    .parameter "isLast"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitLastEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public emitEnumValues(Ljava/lang/Iterable;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    .local p1, names:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 501
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 503
    .local v1, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-virtual {p0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 506
    :cond_0
    invoke-direct {p0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitLastEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 510
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .parameter "type"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    .local p3, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .parameter "type"
    .parameter "name"
    .parameter
    .parameter "initialValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    .local p3, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 331
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 333
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 336
    if-eqz p4, :cond_1

    .line 337
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, " ="

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 338
    const-string v2, "\n"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 342
    :cond_0
    const-string v2, "\n"

    const/4 v3, -0x1

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, lines:[Ljava/lang/String;
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->hangingIndent()V

    .line 347
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    .end local v0           #i:I
    .end local v1           #lines:[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 351
    return-object p0
.end method

.method public emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    .local p1, types:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, type:Ljava/lang/String;
    sget-object v3, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, "import "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #type:Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public varargs emitImports([Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    .local p1, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v0, classNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 98
    .local v1, classToImport:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v1           #classToImport:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v2

    return-object v2
.end method

.method public varargs emitImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .parameter "javadoc"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, formatted:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 446
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "/**\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 447
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 448
    .local v1, line:Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 449
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, " *"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 451
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 452
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    :cond_0
    iget-object v5, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v1           #line:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 457
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, " */\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    return-object p0
.end method

.method public emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    .line 80
    :goto_0
    return-object p0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public varargs emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .parameter "comment"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 464
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    return-object p0
.end method

.method public varargs emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 5
    .parameter "pattern"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->checkInMethod()V

    .line 657
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, lines:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 659
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->hangingIndent()V

    .line 663
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 666
    return-object p0
.end method

.method public emitStaticImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    .local p1, types:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, type:Ljava/lang/String;
    sget-object v3, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 138
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, "import static "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #type:Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public varargs emitStaticImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->emitStaticImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public endConstructor()Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v1, 0x0

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 733
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 734
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 735
    return-object p0
.end method

.method public endControlFlow()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .parameter "controlFlow"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v1, 0x0

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 706
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 707
    if-eqz p1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 714
    :goto_0
    return-object p0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endInitializer()Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v1, 0x0

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 249
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 250
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 251
    return-object p0
.end method

.method public endMethod()Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 721
    .local v0, popped:Lcom/squareup/javawriter/JavaWriter$Scope;
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-ne v0, v1, :cond_2

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 723
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 727
    :cond_1
    return-object p0

    .line 724
    :cond_2
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-eq v0, v1, :cond_1

    .line 725
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public endType()Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v1, 0x0

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 310
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 311
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 312
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 313
    return-object p0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressingTypes()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/squareup/javawriter/JavaWriter;->isCompressingTypes:Z

    return v0
.end method

.method public varargs nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .parameter "controlFlow"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v1, 0x0

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 688
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 689
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 693
    return-object p0
.end method

.method public setCompressingTypes(Z)V
    .locals 0
    .parameter "isCompressingTypes"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/squareup/javawriter/JavaWriter;->isCompressingTypes:Z

    .line 53
    return-void
.end method

.method public setIndent(Ljava/lang/String;)V
    .locals 0
    .parameter "indent"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    .line 61
    return-void
.end method
