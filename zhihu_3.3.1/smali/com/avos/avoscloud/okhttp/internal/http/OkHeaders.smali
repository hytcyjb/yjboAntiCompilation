.class public final Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;
.super Ljava/lang/Object;
.source "OkHeaders.java"


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PREFIX:Ljava/lang/String;

.field public static final RECEIVED_MILLIS:Ljava/lang/String;

.field public static final SELECTED_PROTOCOL:Ljava/lang/String;

.field public static final SENT_MILLIS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 42
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Selected-Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static addCookies(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okhttp/Request$Builder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    const-string v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->buildCookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    goto :goto_0

    .line 118
    :cond_2
    return-void
.end method

.method private static buildCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 128
    if-lez v1, :cond_1

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static contentLength(Lcom/avos/avoscloud/okhttp/Headers;)J
    .locals 2
    .parameter

    .prologue
    .line 72
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lcom/avos/avoscloud/okhttp/Request;)J
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Request;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->contentLength(Lcom/avos/avoscloud/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lcom/avos/avoscloud/okhttp/Response;)J
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->contentLength(Lcom/avos/avoscloud/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasVaryAll(Lcom/avos/avoscloud/okhttp/Headers;)Z
    .locals 2
    .parameter

    .prologue
    .line 159
    invoke-static {p0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->varyFields(Lcom/avos/avoscloud/okhttp/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lcom/avos/avoscloud/okhttp/Response;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/avos/avoscloud/okhttp/Headers;)Z

    move-result v0

    return v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 222
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseChallenges(Lcom/avos/avoscloud/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okhttp/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 242
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v8

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_2

    .line 244
    invoke-virtual {p0, v6}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0, v6}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 249
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 251
    const-string v2, " "

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 254
    invoke-static {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 260
    const/4 v1, 0x1

    const-string v3, "realm=\""

    const-string v5, "realm=\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "realm=\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 266
    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 268
    add-int/lit8 v1, v2, 0x1

    .line 269
    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    .line 271
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 272
    new-instance v2, Lcom/avos/avoscloud/okhttp/Challenge;

    invoke-direct {v2, v9, v3}, Lcom/avos/avoscloud/okhttp/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_2
    return-object v7
.end method

.method public static processAuthHeader(Lcom/avos/avoscloud/okhttp/Authenticator;Lcom/avos/avoscloud/okhttp/Response;Ljava/net/Proxy;)Lcom/avos/avoscloud/okhttp/Request;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p2, p1}, Lcom/avos/avoscloud/okhttp/Authenticator;->authenticateProxy(Ljava/net/Proxy;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p2, p1}, Lcom/avos/avoscloud/okhttp/Authenticator;->authenticate(Ljava/net/Proxy;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    goto :goto_0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 76
    if-nez p0, :cond_0

    .line 80
    :goto_0
    return-wide v0

    .line 78
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toMultimap(Lcom/avos/avoscloud/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okhttp/Headers;",
            "Ljava/lang/String;",
            ")",
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
    .line 91
    new-instance v2, Ljava/util/TreeMap;

    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 93
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    .line 105
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static varyFields(Lcom/avos/avoscloud/okhttp/Headers;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okhttp/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    .line 173
    const-string v3, "Vary"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 179
    :cond_2
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 180
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    :cond_3
    return-object v0
.end method

.method private static varyFields(Lcom/avos/avoscloud/okhttp/Response;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okhttp/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->varyFields(Lcom/avos/avoscloud/okhttp/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Headers;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->varyFields(Lcom/avos/avoscloud/okhttp/Headers;)Ljava/util/Set;

    move-result-object v1

    .line 205
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 207
    :cond_0
    new-instance v2, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    .line 209
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    goto :goto_0
.end method

.method public static varyHeaders(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Headers;
    .locals 2
    .parameter

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->networkResponse()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static varyMatches(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okhttp/Request;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-static {p0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->varyFields(Lcom/avos/avoscloud/okhttp/Response;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/okhttp/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
