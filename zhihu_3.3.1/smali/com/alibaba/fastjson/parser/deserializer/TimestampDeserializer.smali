.class public Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "TimestampDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 20
    if-nez p4, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :cond_1
    instance-of v1, p4, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 25
    new-instance v0, Ljava/sql/Timestamp;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    .line 28
    :cond_2
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 29
    new-instance v0, Ljava/sql/Timestamp;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    .line 32
    :cond_3
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 33
    check-cast p4, Ljava/lang/String;

    .line 34
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 40
    :try_start_0
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 41
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 46
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 47
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    .line 50
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method
