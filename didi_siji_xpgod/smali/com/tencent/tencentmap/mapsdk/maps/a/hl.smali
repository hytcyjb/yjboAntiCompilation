.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/hl;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/hc;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hl;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hl<TT;>;"
    .local p1, actual:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->a:Z

    .line 68
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    .line 69
    return-void
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 9
    .parameter "e"

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hl;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hl<TT;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    :try_start_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hm;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-virtual {v2, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :try_start_2
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7

    .line 214
    return-void

    .line 150
    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .local v0, e2:Ljava/lang/Throwable;
    instance-of v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hh;

    if-eqz v2, :cond_0

    .line 169
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hh;

    .end local v0           #e2:Ljava/lang/Throwable;
    throw v0

    .line 170
    .restart local v0       #e2:Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 172
    .local v1, unsubscribeException:Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hm;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 176
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Observer.onError not implemented and error while unsubscribing."

    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/he;

    new-array v5, v8, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v1, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 173
    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 186
    .end local v1           #unsubscribeException:Ljava/lang/Throwable;
    :cond_0
    :try_start_5
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hm;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 191
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 201
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/he;

    new-array v5, v8, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 187
    :catch_4
    move-exception v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->c(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 192
    :catch_5
    move-exception v1

    .line 194
    .restart local v1       #unsubscribeException:Ljava/lang/Throwable;
    :try_start_7
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hm;->a()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 198
    :goto_3
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/he;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 195
    :catch_6
    move-exception v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 207
    .end local v0           #e2:Ljava/lang/Throwable;
    .end local v1           #unsubscribeException:Ljava/lang/Throwable;
    :catch_7
    move-exception v1

    .line 209
    .local v1, unsubscribeException:Ljava/lang/RuntimeException;
    :try_start_8
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hm;->a()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 213
    :goto_4
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;

    invoke-direct {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 210
    :catch_8
    move-exception v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->c(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static c(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "pluginException"

    .prologue
    .line 223
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RxJavaErrorHandler threw an Exception. It shouldn\'t. => "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 78
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hl;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hl<TT;>;"
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->a:Z

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->a:Z

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hf;->a(Ljava/lang/Throwable;)V

    .line 87
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b()V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hl;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hl<TT;>;"
    .local p1, args:Ljava/lang/Object;,"TT;"
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->a:Z

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hf;->a(Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 108
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hl;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hl<TT;>;"
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hf;->a(Ljava/lang/Throwable;)V

    .line 109
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->a:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->a:Z

    .line 111
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;->b(Ljava/lang/Throwable;)V

    .line 113
    :cond_0
    return-void
.end method
