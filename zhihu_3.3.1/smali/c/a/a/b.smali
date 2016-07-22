.class public final Lc/a/a/b;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {p0, p1}, Lc/a/a/b;->b(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 97
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 84
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 85
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1, v0}, Lc/a/a/b;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 86
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 91
    invoke-static {p0, v0}, Lc/a/a/b;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 92
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 116
    const-string v0, ""

    invoke-static {p0, v0}, Lc/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lc/a/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/io/Reader;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/io/Reader;

    invoke-static {p0}, Lc/a/a/b;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v0, ", "

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lc/a/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    const-string v0, ", "

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lc/a/a/b;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const-string v0, ""

    .line 76
    :goto_0
    return-object v0

    .line 67
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lc/a/a/b;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lc/a/a/b;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 102
    const/16 v0, 0x1000

    :try_start_0
    new-array v2, v0, [C

    .line 103
    const-wide/16 v0, 0x0

    .line 105
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :cond_0
    return-wide v0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-static {p0}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
