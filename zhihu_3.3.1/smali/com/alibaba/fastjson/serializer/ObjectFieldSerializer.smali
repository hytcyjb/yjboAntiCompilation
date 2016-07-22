.class public Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;
.super Lcom/alibaba/fastjson/serializer/FieldSerializer;
.source "ObjectFieldSerializer.java"


# instance fields
.field private fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private format:Ljava/lang/String;

.field private runtimeFieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field writeEnumUsingToString:Z

.field writeNullBooleanAsFalse:Z

.field writeNullListAsEmpty:Z

.field writeNullStringAsEmpty:Z

.field private writeNumberAsZero:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 32
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    .line 33
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    .line 35
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    .line 36
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    .line 41
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 43
    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    .line 50
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_2

    .line 64
    :cond_1
    return-void

    .line 50
    :cond_2
    aget-object v1, v2, v0

    .line 51
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_4

    .line 52
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    .line 50
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_4
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_5

    .line 54
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    goto :goto_1

    .line 55
    :cond_5
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_6

    .line 56
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    goto :goto_1

    .line 57
    :cond_6
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_7

    .line 58
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    goto :goto_1

    .line 59
    :cond_7
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_3

    .line 60
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    goto :goto_1
.end method


# virtual methods
.method public writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-nez v0, :cond_1

    .line 80
    if-nez p2, :cond_2

    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 89
    :cond_1
    if-nez p2, :cond_7

    .line 90
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/Number;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    goto :goto_1

    .line 93
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    if-eqz v0, :cond_4

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    const-string v1, "\"\""

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    if-eqz v0, :cond_5

    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_5
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    if-eqz v0, :cond_6

    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v2, v1, v2}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 108
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_9

    .line 115
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 119
    :cond_9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0
.end method
