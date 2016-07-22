.class Lcom/avos/avoscloud/AVObjectSerializer;
.super Ljava/lang/Object;
.source "AVObjectSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/avos/avoscloud/AVObjectSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObjectSerializer;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x2c

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .line 22
    check-cast p2, Lcom/avos/avoscloud/AVObject;

    .line 23
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 24
    const/16 v0, 0x20

    const-string v2, "@type"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "objectId"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "updatedAt"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getAVObjectUpdatedAt(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "createdAt"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getAVObjectCreatedAt(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getAVObjectClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v2, "className"

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v5, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 32
    instance-of v0, p2, Lcom/avos/avoscloud/AVStatus;

    if-eqz v0, :cond_2

    .line 33
    check-cast p2, Lcom/avos/avoscloud/AVStatus;

    .line 34
    const-string v0, "dataMap"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getData()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    new-array v3, v8, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v6

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 40
    const-string v0, "inboxType"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getInboxType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 43
    const-string v0, "messageId"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getSource()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 47
    const-string v0, "source"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getSource()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    sget-object v2, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    new-array v3, v8, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v6

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 65
    :cond_1
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 66
    return-void

    .line 53
    :cond_2
    const-string v0, "serverData"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 54
    iget-object v0, p2, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    sget-object v2, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    new-array v3, v8, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v6

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 57
    iget-object v0, p2, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 59
    const-string v0, "operationQueue"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 60
    iget-object v0, p2, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    sget-object v2, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    new-array v3, v8, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v6

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
