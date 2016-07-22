.class public Lcom/avos/avoscloud/AVRelation;
.super Ljava/lang/Object;
.source "AVRelation.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "query",
        "parent"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private parent:Lcom/avos/avoscloud/AVObject;

.field private targetClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    .line 29
    iput-object p2, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0, v0}, Lcom/avos/avoscloud/AVRelation;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static reverseQuery(Ljava/lang/Class;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TM;>;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 145
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 146
    return-object v0
.end method

.method public static reverseQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 131
    return-object v0
.end method


# virtual methods
.method public add(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null AVObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not add class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to this relation,expect class is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    iget-object v1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 62
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVRelation;->add(Lcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVRelation;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to encode an association with an unsaved AVObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/AVRelation$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVRelation$1;-><init>(Lcom/avos/avoscloud/AVRelation;)V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    const-string v2, "$relatedTo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_2
    new-instance v2, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v2, v0, p1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 111
    const-string v0, "$relatedTo"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 112
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "redirectClassNameForKey"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_3
    return-object v2
.end method

.method public getTargetClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    iget-object v1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->removeRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method setKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    .line 155
    return-void
.end method

.method setParent(Lcom/avos/avoscloud/AVObject;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    .line 159
    return-void
.end method

.method public setTargetClass(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    .line 171
    return-void
.end method
