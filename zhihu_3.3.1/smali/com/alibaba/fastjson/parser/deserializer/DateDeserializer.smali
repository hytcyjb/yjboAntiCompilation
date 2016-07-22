.class public Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "DateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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

    .line 19
    if-nez p4, :cond_1

    move-object p4, v0

    .line 50
    :cond_0
    :goto_0
    return-object p4

    .line 23
    :cond_1
    instance-of v1, p4, Ljava/util/Date;

    if-nez v1, :cond_0

    .line 25
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 26
    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object p4, v0

    goto :goto_0

    .line 27
    :cond_2
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 28
    check-cast p4, Ljava/lang/String;

    .line 29
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    move-object p4, v0

    .line 30
    goto :goto_0

    .line 33
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 39
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 44
    :try_start_1
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p4

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 45
    :catch_0
    move-exception v0

    .line 49
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 53
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    return v0
.end method
