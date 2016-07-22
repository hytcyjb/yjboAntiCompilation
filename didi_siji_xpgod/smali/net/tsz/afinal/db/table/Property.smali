.class public Lnet/tsz/afinal/db/table/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field private column:Ljava/lang/String;

.field private dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private defaultValue:Ljava/lang/String;

.field private field:Ljava/lang/reflect/Field;

.field private fieldName:Ljava/lang/String;

.field private get:Ljava/lang/reflect/Method;

.field private set:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->column:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getGet()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSet()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v1, p0, Lnet/tsz/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setColumn(Ljava/lang/String;)V
    .locals 0
    .parameter "column"

    .prologue
    .line 104
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->column:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDataType(Ljava/lang/Class;)V
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
    .line 116
    .local p1, dataType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    .line 117
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 110
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->defaultValue:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0
    .parameter "field"

    .prologue
    .line 136
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    .line 137
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"

    .prologue
    .line 98
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->fieldName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setGet(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "get"

    .prologue
    .line 122
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    .line 123
    return-void
.end method

.method public setSet(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 128
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    .line 129
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "receiver"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 45
    :try_start_0
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 46
    iget-object v1, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_3

    .line 48
    :cond_1
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 49
    :cond_3
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_6

    .line 50
    :cond_4
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_2

    .line 51
    :cond_6
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_9

    .line 52
    :cond_7
    iget-object v3, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p2, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_3

    .line 53
    :cond_9
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_c

    .line 54
    :cond_a
    iget-object v3, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p2, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_4

    .line 55
    :cond_c
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/util/Date;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/sql/Date;

    if-ne v2, v3, :cond_f

    .line 56
    :cond_d
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_e

    :goto_5
    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/tsz/afinal/utils/FieldUtils;->stringToDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_5

    .line 57
    :cond_f
    iget-object v1, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_10

    iget-object v1, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_12

    .line 58
    :cond_10
    iget-object v2, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_11
    const-string v1, "1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6

    .line 60
    :cond_12
    iget-object v1, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 67
    :cond_13
    :try_start_2
    iget-object v1, p0, Lnet/tsz/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    iget-object v1, p0, Lnet/tsz/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
