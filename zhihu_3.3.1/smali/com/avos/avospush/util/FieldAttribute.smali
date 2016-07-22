.class public Lcom/avos/avospush/util/FieldAttribute;
.super Ljava/lang/Object;
.source "FieldAttribute.java"


# instance fields
.field aliaName:Ljava/lang/String;

.field fieldName:Ljava/lang/String;

.field fieldType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field getterMethod:Ljava/lang/reflect/Method;

.field setterMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/avos/avospush/util/FieldAttribute;->aliaName:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    .line 25
    iput-object p4, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    .line 26
    iput-object p5, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldType:Ljava/lang/Class;

    .line 27
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to invoke getter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAliaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->aliaName:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->aliaName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldType:Ljava/lang/Class;

    return-object v0
.end method

.method public getGetterMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSetterMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to invoke setter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAliaName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->aliaName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setFieldType(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldType:Ljava/lang/Class;

    .line 67
    return-void
.end method

.method public setGetterMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    .line 43
    return-void
.end method

.method public setSetterMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    .line 51
    return-void
.end method
