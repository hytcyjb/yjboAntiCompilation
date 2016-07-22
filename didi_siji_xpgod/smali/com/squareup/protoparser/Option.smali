.class public final Lcom/squareup/protoparser/Option;
.super Ljava/lang/Object;
.source "Option.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iput-object p1, p0, Lcom/squareup/protoparser/Option;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 125
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t"

    const-string v2, "\\t"

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "\\r"

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\n"

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findByName(Ljava/util/List;Ljava/lang/String;)Lcom/squareup/protoparser/Option;
    .locals 5
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/protoparser/Option;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "options"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    .local v0, found:Lcom/squareup/protoparser/Option;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/Option;

    .line 56
    .local v1, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    if-eqz v0, :cond_3

    .line 58
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple options match name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 63
    .end local v1           #option:Lcom/squareup/protoparser/Option;
    :cond_4
    return-object v0
.end method

.method public static optionsAsMap(Ljava/util/List;)Ljava/util/Map;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/protoparser/Option;

    .line 17
    .local v6, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v6}, Lcom/squareup/protoparser/Option;->getName()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 20
    .local v7, value:Ljava/lang/Object;
    instance-of v9, v7, Ljava/lang/String;

    if-nez v9, :cond_0

    instance-of v9, v7, Ljava/util/List;

    if-eqz v9, :cond_1

    .line 21
    :cond_0
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_1
    instance-of v9, v7, Lcom/squareup/protoparser/Option;

    if-eqz v9, :cond_3

    .line 23
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/squareup/protoparser/Option;

    const/4 v10, 0x0

    check-cast v7, Lcom/squareup/protoparser/Option;

    .end local v7           #value:Ljava/lang/Object;
    aput-object v7, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/squareup/protoparser/Option;->optionsAsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 25
    .local v2, newMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 26
    .local v5, oldValue:Ljava/lang/Object;
    instance-of v9, v5, Ljava/util/Map;

    if-eqz v9, :cond_2

    move-object v3, v5

    .line 27
    check-cast v3, Ljava/util/Map;

    .line 29
    .local v3, oldMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 30
    .end local v3           #oldMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v4, oldMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 31
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    .end local v4           #oldMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    .end local v2           #newMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #oldValue:Ljava/lang/Object;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_3
    instance-of v9, v7, Ljava/util/Map;

    if-eqz v9, :cond_5

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 37
    .restart local v5       #oldValue:Ljava/lang/Object;
    instance-of v9, v5, Ljava/util/Map;

    if-eqz v9, :cond_4

    .line 38
    check-cast v5, Ljava/util/Map;

    .end local v5           #oldValue:Ljava/lang/Object;
    check-cast v7, Ljava/util/Map;

    .end local v7           #value:Ljava/lang/Object;
    invoke-interface {v5, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 40
    .restart local v5       #oldValue:Ljava/lang/Object;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_4
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    .end local v5           #oldValue:Ljava/lang/Object;
    :cond_5
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Option value must be String, Option, List, or Map<String, ?>"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 46
    .end local v1           #name:Ljava/lang/String;
    .end local v6           #option:Lcom/squareup/protoparser/Option;
    .end local v7           #value:Ljava/lang/Object;
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    instance-of v3, p1, Lcom/squareup/protoparser/Option;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/squareup/protoparser/Option;

    .line 90
    .local v0, that:Lcom/squareup/protoparser/Option;
    iget-object v3, p0, Lcom/squareup/protoparser/Option;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/Option;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    iget-object v4, v0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/squareup/protoparser/Option;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/squareup/protoparser/Option;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toDeclaration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/protoparser/Option;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 100
    iget-object v6, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 101
    .local v6, stringValue:Ljava/lang/String;
    iget-object v7, p0, Lcom/squareup/protoparser/Option;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/squareup/protoparser/Option;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .end local v6           #stringValue:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 102
    :cond_0
    iget-object v7, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    instance-of v7, v7, Lcom/squareup/protoparser/Option;

    if-eqz v7, :cond_1

    .line 103
    iget-object v5, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    check-cast v5, Lcom/squareup/protoparser/Option;

    .line 104
    .local v5, optionValue:Lcom/squareup/protoparser/Option;
    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/protoparser/Option;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/squareup/protoparser/Option;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    .end local v5           #optionValue:Lcom/squareup/protoparser/Option;
    :cond_1
    iget-object v7, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_4

    .line 106
    iget-object v7, p0, Lcom/squareup/protoparser/Option;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = [\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v4, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 109
    .local v4, optionList:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 110
    add-int/lit8 v7, v1, -0x1

    if-ge v3, v7, :cond_2

    const-string v2, ","

    .line 111
    .local v2, endl:Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/protoparser/Option;

    invoke-virtual {v7}, Lcom/squareup/protoparser/Option;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/squareup/protoparser/Utils;->appendIndented(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    .end local v2           #endl:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 113
    :cond_3
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #optionList:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown value type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/squareup/protoparser/Option;->value:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
