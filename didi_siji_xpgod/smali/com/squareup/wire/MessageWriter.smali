.class public Lcom/squareup/wire/MessageWriter;
.super Ljava/lang/Object;
.source "MessageWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    }
.end annotation


# static fields
.field private static final JAVA_KEYWORDS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final URL_CHARS:Ljava/lang/String; = "[-!#$%&\'()*+,./0-9:;=?@A-Z\\[\\]_a-z~]"


# instance fields
.field private final compiler:Lcom/squareup/wire/WireCompiler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x32

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "abstract"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "assert"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "boolean"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "break"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "byte"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "case"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "catch"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "char"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "class"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "const"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "continue"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "default"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "do"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "double"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "else"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "enum"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "extends"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "final"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "finally"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "float"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "for"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "goto"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "if"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "implements"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "import"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "instanceof"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "int"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "interface"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "long"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "native"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "new"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "package"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "private"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "protected"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "public"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "return"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "short"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "static"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "strictfp"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "super"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "switch"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "synchronized"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "this"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "throw"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "throws"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "transient"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "try"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "void"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "volatile"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "while"

    aput-object v3, v1, v2

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/squareup/wire/MessageWriter;->JAVA_KEYWORDS:Ljava/util/Set;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/WireCompiler;)V
    .locals 0
    .parameter "compiler"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 45
    return-void
.end method

.method private addEnumValueOptionInitializers(Lcom/squareup/protoparser/EnumType$Value;Ljava/util/List;Lcom/squareup/wire/OptionsMapMaker;Ljava/util/List;)V
    .locals 19
    .parameter "value"
    .parameter
    .parameter "mapMaker"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/EnumType$Value;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;",
            ">;",
            "Lcom/squareup/wire/OptionsMapMaker;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, optionInfo:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;>;"
    .local p4, initializers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/OptionsMapMaker;->createSingleEnumValueOptionMap(Lcom/squareup/protoparser/EnumType$Value;)Ljava/util/Map;

    move-result-object v10

    .line 206
    .local v10, enumValueOptionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/protoparser/EnumType$Value;->getOptions()Ljava/util/List;

    move-result-object v17

    .line 207
    .local v17, valueOptions:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;

    .line 208
    .local v15, option:Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    iget-object v2, v15, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/squareup/protoparser/Option;->findByName(Ljava/util/List;Ljava/lang/String;)Lcom/squareup/protoparser/Option;

    move-result-object v16

    .line 209
    .local v16, optionByName:Lcom/squareup/protoparser/Option;
    const/4 v13, 0x0

    .line 210
    .local v13, initializer:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 211
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 212
    .local v9, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 213
    .local v11, fqName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, v11}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v12

    .line 214
    .local v12, info:Lcom/squareup/wire/ExtensionInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v14

    .line 215
    .local v14, name:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    :cond_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    iget-object v6, v12, Lcom/squareup/wire/ExtensionInfo;->fqType:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Lcom/squareup/wire/OptionsMapMaker;->createOptionInitializer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v13

    .line 222
    .end local v9           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v11           #fqName:Ljava/lang/String;
    .end local v12           #info:Lcom/squareup/wire/ExtensionInfo;
    .end local v14           #name:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    .end local v13           #initializer:Ljava/lang/String;
    .end local v15           #option:Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    .end local v16           #optionByName:Lcom/squareup/protoparser/Option;
    :cond_3
    return-void
.end method

.method private varargs addThisIfOneOf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"
    .parameter "matches"

    .prologue
    .line 750
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 751
    .local v0, match:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 755
    .end local v0           #match:Ljava/lang/String;
    .end local p1
    :cond_0
    return-object p1

    .line 750
    .restart local v0       #match:Ljava/lang/String;
    .restart local p1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private emitAll(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;Ljava/util/Map;Z)V
    .locals 6
    .parameter "writer"
    .parameter "messageType"
    .parameter
    .parameter "topLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Lcom/squareup/protoparser/MessageType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    .local p3, optionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 246
    .local v3, modifiers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    if-nez p4, :cond_0

    .line 247
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getDocumentation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/wire/MessageWriter;->emitDocumentation(Lcom/squareup/javawriter/JavaWriter;Ljava/lang/String;)V

    .line 252
    const-string v2, "class"

    iget-object v0, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 253
    invoke-virtual {v0, p2}, Lcom/squareup/wire/WireCompiler;->hasExtensions(Lcom/squareup/protoparser/MessageType;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtendableMessage<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p1

    .line 252
    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 255
    invoke-direct {p0, p1, p3}, Lcom/squareup/wire/MessageWriter;->emitMessageOptions(Lcom/squareup/javawriter/JavaWriter;Ljava/util/Map;)V

    .line 256
    iget-object v0, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v0}, Lcom/squareup/wire/WireCompiler;->shouldEmitOptions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitMessageFieldOptions(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 259
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitMessageFieldDefaults(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitMessageFields(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitMessageFieldsConstructor(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitMessageBuilderConstructor(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitMessageEquals(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitMessageHashCode(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitBuilder(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 266
    return-void

    .line 253
    :cond_2
    const-string v4, "Message"

    goto :goto_0
.end method

.method private emitBuilder(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 6
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 625
    const-string v1, "Builder"

    const-string v2, "class"

    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v0, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 626
    invoke-virtual {v0, p2}, Lcom/squareup/wire/WireCompiler;->hasExtensions(Lcom/squareup/protoparser/MessageType;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtendableBuilder<"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p1

    .line 625
    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 629
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitBuilderFields(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 630
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitBuilderConstructors(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitBuilderSetters(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 632
    iget-object v0, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v0, p2}, Lcom/squareup/wire/WireCompiler;->hasExtensions(Lcom/squareup/protoparser/MessageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitBuilderSetExtension(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 633
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageWriter;->emitBuilderBuild(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V

    .line 634
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 635
    return-void

    .line 626
    :cond_1
    const-string v0, "Message.Builder<"

    goto :goto_0
.end method

.method private emitBuilderBuild(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 5
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 739
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 740
    const-class v0, Ljava/lang/Override;

    invoke-virtual {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 741
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "build"

    sget-object v2, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 742
    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageWriter;->hasRequiredFields(Lcom/squareup/protoparser/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string v0, "checkRequiredFields()"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 745
    :cond_0
    const-string v0, "return new %s(this)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 746
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 747
    return-void
.end method

.method private emitBuilderConstructors(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 9
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 661
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 662
    const-string v2, "Builder"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p1, v8, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 663
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 665
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 666
    const-string v2, "Builder"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "message"

    aput-object v5, v4, v7

    invoke-virtual {p1, v8, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 667
    const-string v2, "super(message)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 668
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v1

    .line 669
    .local v1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/MessageType$Field;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "if (message == null) return"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 670
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/protoparser/MessageType$Field;

    .line 671
    .local v0, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-static {v0}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    const-string v3, "this.%1$s = copyOf(message.%1$s)"

    new-array v4, v7, [Ljava/lang/Object;

    .line 673
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 672
    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 675
    :cond_1
    const-string v3, "this.%1$s = message.%1$s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 678
    .end local v0           #field:Lcom/squareup/protoparser/MessageType$Field;
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 679
    return-void
.end method

.method private emitBuilderFields(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 6
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v1

    .line 640
    .local v1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/MessageType$Field;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 641
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/protoparser/MessageType$Field;

    .line 642
    .local v0, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-direct {p0, p2, v0}, Lcom/squareup/wire/MessageWriter;->getJavaFieldType(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, javaName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 645
    .end local v0           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v2           #javaName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private emitBuilderSetExtension(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 7
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 718
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 719
    const-class v0, Ljava/lang/Override;

    invoke-virtual {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 720
    const-string v0, "<E> Builder"

    const-string v1, "setExtension"

    sget-object v2, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extension<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 721
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", E>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "extension"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "E"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "value"

    aput-object v5, v3, v4

    .line 720
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 722
    const-string v0, "super.setExtension(extension, value)"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 723
    const-string v0, "return this"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 724
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 725
    return-void
.end method

.method private emitBuilderSetters(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 11
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 682
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/protoparser/MessageType$Field;

    .line 683
    .local v6, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-direct {p0, p2, v6}, Lcom/squareup/wire/MessageWriter;->getJavaFieldType(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;

    move-result-object v7

    .line 684
    .local v7, javaName:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v4, args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-virtual {v6}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, sanitized:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 691
    invoke-virtual {v6}, Lcom/squareup/protoparser/MessageType$Field;->getDocumentation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/wire/MessageWriter;->emitDocumentation(Lcom/squareup/javawriter/JavaWriter;Ljava/lang/String;)V

    .line 693
    invoke-virtual {v6}, Lcom/squareup/protoparser/MessageType$Field;->isDeprecated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const-class v0, Ljava/lang/Deprecated;

    invoke-virtual {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 697
    :cond_0
    const-string v1, "Builder"

    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    .line 698
    invoke-static {v6}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    const-string v0, "this.%1$s = checkForNulls(%1$s)"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v2, v1, v9

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 703
    :goto_1
    const-string v0, "return this"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 704
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 701
    :cond_1
    const-string v0, "this.%1$s = %1$s"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v2, v1, v9

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 706
    .end local v2           #sanitized:Ljava/lang/String;
    .end local v4           #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v7           #javaName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static emitDocumentation(Lcom/squareup/javawriter/JavaWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "writer"
    .parameter "documentation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lcom/squareup/wire/MessageWriter;->hasDocumentation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/squareup/wire/MessageWriter;->sanitizeJavadoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 51
    :cond_0
    return-void
.end method

.method private emitEnumOptions(Lcom/squareup/javawriter/JavaWriter;Ljava/util/Map;)V
    .locals 16
    .parameter "writer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    .local p2, optionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p2, :cond_1

    .line 289
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v11, sb:Ljava/lang/StringBuilder;
    const-string v1, "new EnumOptions.Builder()"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 292
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 293
    .local v9, fqName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v1, v9}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v10

    .line 294
    .local v10, info:Lcom/squareup/wire/ExtensionInfo;
    const-string v13, "%n.setExtension(Ext_%s.%s, %s)"

    const/4 v1, 0x3

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v10, Lcom/squareup/wire/ExtensionInfo;->location:Ljava/lang/String;

    aput-object v2, v14, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 295
    invoke-virtual {v2, v9}, Lcom/squareup/wire/WireCompiler;->getTrailingSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 296
    invoke-virtual {v1}, Lcom/squareup/wire/WireCompiler;->getOptionsMapMaker()Lcom/squareup/wire/OptionsMapMaker;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    iget-object v5, v10, Lcom/squareup/wire/ExtensionInfo;->fqType:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/squareup/wire/OptionsMapMaker;->createOptionInitializer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v15

    .line 294
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 299
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v9           #fqName:Ljava/lang/String;
    .end local v10           #info:Lcom/squareup/wire/ExtensionInfo;
    :cond_0
    const-string v1, "\n.build()"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 301
    const-string v1, "EnumOptions"

    const-string v2, "ENUM_OPTIONS"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 302
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 304
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private emitFieldOptions(Lcom/squareup/javawriter/JavaWriter;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .parameter "writer"
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    .local p3, optionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p3, :cond_0

    .line 355
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v11, sb:Ljava/lang/StringBuilder;
    const-string v1, "new FieldOptions.Builder()"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 342
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 343
    .local v9, fqName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v1, v9}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v10

    .line 344
    .local v10, info:Lcom/squareup/wire/ExtensionInfo;
    if-nez v10, :cond_1

    .line 345
    new-instance v1, Lcom/squareup/wire/WireCompilerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No extension info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/wire/WireCompilerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_1
    const-string v13, "%n.setExtension(Ext_%s.%s, %s)"

    const/4 v1, 0x3

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v10, Lcom/squareup/wire/ExtensionInfo;->location:Ljava/lang/String;

    aput-object v2, v14, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 349
    invoke-virtual {v2, v9}, Lcom/squareup/wire/WireCompiler;->getTrailingSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v1}, Lcom/squareup/wire/WireCompiler;->getOptionsMapMaker()Lcom/squareup/wire/OptionsMapMaker;

    move-result-object v1

    .line 350
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    iget-object v5, v10, Lcom/squareup/wire/ExtensionInfo;->fqType:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/squareup/wire/OptionsMapMaker;->createOptionInitializer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v15

    .line 347
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 352
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v9           #fqName:Ljava/lang/String;
    .end local v10           #info:Lcom/squareup/wire/ExtensionInfo;
    :cond_2
    const-string v1, "\n.build()"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "FieldOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FIELD_OPTIONS_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    .line 354
    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_0
.end method

.method private emitMessageBuilderConstructor(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 9
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 495
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 496
    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Builder"

    aput-object v6, v5, v7

    const-string v6, "builder"

    aput-object v6, v5, v8

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v1, params:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/protoparser/MessageType$Field;

    .line 499
    .local v0, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 500
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_0
    const-string v3, "builder."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 505
    .end local v0           #field:Lcom/squareup/protoparser/MessageType$Field;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 506
    const-string v2, "this(%1$s)"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 508
    :cond_2
    const-string v2, "setBuilder(builder)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 509
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 510
    return-void
.end method

.method private emitMessageEquals(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 13
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 523
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 524
    const-class v5, Ljava/lang/Override;

    invoke-virtual {p1, v5}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 525
    const-string v5, "boolean"

    const-string v6, "equals"

    sget-object v7, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "Object"

    aput-object v9, v8, v10

    const-string v9, "other"

    aput-object v9, v8, v11

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 527
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v1

    .line 528
    .local v1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/MessageType$Field;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 529
    const-string v5, "return other instanceof %s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p1, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 556
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 557
    return-void

    .line 531
    :cond_0
    const-string v5, "if (other == this) return true"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 532
    const-string v5, "if (!(other instanceof %s)) return false"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p1, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 533
    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageWriter;->hasOnlyOneField(Lcom/squareup/protoparser/MessageType;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 534
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/protoparser/MessageType$Field;

    invoke-virtual {v5}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, name:Ljava/lang/String;
    const-string v5, "return equals(%1$s, ((%2$s) other).%3$s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "other"

    aput-object v8, v7, v10

    const-string v8, "o"

    aput-object v8, v7, v11

    .line 537
    invoke-direct {p0, v2, v7}, Lcom/squareup/wire/MessageWriter;->addThisIfOneOf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    aput-object v2, v6, v12

    .line 536
    invoke-virtual {p1, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 539
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    const-string v5, "%1$s o = (%1$s) other"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p1, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 540
    iget-object v5, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v5, p2}, Lcom/squareup/wire/WireCompiler;->hasExtensions(Lcom/squareup/protoparser/MessageType;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 541
    const-string v5, "if (!extensionsEqual(o)) return false"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 543
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v3, "return "

    .line 545
    .local v3, prefix:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/protoparser/MessageType$Field;

    .line 546
    .local v0, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v3, "\n&& "

    .line 549
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .restart local v2       #name:Ljava/lang/String;
    const-string v6, "equals(%1$s, o.%2$s)"

    new-array v7, v12, [Ljava/lang/Object;

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "other"

    aput-object v9, v8, v10

    const-string v9, "o"

    aput-object v9, v8, v11

    .line 551
    invoke-direct {p0, v2, v8}, Lcom/squareup/wire/MessageWriter;->addThisIfOneOf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v2, v7, v11

    .line 550
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 553
    .end local v0           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_0
.end method

.method private emitMessageFieldDefaults(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 9
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, defaultFields:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/MessageType$Field;>;"
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/protoparser/MessageType$Field;

    .line 366
    .local v2, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-direct {p0, p2, v2}, Lcom/squareup/wire/MessageWriter;->isMessageType(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    .end local v2           #field:Lcom/squareup/protoparser/MessageType$Field;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 372
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 375
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/protoparser/MessageType$Field;

    .line 376
    .restart local v2       #field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-direct {p0, p2, v2}, Lcom/squareup/wire/MessageWriter;->getJavaFieldType(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, javaName:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 378
    new-instance v4, Lcom/squareup/wire/WireCompilerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type for field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 379
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/squareup/wire/WireCompilerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 381
    :cond_4
    invoke-direct {p0, p2, v2}, Lcom/squareup/wire/MessageWriter;->getDefaultValue(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, defaultValue:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEFAULT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v8, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    .line 384
    invoke-static {v6, v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 383
    invoke-virtual {p1, v3, v5, v6, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 386
    .end local v1           #defaultValue:Ljava/lang/String;
    .end local v2           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v3           #javaName:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private emitMessageFieldOptions(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 10
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 310
    .local v2, fieldOptions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/squareup/protoparser/Option;>;>;"
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/MessageType$Field;

    .line 311
    .local v1, field:Lcom/squareup/protoparser/MessageType$Field;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/squareup/protoparser/MessageType$Field;->getOptions()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 312
    .local v6, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/squareup/protoparser/Option;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 314
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/protoparser/Option;

    invoke-virtual {v7}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, name:Ljava/lang/String;
    sget-object v7, Lcom/squareup/wire/WireCompiler;->DEFAULT_FIELD_OPTION_KEYS:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 316
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 319
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 320
    invoke-virtual {v1}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 324
    .end local v1           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/squareup/protoparser/Option;>;"
    .end local v6           #options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 325
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 328
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/squareup/protoparser/Option;>;>;"
    iget-object v7, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 330
    invoke-virtual {v7}, Lcom/squareup/wire/WireCompiler;->getOptionsMapMaker()Lcom/squareup/wire/OptionsMapMaker;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v9, p2, v7}, Lcom/squareup/wire/OptionsMapMaker;->createFieldOptionsMap(Lcom/squareup/protoparser/MessageType;Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 331
    .local v3, fieldOptionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v7, v3}, Lcom/squareup/wire/MessageWriter;->emitFieldOptions(Lcom/squareup/javawriter/JavaWriter;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 333
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/squareup/protoparser/Option;>;>;"
    .end local v3           #fieldOptionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_5
    return-void
.end method

.method private emitMessageFields(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 13
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/protoparser/MessageType$Field;

    .line 401
    .local v0, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getTag()I

    move-result v8

    .line 403
    .local v8, tag:I
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getType()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, fieldType:Ljava/lang/String;
    iget-object v9, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v9, p2, v1}, Lcom/squareup/wire/WireCompiler;->javaName(Lcom/squareup/protoparser/MessageType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, javaName:Ljava/lang/String;
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 406
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "tag"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const/4 v4, 0x0

    .line 409
    .local v4, isScalar:Z
    const/4 v3, 0x0

    .line 410
    .local v3, isEnum:Z
    invoke-static {v1}, Lcom/squareup/wire/TypeInfo;->isScalar(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 411
    const/4 v4, 0x1

    .line 412
    const-string v9, "type"

    invoke-direct {p0, v1}, Lcom/squareup/wire/MessageWriter;->scalarTypeConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/squareup/wire/FieldInfo;->isOptional(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 420
    invoke-static {v0, v3}, Lcom/squareup/wire/FieldInfo;->isPacked(Lcom/squareup/protoparser/MessageType$Field;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 421
    const-string v9, "label"

    const-string v11, "PACKED"

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v4, :cond_2

    .line 428
    if-eqz v3, :cond_a

    const-string v9, "enumType"

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".class"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_2
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->isDeprecated()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 432
    const-string v9, "deprecated"

    const-string v11, "true"

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_3
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getOptions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/protoparser/Option;

    .line 438
    .local v7, option:Lcom/squareup/protoparser/Option;
    iget-object v11, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v11, v7}, Lcom/squareup/wire/WireCompiler;->isRedacted(Lcom/squareup/protoparser/Option;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 439
    const-string v9, "redacted"

    const-string v11, "true"

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v7           #option:Lcom/squareup/protoparser/Option;
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 445
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getDocumentation()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/squareup/wire/MessageWriter;->emitDocumentation(Lcom/squareup/javawriter/JavaWriter;Ljava/lang/String;)V

    .line 446
    const-class v9, Lcom/squareup/wire/ProtoField;

    invoke-virtual {p1, v9, v6}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    .line 448
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->isDeprecated()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 449
    const-class v9, Ljava/lang/Deprecated;

    invoke-virtual {p1, v9}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 452
    :cond_6
    invoke-static {v0}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "List<"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ">"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 453
    :cond_7
    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v12, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v11, v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v11

    invoke-virtual {p1, v5, v9, v11}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_0

    .line 414
    :cond_8
    iget-object v9, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v9, p2, v1}, Lcom/squareup/wire/WireCompiler;->fullyQualifiedName(Lcom/squareup/protoparser/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, fullyQualifiedName:Ljava/lang/String;
    iget-object v9, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v9, v2}, Lcom/squareup/wire/WireCompiler;->isEnum(Ljava/lang/String;)Z

    move-result v3

    .line 416
    if-eqz v3, :cond_0

    const-string v9, "type"

    const-string v11, "ENUM"

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 423
    .end local v2           #fullyQualifiedName:Ljava/lang/String;
    :cond_9
    const-string v9, "label"

    invoke-virtual {v0}, Lcom/squareup/protoparser/MessageType$Field;->getLabel()Lcom/squareup/protoparser/MessageType$Label;

    move-result-object v11

    invoke-virtual {v11}, Lcom/squareup/protoparser/MessageType$Label;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 428
    :cond_a
    const-string v9, "messageType"

    goto/16 :goto_3

    .line 455
    .end local v0           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v1           #fieldType:Ljava/lang/String;
    .end local v3           #isEnum:Z
    .end local v4           #isScalar:Z
    .end local v5           #javaName:Ljava/lang/String;
    .end local v6           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #tag:I
    :cond_b
    return-void
.end method

.method private emitMessageFieldsConstructor(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 11
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 466
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v4, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/protoparser/MessageType$Field;

    .line 468
    .local v6, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-direct {p0, p2, v6}, Lcom/squareup/wire/MessageWriter;->getJavaFieldType(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, javaName:Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual {v6}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    .end local v6           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v7           #javaName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 474
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    .line 475
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/protoparser/MessageType$Field;

    .line 476
    .restart local v6       #field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-virtual {v6}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 477
    .local v8, sanitizedName:Ljava/lang/String;
    invoke-static {v6}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    const-string v1, "this.%1$s = immutableCopyOf(%1$s)"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v8, v2, v9

    invoke-virtual {p1, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 480
    :cond_1
    const-string v1, "this.%1$s = %1$s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v8, v2, v9

    invoke-virtual {p1, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 483
    .end local v6           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v8           #sanitizedName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 484
    return-void
.end method

.method private emitMessageHashCode(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;)V
    .locals 10
    .parameter "writer"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 576
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 577
    const-class v3, Ljava/lang/Override;

    invoke-virtual {p1, v3}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 578
    const-string v3, "int"

    const-string v4, "hashCode"

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 580
    iget-object v3, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, p2}, Lcom/squareup/wire/WireCompiler;->hasFields(Lcom/squareup/protoparser/Type;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, p2}, Lcom/squareup/wire/WireCompiler;->hasExtensions(Lcom/squareup/protoparser/MessageType;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    const-string v3, "return 0"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 616
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 617
    return-void

    .line 582
    :cond_0
    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageWriter;->hasOnlyOneField(Lcom/squareup/protoparser/MessageType;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/MessageType$Field;

    .line 584
    .local v1, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-virtual {v1}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, name:Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "result"

    aput-object v4, v3, v7

    invoke-direct {p0, v2, v3}, Lcom/squareup/wire/MessageWriter;->addThisIfOneOf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    const-string v3, "int result = hashCode"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 588
    const-string v3, "return result != 0 ? result : (hashCode = %1$s != null ? %1$s.hashCode() : %2$s)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v7

    .line 590
    invoke-direct {p0, v1}, Lcom/squareup/wire/MessageWriter;->nullHashValue(Lcom/squareup/protoparser/MessageType$Field;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 588
    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 592
    .end local v1           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    const-string v3, "int result = hashCode"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 593
    const-string v3, "if (result == 0)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, afterFirstAssignment:Z
    iget-object v3, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, p2}, Lcom/squareup/wire/WireCompiler;->hasExtensions(Lcom/squareup/protoparser/MessageType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 596
    const-string v3, "result = extensionsHashCode()"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 597
    const/4 v0, 0x1

    .line 599
    :cond_2
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/MessageType$Field;

    .line 600
    .restart local v1       #field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-virtual {v1}, Lcom/squareup/protoparser/MessageType$Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/squareup/wire/MessageWriter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 602
    .restart local v2       #name:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "result"

    aput-object v5, v4, v7

    invoke-direct {p0, v2, v4}, Lcom/squareup/wire/MessageWriter;->addThisIfOneOf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    if-eqz v0, :cond_3

    .line 604
    const-string v4, "result = result * 37 + (%1$s != null ? %1$s.hashCode() : %2$s)"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    .line 605
    invoke-direct {p0, v1}, Lcom/squareup/wire/MessageWriter;->nullHashValue(Lcom/squareup/protoparser/MessageType$Field;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 604
    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 607
    :cond_3
    const-string v4, "result = %1$s != null ? %1$s.hashCode() : %2$s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    .line 608
    invoke-direct {p0, v1}, Lcom/squareup/wire/MessageWriter;->nullHashValue(Lcom/squareup/protoparser/MessageType$Field;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 607
    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 609
    const/4 v0, 0x1

    goto :goto_1

    .line 612
    .end local v1           #field:Lcom/squareup/protoparser/MessageType$Field;
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    const-string v3, "hashCode = result"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 613
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endControlFlow()Lcom/squareup/javawriter/JavaWriter;

    .line 614
    const-string v3, "return result"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_0
.end method

.method private emitMessageOptions(Lcom/squareup/javawriter/JavaWriter;Ljava/util/Map;)V
    .locals 16
    .parameter "writer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    .local p2, optionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p2, :cond_1

    .line 270
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v11, sb:Ljava/lang/StringBuilder;
    const-string v1, "new MessageOptions.Builder()"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 273
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 274
    .local v9, fqName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v1, v9}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v10

    .line 275
    .local v10, info:Lcom/squareup/wire/ExtensionInfo;
    const-string v13, "%n.setExtension(Ext_%s.%s, %s)"

    const/4 v1, 0x3

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v10, Lcom/squareup/wire/ExtensionInfo;->location:Ljava/lang/String;

    aput-object v2, v14, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 276
    invoke-virtual {v2, v9}, Lcom/squareup/wire/WireCompiler;->getTrailingSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 277
    invoke-virtual {v1}, Lcom/squareup/wire/WireCompiler;->getOptionsMapMaker()Lcom/squareup/wire/OptionsMapMaker;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    iget-object v5, v10, Lcom/squareup/wire/ExtensionInfo;->fqType:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/squareup/wire/OptionsMapMaker;->createOptionInitializer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v15

    .line 275
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v9           #fqName:Ljava/lang/String;
    .end local v10           #info:Lcom/squareup/wire/ExtensionInfo;
    :cond_0
    const-string v1, "\n.build()"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 282
    const-string v1, "MessageOptions"

    const-string v2, "MESSAGE_OPTIONS"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 283
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 285
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private getDefaultValue(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;
    .locals 6
    .parameter "messageType"
    .parameter "field"

    .prologue
    .line 759
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType$Field;->getDefault()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, initialValue:Ljava/lang/String;
    invoke-static {p2}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Collections.emptyList()"

    .line 770
    :goto_0
    return-object v3

    .line 761
    :cond_0
    iget-object v3, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType$Field;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/squareup/wire/WireCompiler;->javaName(Lcom/squareup/protoparser/MessageType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, javaName:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType$Field;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/wire/TypeInfo;->isScalar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    iget-object v3, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, v1, v2}, Lcom/squareup/wire/WireCompiler;->getInitializerForType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 765
    :cond_1
    if-eqz v1, :cond_2

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 768
    :cond_2
    iget-object v3, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType$Field;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/squareup/wire/WireCompiler;->fullyQualifiedName(Lcom/squareup/protoparser/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, fullyQualifiedName:Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/WireCompiler;->isEnum(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/WireCompiler;->getEnumDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 772
    :cond_3
    new-instance v3, Lcom/squareup/wire/WireCompilerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot have default value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/squareup/wire/WireCompilerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getEnumValueOptions(Lcom/squareup/protoparser/EnumType;Lcom/squareup/wire/OptionsMapMaker;)Ljava/util/List;
    .locals 17
    .parameter "enumType"
    .parameter "mapMaker"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/EnumType;",
            "Lcom/squareup/wire/OptionsMapMaker;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v11}, Lcom/squareup/wire/WireCompiler;->shouldEmitOptions()Z

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v11}, Lcom/squareup/wire/WireCompiler;->enumOptions()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 200
    :cond_0
    :goto_0
    return-object v9

    .line 174
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/OptionsMapMaker;->createEnumValueOptionsMap(Lcom/squareup/protoparser/EnumType;)Ljava/util/Map;

    move-result-object v8

    .line 175
    .local v8, optionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 176
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .line 179
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v9, result:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;>;"
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 182
    .local v7, optionNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/protoparser/EnumType;->getValues()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/protoparser/EnumType$Value;

    .line 183
    .local v10, value:Lcom/squareup/protoparser/EnumType$Value;
    invoke-virtual {v10}, Lcom/squareup/protoparser/EnumType$Value;->getOptions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/protoparser/Option;

    .line 184
    .local v5, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v5}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    .end local v5           #option:Lcom/squareup/protoparser/Option;
    .end local v10           #value:Lcom/squareup/protoparser/EnumType$Value;
    :cond_5
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 189
    .local v3, fqNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 190
    .local v6, optionName:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, fqName:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 192
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v13}, Lcom/squareup/wire/WireCompiler;->enumOptions()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v13, v2}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v4

    .line 194
    .local v4, info:Lcom/squareup/wire/ExtensionInfo;
    new-instance v13, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    const/4 v15, 0x0

    iget-object v0, v4, Lcom/squareup/wire/ExtensionInfo;->fqType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/squareup/wire/WireCompiler;->javaName(Lcom/squareup/protoparser/MessageType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v6}, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getJavaFieldType(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;
    .locals 1
    .parameter "messageType"
    .parameter "field"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v0}, Lcom/squareup/wire/WireCompiler;->getProtoFile()Lcom/squareup/protoparser/ProtoFile;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/squareup/wire/MessageWriter;->getJavaFieldType(Lcom/squareup/protoparser/ProtoFile;Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getJavaFieldType(Lcom/squareup/protoparser/ProtoFile;Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Ljava/lang/String;
    .locals 3
    .parameter "protoFile"
    .parameter "messageType"
    .parameter "field"

    .prologue
    .line 784
    iget-object v1, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {p3}, Lcom/squareup/protoparser/MessageType$Field;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/squareup/wire/WireCompiler;->javaName(Lcom/squareup/protoparser/ProtoFile;Lcom/squareup/protoparser/MessageType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, javaName:Ljava/lang/String;
    invoke-static {p3}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    :cond_0
    return-object v0
.end method

.method private static hasDocumentation(Ljava/lang/String;)Z
    .locals 1
    .parameter "documentation"

    .prologue
    .line 790
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOnlyOneField(Lcom/squareup/protoparser/MessageType;)Z
    .locals 2
    .parameter "messageType"

    .prologue
    const/4 v0, 0x1

    .line 794
    invoke-virtual {p1}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/WireCompiler;->hasExtensions(Lcom/squareup/protoparser/MessageType;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRequiredFields(Lcom/squareup/protoparser/Type;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 798
    instance-of v1, p1, Lcom/squareup/protoparser/MessageType;

    if-eqz v1, :cond_1

    .line 799
    check-cast p1, Lcom/squareup/protoparser/MessageType;

    .end local p1
    invoke-virtual {p1}, Lcom/squareup/protoparser/MessageType;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/protoparser/MessageType$Field;

    .line 800
    .local v0, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-static {v0}, Lcom/squareup/wire/FieldInfo;->isRequired(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 803
    .end local v0           #field:Lcom/squareup/protoparser/MessageType$Field;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMessageType(Lcom/squareup/protoparser/MessageType;Lcom/squareup/protoparser/MessageType$Field;)Z
    .locals 3
    .parameter "messageType"
    .parameter "field"

    .prologue
    .line 807
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType$Field;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/wire/TypeInfo;->isScalar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    iget-object v1, p0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 808
    invoke-virtual {p2}, Lcom/squareup/protoparser/MessageType$Field;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/WireCompiler;->fullyQualifiedName(Lcom/squareup/protoparser/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/WireCompiler;->isEnum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 234
    .local v1, sep:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    move-object v1, p2

    .line 238
    goto :goto_0

    .line 239
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private nullHashValue(Lcom/squareup/protoparser/MessageType$Field;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 620
    invoke-static {p1}, Lcom/squareup/wire/FieldInfo;->isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 812
    sget-object v0, Lcom/squareup/wire/MessageWriter;->JAVA_KEYWORDS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method

.method static sanitizeJavadoc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "documentation"

    .prologue
    .line 58
    const-string v0, "%"

    const-string v1, "%%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 60
    const-string v0, "[^\\S\n]+\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    const-string v0, "\\s+$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    const-string v0, "@see (http:[-!#$%&\'()*+,./0-9:;=?@A-Z\\[\\]_a-z~]+)"

    const-string v1, "@see <a href=\"$1\">$1</a>"

    .line 64
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    return-object p0
.end method

.method private scalarTypeConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 821
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private trailingSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 227
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 228
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public emitHeader(Lcom/squareup/javawriter/JavaWriter;Ljava/util/Set;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 8
    .parameter "writer"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/wire/Message$Datatype;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/wire/Message$Label;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, imports:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, datatypes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/squareup/wire/Message$Datatype;>;"
    .local p4, labels:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/squareup/wire/Message$Label;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-virtual {p1, p2}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    .line 72
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 75
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Datatype;

    .line 76
    .local v0, datatype:Lcom/squareup/wire/Message$Datatype;
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.squareup.wire.Message.Datatype."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Datatype;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStaticImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 78
    .end local v0           #datatype:Lcom/squareup/wire/Message$Datatype;
    :cond_2
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/Message$Label;

    .line 79
    .local v1, label:Lcom/squareup/wire/Message$Label;
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.squareup.wire.Message.Label."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Label;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStaticImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 81
    .end local v1           #label:Lcom/squareup/wire/Message$Label;
    :cond_3
    return-void
.end method

.method public emitType(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/Type;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 25
    .parameter "writer"
    .parameter "type"
    .parameter "currentType"
    .parameter
    .parameter "topLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Lcom/squareup/protoparser/Type;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    .local p4, optionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 101
    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/squareup/protoparser/MessageType;

    if-eqz v5, :cond_2

    move-object/from16 v5, p2

    .line 102
    check-cast v5, Lcom/squareup/protoparser/MessageType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/squareup/wire/MessageWriter;->emitAll(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/MessageType;Ljava/util/Map;Z)V

    .line 103
    invoke-interface/range {p2 .. p2}, Lcom/squareup/protoparser/Type;->getNestedTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/protoparser/Type;

    .line 104
    .local v7, nestedType:Lcom/squareup/protoparser/Type;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v7}, Lcom/squareup/protoparser/Type;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/squareup/wire/MessageWriter;->emitType(Lcom/squareup/javawriter/JavaWriter;Lcom/squareup/protoparser/Type;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0

    .line 106
    .end local v7           #nestedType:Lcom/squareup/protoparser/Type;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 166
    :cond_1
    :goto_1
    return-void

    .line 107
    :cond_2
    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/squareup/protoparser/EnumType;

    if-eqz v5, :cond_1

    move-object/from16 v15, p2

    .line 108
    check-cast v15, Lcom/squareup/protoparser/EnumType;

    .line 109
    .local v15, enumType:Lcom/squareup/protoparser/EnumType;
    new-instance v18, Lcom/squareup/wire/OptionsMapMaker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/squareup/wire/OptionsMapMaker;-><init>(Lcom/squareup/wire/WireCompiler;)V

    .line 111
    .local v18, mapMaker:Lcom/squareup/wire/OptionsMapMaker;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/squareup/wire/MessageWriter;->getEnumValueOptions(Lcom/squareup/protoparser/EnumType;Lcom/squareup/wire/OptionsMapMaker;)Ljava/util/List;

    move-result-object v21

    .line 113
    .local v21, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;>;"
    invoke-virtual {v15}, Lcom/squareup/protoparser/EnumType;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "enum"

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ProtoEnum"

    aput-object v6, v13, v5

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 114
    invoke-virtual {v15}, Lcom/squareup/protoparser/EnumType;->getValues()Ljava/util/List;

    move-result-object v24

    .line 115
    .local v24, values:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/EnumType$Value;>;"
    const/16 v16, 0x0

    .local v16, i:I
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v14

    .local v14, count:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v14, :cond_4

    .line 116
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/squareup/protoparser/EnumType$Value;

    .line 117
    .local v23, value:Lcom/squareup/protoparser/EnumType$Value;
    invoke-virtual/range {v23 .. v23}, Lcom/squareup/protoparser/EnumType$Value;->getDocumentation()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/squareup/wire/MessageWriter;->emitDocumentation(Lcom/squareup/javawriter/JavaWriter;Ljava/lang/String;)V

    .line 119
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v17, initializers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Lcom/squareup/protoparser/EnumType$Value;->getTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/wire/MessageWriter;->addEnumValueOptionInitializers(Lcom/squareup/protoparser/EnumType$Value;Ljava/util/List;Lcom/squareup/wire/OptionsMapMaker;Ljava/util/List;)V

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/squareup/protoparser/EnumType$Value;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/squareup/wire/MessageWriter;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v14, -0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_3

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Lcom/squareup/javawriter/JavaWriter;->emitEnumValue(Ljava/lang/String;Z)Lcom/squareup/javawriter/JavaWriter;

    .line 115
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 123
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 127
    .end local v17           #initializers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #value:Lcom/squareup/protoparser/EnumType$Value;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/wire/MessageWriter;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v5}, Lcom/squareup/wire/WireCompiler;->shouldEmitOptions()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/squareup/wire/OptionsMapMaker;->createEnumOptionsMap(Lcom/squareup/protoparser/EnumType;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/squareup/wire/MessageWriter;->emitEnumOptions(Lcom/squareup/javawriter/JavaWriter;Ljava/util/Map;)V

    .line 132
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 133
    const-string v5, "int"

    const-string v6, "value"

    sget-object v8, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    sget-object v9, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v8, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v8}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    .line 136
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;

    .line 137
    .local v20, option:Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->type:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/squareup/wire/MessageWriter;->trailingSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v10, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v9}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_4

    .line 139
    .end local v20           #option:Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 142
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v22, parameters:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "int"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v5, "value"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;

    .line 146
    .restart local v20       #option:Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/squareup/wire/MessageWriter;->trailingSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 150
    .end local v20           #option:Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    :cond_7
    sget-object v5, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1, v6}, Lcom/squareup/javawriter/JavaWriter;->beginConstructor(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    .line 151
    const-string v5, "this.value = value"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 152
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;

    .line 153
    .restart local v20       #option:Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/squareup/wire/MessageWriter;->trailingSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 154
    .local v19, name:Ljava/lang/String;
    const-string v6, "this.%s = %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v19, v8, v9

    const/4 v9, 0x1

    aput-object v19, v8, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_6

    .line 156
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #option:Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endConstructor()Lcom/squareup/javawriter/JavaWriter;

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 160
    const-class v5, Ljava/lang/Override;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 161
    const-string v5, "int"

    const-string v6, "getValue"

    sget-object v8, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v8, v9}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 162
    const-string v5, "return value"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_1
.end method
