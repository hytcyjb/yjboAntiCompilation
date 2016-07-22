.class public Lcom/alibaba/fastjson/serializer/DateSerializer;
.super Ljava/lang/Object;
.source "DateSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateSerializer;->instance:Lcom/alibaba/fastjson/serializer/DateSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .line 38
    if-nez p2, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 128
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p4, :cond_2

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/util/Date;

    if-ne v0, v2, :cond_1

    .line 46
    const-string v0, "new Date("

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 47
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/16 v0, 0x29

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLongAndChar(JC)V

    goto :goto_0

    .line 49
    :cond_1
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 50
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 52
    const/16 v0, 0x2c

    const-string v2, "val"

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;J)V

    .line 53
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 59
    :cond_2
    check-cast p2, Ljava/util/Date;

    .line 61
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 72
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 73
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 79
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 83
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 84
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 85
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 86
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 87
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 88
    const/16 v8, 0xe

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 91
    if-eqz v8, :cond_6

    .line 92
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 93
    const/16 v9, 0x17

    invoke-static {v8, v9, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 94
    const/16 v8, 0x13

    invoke-static {v7, v8, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 95
    const/16 v7, 0x10

    invoke-static {v6, v7, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 96
    const/16 v6, 0xd

    invoke-static {v5, v6, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 97
    const/16 v5, 0xa

    invoke-static {v4, v5, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 98
    const/4 v4, 0x7

    invoke-static {v3, v4, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 99
    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 118
    :goto_2
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 120
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_0

    .line 76
    :cond_5
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    .line 102
    :cond_6
    if-nez v7, :cond_7

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    .line 103
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 104
    const/16 v5, 0xa

    invoke-static {v4, v5, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 105
    const/4 v4, 0x7

    invoke-static {v3, v4, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 106
    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_2

    .line 108
    :cond_7
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 109
    const/16 v8, 0x13

    invoke-static {v7, v8, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 110
    const/16 v7, 0x10

    invoke-static {v6, v7, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 111
    const/16 v6, 0xd

    invoke-static {v5, v6, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 112
    const/16 v5, 0xa

    invoke-static {v4, v5, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 113
    const/4 v4, 0x7

    invoke-static {v3, v4, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 114
    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_2

    .line 123
    :cond_8
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_0

    .line 126
    :cond_9
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto/16 :goto_0
.end method
