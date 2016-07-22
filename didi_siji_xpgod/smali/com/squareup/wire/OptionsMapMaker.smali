.class public Lcom/squareup/wire/OptionsMapMaker;
.super Ljava/lang/Object;
.source "OptionsMapMaker.java"


# instance fields
.field private final compiler:Lcom/squareup/wire/WireCompiler;


# direct methods
.method public constructor <init>(Lcom/squareup/wire/WireCompiler;)V
    .locals 0
    .parameter "compiler"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    .line 18
    return-void
.end method

.method private getExtensionInfo(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;
    .locals 3
    .parameter "name"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v0

    .line 238
    .local v0, info:Lcom/squareup/wire/ExtensionInfo;
    if-nez v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    iget-object v2, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/WireCompiler;->prefixWithPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v0

    .line 241
    :cond_0
    return-object v0
.end method

.method private getExtensionPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 268
    .local v0, endIndex:I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 269
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, fqName:Ljava/lang/String;
    iget-object v2, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v2, v1}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 273
    .end local v1           #fqName:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 271
    .restart local v1       #fqName:Ljava/lang/String;
    :cond_0
    const/16 v2, 0x2e

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    goto :goto_0

    .line 273
    .end local v1           #fqName:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private getFieldLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/protoparser/MessageType$Label;
    .locals 4
    .parameter "enclosingType"
    .parameter "nestedName"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/WireCompiler;->getField(Ljava/lang/String;)Lcom/squareup/wire/FieldInfo;

    move-result-object v0

    .line 246
    .local v0, fieldInfo:Lcom/squareup/wire/FieldInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/squareup/wire/FieldInfo;->label:Lcom/squareup/protoparser/MessageType$Label;

    goto :goto_0
.end method

.method private getFieldType(Lcom/squareup/wire/FieldInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 277
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/squareup/wire/FieldInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getFieldType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "enclosingType"
    .parameter "nestedName"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/WireCompiler;->getField(Ljava/lang/String;)Lcom/squareup/wire/FieldInfo;

    move-result-object v0

    .line 262
    .local v0, fieldInfo:Lcom/squareup/wire/FieldInfo;
    invoke-direct {p0, v0}, Lcom/squareup/wire/OptionsMapMaker;->getFieldType(Lcom/squareup/wire/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOptionInitializer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "stringValue"
    .parameter "fieldType"

    .prologue
    .line 318
    invoke-static {p2}, Lcom/squareup/wire/TypeInfo;->isScalar(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    invoke-static {p2}, Lcom/squareup/wire/TypeInfo;->scalarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, javaTypeName:Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v4, p1, v2}, Lcom/squareup/wire/WireCompiler;->getInitializerForType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    .end local v2           #javaTypeName:Ljava/lang/String;
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 321
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v4, p2}, Lcom/squareup/wire/WireCompiler;->isEnum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v4, p2}, Lcom/squareup/wire/WireCompiler;->javaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, javaName:Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v4}, Lcom/squareup/wire/WireCompiler;->getJavaPackage()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, javaPackage:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_2
    iget-object v4, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v4}, Lcom/squareup/wire/WireCompiler;->getTypeBeingGenerated()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, typeBeingGenerated:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/WireCompiler;->getTrailingSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getOrCreateFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v0, entry:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0           #entry:Ljava/lang/Object;
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 379
    .local v0, entry:Ljava/util/LinkedHashMap;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v0           #entry:Ljava/util/LinkedHashMap;
    :cond_0
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private indent(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter "sb"
    .parameter "level"

    .prologue
    .line 462
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 463
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_0
    return-void
.end method

.method private insertListOption(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter
    .parameter "enclosingType"
    .parameter
    .parameter "fieldType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, value:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v3, valueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 301
    .local v1, objectValue:Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 302
    check-cast v1, Ljava/lang/String;

    .end local v1           #objectValue:Ljava/lang/Object;
    invoke-direct {p0, v1, p5}, Lcom/squareup/wire/OptionsMapMaker;->getOptionInitializer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, stringValue:Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    .end local v2           #stringValue:Ljava/lang/String;
    .restart local v1       #objectValue:Ljava/lang/Object;
    :cond_0
    instance-of v5, v1, Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 305
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 306
    .local v0, entryMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "@type"

    invoke-interface {v0, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    check-cast v1, Ljava/util/Map;

    .end local v1           #objectValue:Ljava/lang/Object;
    invoke-direct {p0, p3, v1, v0}, Lcom/squareup/wire/OptionsMapMaker;->insertOptionsFromMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 308
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .end local v0           #entryMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #objectValue:Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List contains "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", not String or Map"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 314
    .end local v1           #objectValue:Ljava/lang/Object;
    :cond_2
    invoke-interface {p4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method private insertMapOption(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "name"
    .parameter
    .parameter "enclosingType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, value:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .local p4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p4, p1}, Lcom/squareup/wire/OptionsMapMaker;->getOrCreateFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 370
    .local v0, entryMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "@type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-direct {p0, p3, p2, v0}, Lcom/squareup/wire/OptionsMapMaker;->insertOptionsFromMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 372
    return-void
.end method

.method private insertOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "enclosingType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/squareup/wire/OptionsMapMaker;->getExtensionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, fqName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/WireCompiler;->prefixWithPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/wire/OptionsMapMaker;->insertOptionHelper(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    return-void
.end method

.method private insertOptionHelper(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 21
    .parameter "name"
    .parameter "value"
    .parameter "enclosingType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p1}, Lcom/squareup/wire/OptionsMapMaker;->stripSquareBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-direct/range {p0 .. p1}, Lcom/squareup/wire/OptionsMapMaker;->getExtensionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 189
    .local v17, fqName:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 190
    .local v16, firstDotAfterExtensionIndex:I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_0

    .line 191
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 192
    .local v19, prefix:Ljava/lang/String;
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 193
    .local v20, suffix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/OptionsMapMaker;->getFieldType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, fieldType:Ljava/lang/String;
    new-instance v4, Lcom/squareup/protoparser/Option;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/squareup/protoparser/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v4, v8, v2}, Lcom/squareup/wire/OptionsMapMaker;->insertOptionHelper(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    .end local v19           #prefix:Ljava/lang/String;
    .end local v20           #suffix:Ljava/lang/String;
    :goto_0
    return-void

    .line 199
    .end local v8           #fieldType:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/squareup/wire/WireCompiler;->isEnum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v18, 0x0

    .line 202
    .local v18, info:Lcom/squareup/wire/ExtensionInfo;
    :goto_1
    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v4}, Lcom/squareup/wire/WireCompiler;->getProtoFile()Lcom/squareup/protoparser/ProtoFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/protoparser/ProtoFile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/squareup/protoparser/Option;

    if-eqz v4, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    move-object/from16 v4, p2

    check-cast v4, Lcom/squareup/protoparser/Option;

    invoke-virtual {v4}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/squareup/wire/WireCompiler;->prefixWithPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v18

    .line 206
    check-cast p2, Lcom/squareup/protoparser/Option;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 209
    .restart local p2
    :cond_1
    if-eqz v18, :cond_2

    .line 210
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/squareup/wire/ExtensionInfo;->fqType:Ljava/lang/String;

    move-object/from16 p3, v0

    .line 214
    :cond_2
    if-nez v18, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/OptionsMapMaker;->getFieldType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 215
    .restart local v8       #fieldType:Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_3

    .line 216
    move-object/from16 v8, p3

    .line 219
    :cond_3
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/OptionsMapMaker;->getFieldLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/protoparser/MessageType$Label;

    move-result-object v9

    .line 221
    .local v9, fieldLabel:Lcom/squareup/protoparser/MessageType$Label;
    if-eqz v18, :cond_4

    .line 222
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/squareup/wire/ExtensionInfo;->label:Lcom/squareup/protoparser/MessageType$Label;

    :cond_4
    move-object/from16 v6, p2

    .line 224
    check-cast v6, Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v4 .. v9}, Lcom/squareup/wire/OptionsMapMaker;->insertStringOption(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/protoparser/MessageType$Label;)V

    goto/16 :goto_0

    .line 199
    .end local v8           #fieldType:Ljava/lang/String;
    .end local v9           #fieldLabel:Lcom/squareup/protoparser/MessageType$Label;
    .end local v18           #info:Lcom/squareup/wire/ExtensionInfo;
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/squareup/wire/OptionsMapMaker;->getExtensionInfo(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v18

    goto/16 :goto_1

    .line 214
    .restart local v18       #info:Lcom/squareup/wire/ExtensionInfo;
    :cond_6
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/squareup/wire/ExtensionInfo;->type:Ljava/lang/String;

    goto :goto_2

    .line 225
    .restart local v8       #fieldType:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_8

    move-object/from16 v12, p2

    .line 226
    check-cast v12, Ljava/util/List;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v8

    invoke-direct/range {v10 .. v15}, Lcom/squareup/wire/OptionsMapMaker;->insertListOption(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_8
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/squareup/protoparser/Option;

    if-eqz v4, :cond_9

    move-object/from16 v4, p2

    .line 228
    check-cast v4, Lcom/squareup/protoparser/Option;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/squareup/wire/OptionsMapMaker;->insertOptionOption(Ljava/lang/String;Lcom/squareup/protoparser/Option;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 229
    :cond_9
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_a

    move-object/from16 v4, p2

    .line 230
    check-cast v4, Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/squareup/wire/OptionsMapMaker;->insertMapOption(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 232
    :cond_a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "value is not an Option, String, List, or Map"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private insertOptionOption(Ljava/lang/String;Lcom/squareup/protoparser/Option;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .parameter "name"
    .parameter "value"
    .parameter "enclosingType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/squareup/protoparser/Option;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p4, p1}, Lcom/squareup/wire/OptionsMapMaker;->getOrCreateFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 350
    .local v0, entryMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "@type"

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {p2}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, nestedName:Ljava/lang/String;
    invoke-direct {p0, p3, v2}, Lcom/squareup/wire/OptionsMapMaker;->getFieldType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, fieldType:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p3, v2, v1, v4}, Lcom/squareup/wire/OptionsMapMaker;->qualifyEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 356
    .local v3, val:Ljava/lang/Object;
    invoke-direct {p0, v2, v3, p3, v0}, Lcom/squareup/wire/OptionsMapMaker;->insertOptionHelper(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    return-void
.end method

.method private insertOptionsFromMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .parameter "enclosingType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, inputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .local p3, outputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 340
    .local v3, valueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    .local v1, nestedName:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/squareup/wire/OptionsMapMaker;->getFieldType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, fieldType:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v1, v0, v5}, Lcom/squareup/wire/OptionsMapMaker;->qualifyEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 343
    .local v2, val:Ljava/lang/Object;
    invoke-direct {p0, v1, v2, v0, p3}, Lcom/squareup/wire/OptionsMapMaker;->insertOptionHelper(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 345
    .end local v0           #fieldType:Ljava/lang/String;
    .end local v1           #nestedName:Ljava/lang/String;
    .end local v2           #val:Ljava/lang/Object;
    .end local v3           #valueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    return-void
.end method

.method private insertStringOption(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/protoparser/MessageType$Label;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter
    .parameter "fieldType"
    .parameter "fieldLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/squareup/protoparser/MessageType$Label;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    .local p3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p2, p4}, Lcom/squareup/wire/OptionsMapMaker;->getOptionInitializer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 284
    sget-object v1, Lcom/squareup/protoparser/MessageType$Label;->REPEATED:Lcom/squareup/protoparser/MessageType$Label;

    if-ne p5, v1, :cond_1

    .line 285
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 286
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isMetadata(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private qualifyEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "enclosingType"
    .parameter "optionValueName"
    .parameter "fieldType"
    .parameter "value"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/OptionsMapMaker;->getFieldType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/WireCompiler;->isEnum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 364
    .end local p4
    :cond_0
    return-object p4
.end method

.method private stripSquareBrackets(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 251
    .local v0, lastIndex:I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    .line 252
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 253
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/WireCompiler;->prefixWithPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    :cond_0
    return-object p1
.end method


# virtual methods
.method public createEnumOptionsMap(Lcom/squareup/protoparser/EnumType;)Ljava/util/Map;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/EnumType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/squareup/protoparser/EnumType;->getOptions()Ljava/util/List;

    move-result-object v2

    .line 41
    .local v2, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    :goto_0
    return-object v3

    .line 45
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/squareup/protoparser/EnumType;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/Option;

    .line 47
    .local v1, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v5, v6, v7, v0}, Lcom/squareup/wire/OptionsMapMaker;->insertOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 49
    .end local v1           #option:Lcom/squareup/protoparser/Option;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method public createEnumValueOptionsMap(Lcom/squareup/protoparser/EnumType;)Ljava/util/Map;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/EnumType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 57
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/squareup/protoparser/EnumType;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/protoparser/EnumType$Value;

    .line 58
    .local v2, value:Lcom/squareup/protoparser/EnumType$Value;
    invoke-virtual {v2}, Lcom/squareup/protoparser/EnumType$Value;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/Option;

    .line 59
    .local v1, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v5, v6, v7, v0}, Lcom/squareup/wire/OptionsMapMaker;->insertOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 62
    .end local v1           #option:Lcom/squareup/protoparser/Option;
    .end local v2           #value:Lcom/squareup/protoparser/EnumType$Value;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-object v0
.end method

.method public createFieldOptionsMap(Lcom/squareup/protoparser/MessageType;Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/MessageType;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v1, 0x0

    .line 89
    :cond_0
    return-object v1

    .line 81
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/protoparser/Option;

    .line 83
    .local v2, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v2}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, key:Ljava/lang/String;
    sget-object v4, Lcom/squareup/wire/WireCompiler;->DEFAULT_FIELD_OPTION_KEYS:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    invoke-virtual {v2}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/squareup/protoparser/MessageType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/squareup/wire/OptionsMapMaker;->insertOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public createMessageOptionsMap(Lcom/squareup/protoparser/MessageType;)Ljava/util/Map;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/MessageType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/squareup/protoparser/MessageType;->getOptions()Ljava/util/List;

    move-result-object v2

    .line 25
    .local v2, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 33
    :cond_0
    return-object v0

    .line 29
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/Option;

    .line 31
    .local v1, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lcom/squareup/protoparser/MessageType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6, v0}, Lcom/squareup/wire/OptionsMapMaker;->insertOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method createOptionInitializer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 28
    .parameter "listOrMap"
    .parameter "parentType"
    .parameter "parentField"
    .parameter "fieldType"
    .parameter "skipAsList"
    .parameter "level"

    .prologue
    .line 387
    add-int/lit8 p6, p6, 0x1

    .line 389
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v25, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_8

    move-object/from16 v23, p1

    .line 391
    check-cast v23, Ljava/util/Map;

    .line 392
    .local v23, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/squareup/wire/WireCompiler;->javaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 393
    .local v21, fullyQualifiedName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 394
    .local v15, dollarName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, v15}, Lcom/squareup/wire/WireCompiler;->getField(Ljava/lang/String;)Lcom/squareup/wire/FieldInfo;

    move-result-object v20

    .line 395
    .local v20, fieldInfo:Lcom/squareup/wire/FieldInfo;
    if-nez p5, :cond_2

    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/squareup/wire/FieldInfo;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v16, 0x1

    .line 396
    .local v16, emitAsList:Z
    :goto_0
    if-eqz v16, :cond_0

    .line 397
    const-string v3, "java.util.Arrays.asList("

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/squareup/wire/WireCompiler;->shortenJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 400
    .local v27, shortName:Ljava/lang/String;
    const-string v3, "new "

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".Builder()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 402
    .local v17, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 403
    .local v6, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/squareup/wire/OptionsMapMaker;->isMetadata(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 406
    const-string v3, "\n"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/OptionsMapMaker;->indent(Ljava/lang/StringBuilder;I)V

    .line 408
    const-string v3, "."

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, v6}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v19

    .line 411
    .local v19, extension:Lcom/squareup/wire/ExtensionInfo;
    if-eqz v19, :cond_3

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v3, v6}, Lcom/squareup/wire/WireCompiler;->getTrailingSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 413
    const-string v3, "setExtension(Ext_%s.%s, "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/squareup/wire/ExtensionInfo;->location:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/wire/WireCompiler;->getField(Ljava/lang/String;)Lcom/squareup/wire/FieldInfo;

    move-result-object v22

    .line 420
    .local v22, info:Lcom/squareup/wire/FieldInfo;
    if-nez v22, :cond_5

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v18

    .line 422
    .local v18, extInfo:Lcom/squareup/wire/ExtensionInfo;
    if-eqz v18, :cond_4

    .line 423
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/squareup/wire/ExtensionInfo;->fqType:Ljava/lang/String;

    .line 430
    .end local v18           #extInfo:Lcom/squareup/wire/ExtensionInfo;
    .local v7, nestedFieldType:Ljava/lang/String;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/squareup/wire/OptionsMapMaker;->createOptionInitializer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v24

    .line 432
    .local v24, optionInitializer:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 395
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #nestedFieldType:Ljava/lang/String;
    .end local v16           #emitAsList:Z
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v19           #extension:Lcom/squareup/wire/ExtensionInfo;
    .end local v22           #info:Lcom/squareup/wire/FieldInfo;
    .end local v24           #optionInitializer:Ljava/lang/String;
    .end local v27           #shortName:Ljava/lang/String;
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 415
    .restart local v6       #key:Ljava/lang/String;
    .restart local v16       #emitAsList:Z
    .restart local v17       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v19       #extension:Lcom/squareup/wire/ExtensionInfo;
    .restart local v27       #shortName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 425
    .restart local v18       #extInfo:Lcom/squareup/wire/ExtensionInfo;
    .restart local v22       #info:Lcom/squareup/wire/FieldInfo;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 428
    .end local v18           #extInfo:Lcom/squareup/wire/ExtensionInfo;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/squareup/wire/OptionsMapMaker;->getFieldType(Lcom/squareup/wire/FieldInfo;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #nestedFieldType:Ljava/lang/String;
    goto :goto_3

    .line 434
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #nestedFieldType:Ljava/lang/String;
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v19           #extension:Lcom/squareup/wire/ExtensionInfo;
    .end local v22           #info:Lcom/squareup/wire/FieldInfo;
    :cond_6
    const-string v3, "\n"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/OptionsMapMaker;->indent(Ljava/lang/StringBuilder;I)V

    .line 436
    const-string v3, ".build()"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    if-eqz v16, :cond_7

    .line 438
    const-string v3, ")"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .end local v15           #dollarName:Ljava/lang/String;
    .end local v16           #emitAsList:Z
    .end local v20           #fieldInfo:Lcom/squareup/wire/FieldInfo;
    .end local v21           #fullyQualifiedName:Ljava/lang/String;
    .end local v23           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27           #shortName:Ljava/lang/String;
    .end local p1
    :cond_7
    :goto_4
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 440
    .restart local p1
    :cond_8
    move-object/from16 v0, p1

    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_c

    .line 441
    const-string v3, "java.util.Arrays.asList("

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v26, "\n"

    .line 443
    .local v26, sep:Ljava/lang/String;
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 444
    .local v9, objectValue:Ljava/lang/Object;
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/OptionsMapMaker;->indent(Ljava/lang/StringBuilder;I)V

    .line 446
    instance-of v4, v9, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 447
    check-cast v9, Ljava/lang/String;

    .end local v9           #objectValue:Ljava/lang/Object;
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_9
    :goto_6
    const-string v26, ",\n"

    .line 453
    goto :goto_5

    .line 448
    .restart local v9       #objectValue:Ljava/lang/Object;
    :cond_a
    instance-of v4, v9, Ljava/util/Map;

    if-eqz v4, :cond_9

    .line 449
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v14, p6

    invoke-virtual/range {v8 .. v14}, Lcom/squareup/wire/OptionsMapMaker;->createOptionInitializer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 454
    .end local v9           #objectValue:Ljava/lang/Object;
    :cond_b
    const-string v3, ")"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 456
    .end local v26           #sep:Ljava/lang/String;
    .restart local p1
    :cond_c
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public createSingleEnumValueOptionMap(Lcom/squareup/protoparser/EnumType$Value;)Ljava/util/Map;
    .locals 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/EnumType$Value;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/squareup/protoparser/EnumType$Value;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/Option;

    .line 71
    .local v1, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/squareup/wire/OptionsMapMaker;->insertOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 73
    .end local v1           #option:Lcom/squareup/protoparser/Option;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v0
.end method

.method public getOptionTypes(Ljava/util/Map;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, optionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .local p2, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 498
    :cond_0
    return-void

    .line 474
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 475
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 477
    .local v3, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v6, v3}, Lcom/squareup/wire/WireCompiler;->getExtension(Ljava/lang/String;)Lcom/squareup/wire/ExtensionInfo;

    move-result-object v1

    .line 478
    .local v1, info:Lcom/squareup/wire/ExtensionInfo;
    if-eqz v1, :cond_3

    iget-object v6, v1, Lcom/squareup/wire/ExtensionInfo;->fqLocation:Ljava/lang/String;

    iget-object v8, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v8}, Lcom/squareup/wire/WireCompiler;->getJavaPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 479
    iget-object v6, v1, Lcom/squareup/wire/ExtensionInfo;->fqLocation:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_3
    const-string v6, "@type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 483
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 484
    .local v5, type:Ljava/lang/String;
    iget-object v6, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/WireCompiler;->javaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, javaName:Ljava/lang/String;
    iget-object v6, p0, Lcom/squareup/wire/OptionsMapMaker;->compiler:Lcom/squareup/wire/WireCompiler;

    invoke-virtual {v6, v2}, Lcom/squareup/wire/WireCompiler;->fullyQualifiedNameIsOutsidePackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 486
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    .end local v2           #javaName:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/List;

    if-eqz v6, :cond_6

    .line 489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 490
    .local v4, objectValue:Ljava/lang/Object;
    instance-of v8, v4, Ljava/util/Map;

    if-eqz v8, :cond_5

    .line 491
    check-cast v4, Ljava/util/Map;

    .end local v4           #objectValue:Ljava/lang/Object;
    invoke-virtual {p0, v4, p2}, Lcom/squareup/wire/OptionsMapMaker;->getOptionTypes(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1

    .line 494
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 495
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {p0, v6, p2}, Lcom/squareup/wire/OptionsMapMaker;->getOptionTypes(Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0
.end method
