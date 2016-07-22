.class public Lnet/tsz/afinal/db/sqlite/SqlBuilder;
.super Ljava/lang/Object;
.source "SqlBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    .line 155
    .local v1, table:Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, strSQL:Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 6
    .parameter
    .parameter "idValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/tsz/afinal/db/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v3

    .line 131
    .local v3, table:Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v3}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v0

    .line 133
    .local v0, id:Lnet/tsz/afinal/db/table/Id;
    if-nez p1, :cond_0

    .line 134
    new-instance v4, Lnet/tsz/afinal/exception/DbException;

    const-string v5, "getDeleteSQL:idValue is null"

    invoke-direct {v4, v5}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, strSQL:Ljava/lang/StringBuffer;
    const-string v4, " WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v1, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 141
    .local v1, sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 144
    return-object v1
.end method

.method public static buildDeleteSql(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 8
    .parameter "entity"

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v4

    .line 111
    .local v4, table:Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v0

    .line 112
    .local v0, id:Lnet/tsz/afinal/db/table/Id;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, idvalue:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 115
    new-instance v5, Lnet/tsz/afinal/exception/DbException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeleteSQL:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id value is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, strSQL:Ljava/lang/StringBuffer;
    const-string v5, " WHERE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    new-instance v2, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 121
    .local v2, sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 124
    return-object v2
.end method

.method public static buildInsertSql(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 9
    .parameter "entity"

    .prologue
    .line 39
    invoke-static {p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 41
    .local v1, keyValueList:Ljava/util/List;,"Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v5, strSQL:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 43
    .local v4, sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 45
    new-instance v4, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    .end local v4           #sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-direct {v4}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 47
    .restart local v4       #sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v6

    invoke-virtual {v6}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 55
    const-string v6, ") VALUES ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 58
    .local v3, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 62
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 67
    .end local v0           #i:I
    .end local v3           #length:I
    :cond_0
    return-object v4

    .line 50
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/KeyValue;

    .line 51
    .local v2, kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    .end local v2           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    .restart local v0       #i:I
    .restart local v3       #length:I
    :cond_2
    const-string v6, "?,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v8

    .line 306
    .local v8, table:Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v1

    .line 307
    .local v1, id:Lnet/tsz/afinal/db/table/Id;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    .local v7, strSQL:Ljava/lang/StringBuffer;
    const-string v9, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v9, " ( "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/Id;->getDataType()Ljava/lang/Class;

    move-result-object v4

    .line 313
    .local v4, primaryClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v9, :cond_0

    const-class v9, Ljava/lang/Integer;

    if-eq v4, v9, :cond_0

    .line 314
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v9, :cond_0

    const-class v9, Ljava/lang/Long;

    if-ne v4, v9, :cond_1

    .line 315
    :cond_0
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    :goto_0
    iget-object v9, v8, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 323
    .local v6, propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 338
    iget-object v9, v8, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 339
    .local v3, manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 344
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 345
    const-string v9, " )"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 317
    .end local v3           #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    .end local v6           #propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    :cond_1
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " TEXT PRIMARY KEY,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 323
    .restart local v6       #propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/Property;

    .line 324
    .local v5, property:Lnet/tsz/afinal/db/table/Property;
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/Property;->getDataType()Ljava/lang/Class;

    move-result-object v0

    .line 326
    .local v0, dataType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_3

    const-class v10, Ljava/lang/Integer;

    if-eq v0, v10, :cond_3

    .line 327
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_3

    const-class v10, Ljava/lang/Long;

    if-ne v0, v10, :cond_5

    .line 328
    :cond_3
    const-string v10, " INTEGER"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    :cond_4
    :goto_3
    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 329
    :cond_5
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_6

    const-class v10, Ljava/lang/Float;

    if-eq v0, v10, :cond_6

    .line 330
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_6

    const-class v10, Ljava/lang/Double;

    if-ne v0, v10, :cond_7

    .line 331
    :cond_6
    const-string v10, " REAL"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 332
    :cond_7
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_8

    const-class v10, Ljava/lang/Boolean;

    if-ne v0, v10, :cond_4

    .line 333
    :cond_8
    const-string v10, " NUMERIC"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 339
    .end local v0           #dataType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #property:Lnet/tsz/afinal/db/table/Property;
    .restart local v3       #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 340
    .local v2, manyToOne:Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 341
    const-string v11, " INTEGER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 342
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method private static getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 356
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 357
    .local v0, sbSQL:Ljava/lang/StringBuffer;
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/util/Date;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/sql/Date;

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 360
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .parameter "entity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/tsz/afinal/db/table/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, keyValueList:Ljava/util/List;,"Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v7

    .line 75
    .local v7, table:Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v7}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v8

    invoke-virtual {v8, p0}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, idvalue:Ljava/lang/Object;
    instance-of v8, v0, Ljava/lang/Integer;

    if-nez v8, :cond_0

    .line 78
    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 79
    new-instance v2, Lnet/tsz/afinal/db/table/KeyValue;

    invoke-virtual {v7}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v8

    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .local v2, kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    :cond_0
    iget-object v8, v7, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 86
    .local v6, propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 93
    iget-object v8, v7, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 94
    .local v4, manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 99
    return-object v1

    .line 86
    .end local v4           #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/Property;

    .line 87
    .local v5, property:Lnet/tsz/afinal/db/table/Property;
    invoke-static {v5, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 88
    .restart local v2       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_1

    .line 89
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v2           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    .end local v5           #property:Lnet/tsz/afinal/db/table/Property;
    .restart local v4       #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 95
    .local v3, many:Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-static {v3, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 96
    .restart local v2       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "idValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    .line 177
    .local v1, table:Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, strSQL:Ljava/lang/StringBuffer;
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v2

    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    .line 205
    .local v1, table:Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, strSQL:Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 5
    .parameter
    .parameter "idValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/tsz/afinal/db/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v2

    .line 187
    .local v2, table:Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, strSQL:Ljava/lang/StringBuffer;
    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v4

    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    new-instance v0, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 191
    .local v0, sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 194
    return-object v0
.end method

.method private static getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 13
    .parameter "entity"

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v9

    .line 219
    .local v9, table:Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v9}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v10

    invoke-virtual {v10, p0}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, idvalue:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 222
    new-instance v10, Lnet/tsz/afinal/exception/DbException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "this entity["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\'s id value is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 225
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, keyValueList:Ljava/util/List;,"Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    iget-object v10, v9, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 228
    .local v6, propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 235
    iget-object v10, v9, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 236
    .local v4, manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 241
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    :cond_3
    const/4 v7, 0x0

    .line 255
    :goto_2
    return-object v7

    .line 228
    .end local v4           #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/Property;

    .line 229
    .local v5, property:Lnet/tsz/afinal/db/table/Property;
    invoke-static {v5, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 230
    .local v2, kv:Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_1

    .line 231
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v2           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    .end local v5           #property:Lnet/tsz/afinal/db/table/Property;
    .restart local v4       #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 237
    .local v3, many:Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-static {v3, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 238
    .restart local v2       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    .end local v2           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    .end local v3           #many:Lnet/tsz/afinal/db/table/ManyToOne;
    :cond_6
    new-instance v7, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v7}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 244
    .local v7, sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v10, "UPDATE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 245
    .local v8, strSQL:Ljava/lang/StringBuffer;
    invoke-virtual {v9}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v10, " SET "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 251
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 252
    const-string v10, " WHERE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v9}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v11

    invoke-virtual {v11}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v7, v0}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    goto :goto_2

    .line 247
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/KeyValue;

    .line 248
    .restart local v2       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "=?,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 12
    .parameter "entity"
    .parameter "strWhere"

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v8

    .line 265
    .local v8, table:Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, keyValueList:Ljava/util/List;,"Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    iget-object v9, v8, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 269
    .local v5, propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 275
    iget-object v9, v8, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 276
    .local v3, manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 281
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 282
    :cond_2
    new-instance v9, Lnet/tsz/afinal/exception/DbException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "this entity["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] has no property"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 269
    .end local v3           #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/tsz/afinal/db/table/Property;

    .line 270
    .local v4, property:Lnet/tsz/afinal/db/table/Property;
    invoke-static {v4, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v1

    .line 271
    .local v1, kv:Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v1           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    .end local v4           #property:Lnet/tsz/afinal/db/table/Property;
    .restart local v3       #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 277
    .local v2, many:Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-static {v2, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v1

    .line 278
    .restart local v1       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    .end local v1           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    .end local v2           #many:Lnet/tsz/afinal/db/table/ManyToOne;
    :cond_5
    new-instance v6, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v6}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 286
    .local v6, sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, "UPDATE "

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 287
    .local v7, strSQL:Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v9, " SET "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 293
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 295
    const-string v9, " WHERE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 298
    return-object v6

    .line 289
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/tsz/afinal/db/table/KeyValue;

    .line 290
    .restart local v1       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=?,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;
    .locals 6
    .parameter "many"
    .parameter "entity"

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, manycolumn:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 385
    .local v2, manyobject:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v4, v5, :cond_1

    .line 388
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v4

    check-cast v2, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    .end local v2           #manyobject:Ljava/lang/Object;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 392
    .local v3, manyvalue:Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 393
    new-instance v0, Lnet/tsz/afinal/db/table/KeyValue;

    .end local v0           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-direct {v0, v1, v3}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    .end local v3           #manyvalue:Ljava/lang/Object;
    .restart local v0       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    :cond_0
    return-object v0

    .line 390
    .restart local v2       #manyobject:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #manyvalue:Ljava/lang/Object;
    goto :goto_0
.end method

.method private static property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;
    .locals 4
    .parameter "property"
    .parameter "entity"

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, pcolumn:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/db/table/Property;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 371
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 372
    new-instance v0, Lnet/tsz/afinal/db/table/KeyValue;

    .end local v0           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-direct {v0, v1, v2}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    .restart local v0       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    new-instance v0, Lnet/tsz/afinal/db/table/KeyValue;

    .end local v0           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0       #kv:Lnet/tsz/afinal/db/table/KeyValue;
    goto :goto_0
.end method
