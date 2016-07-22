.class public final Lcom/avos/avoscloud/okhttp/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/Headers$1;,
        Lcom/avos/avoscloud/okhttp/Headers$Builder;
    }
.end annotation


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/Headers$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    #getter for: Lcom/avos/avoscloud/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->access$000(Lcom/avos/avoscloud/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/avos/avoscloud/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->access$000(Lcom/avos/avoscloud/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/Headers$Builder;Lcom/avos/avoscloud/okhttp/Headers$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/Headers;-><init>(Lcom/avos/avoscloud/okhttp/Headers$Builder;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 151
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    add-int/lit8 v0, v0, 0x1

    aget-object v0, p0, v0

    .line 155
    :goto_1
    return-object v0

    .line 150
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static of(Ljava/util/Map;)Lcom/avos/avoscloud/okhttp/Headers;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/okhttp/Headers;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 191
    if-nez p0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected map with header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 198
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_4

    .line 205
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_4
    aput-object v1, v4, v2

    .line 208
    add-int/lit8 v1, v2, 0x1

    aput-object v0, v4, v1

    .line 209
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 210
    goto :goto_0

    .line 212
    :cond_5
    new-instance v0, Lcom/avos/avoscloud/okhttp/Headers;

    invoke-direct {v0, v4}, Lcom/avos/avoscloud/okhttp/Headers;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers;
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 164
    if-eqz p0, :cond_0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected alternating header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    .line 170
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 171
    aget-object v3, v0, v1

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 176
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 177
    aget-object v3, v0, v1

    .line 178
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v0, v4

    .line 179
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_5

    .line 180
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 184
    :cond_6
    new-instance v1, Lcom/avos/avoscloud/okhttp/Headers;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/okhttp/Headers;-><init>([Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/okhttp/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 82
    mul-int/lit8 v0, p1, 0x2

    .line 83
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public names()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/avos/avoscloud/okhttp/Headers$Builder;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    .line 123
    #getter for: Lcom/avos/avoscloud/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->access$000(Lcom/avos/avoscloud/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 124
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toMultimap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 138
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 146
    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 91
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 92
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v2

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_2

    .line 111
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    :cond_0
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
