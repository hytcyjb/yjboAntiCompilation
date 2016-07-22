.class public Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/q;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/proguard/O;

.field private final c:Lcom/tencent/bugly/proguard/n;

.field private final d:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field private final e:Lcom/tencent/bugly/proguard/p;

.field private final f:Lcom/tencent/bugly/proguard/r;

.field private g:I

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/O;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/p;Lcom/tencent/bugly/proguard/r;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/s;->g:I

    .line 43
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/s;->h:J

    .line 44
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/s;->i:J

    .line 48
    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->a:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/tencent/bugly/proguard/s;->c:Lcom/tencent/bugly/proguard/n;

    .line 50
    iput-object p2, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    .line 51
    iput-object p4, p0, Lcom/tencent/bugly/proguard/s;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 52
    iput-object p5, p0, Lcom/tencent/bugly/proguard/s;->e:Lcom/tencent/bugly/proguard/p;

    .line 53
    iput-object p6, p0, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/proguard/r;

    .line 54
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/s;->g:I

    .line 62
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/s;->h:J

    .line 63
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/s;->i:J

    .line 64
    return-void
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 242
    iget v0, p0, Lcom/tencent/bugly/proguard/s;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/s;->g:I

    .line 243
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/s;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/s;->h:J

    .line 244
    return-void
.end method

.method protected a(ZILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    if-eqz p1, :cond_1

    .line 84
    const-string v0, "upload success! %d"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    iget v2, v2, Lcom/tencent/bugly/proguard/O;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 92
    :goto_0
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/s;->h:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/s;->i:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/r;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/s;->h:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/s;->i:J

    add-long/2addr v0, v2

    .line 95
    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(J)V

    .line 97
    :cond_0
    return-void

    .line 88
    :cond_1
    const-string v0, "upload fail! %d %d %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    iget v2, v2, Lcom/tencent/bugly/proguard/O;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    iget v2, v2, Lcom/tencent/bugly/proguard/O;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 2
    .parameter

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/s;->i:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/s;->i:J

    .line 250
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/32 v7, 0x200000

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 148
    iget-object v3, p0, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/r;->b()J

    move-result-wide v3

    .line 149
    cmp-long v5, v3, v7

    if-ltz v5, :cond_1

    .line 151
    const-string v2, "up too much wait to next time ! %d %d "

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    if-nez v5, :cond_4

    :goto_1
    aput-object v2, v3, v4

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 158
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/s;->a()V

    .line 160
    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->a:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->c:Lcom/tencent/bugly/proguard/n;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->e:Lcom/tencent/bugly/proguard/p;

    if-nez v2, :cond_5

    .line 162
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "up task args error! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/s;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/s;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/s;->e:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "upload fail, illegal access error! "

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/bugly/proguard/s;->a(ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 231
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 232
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    iget v3, v3, Lcom/tencent/bugly/proguard/O;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " throw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    iget v2, v2, Lcom/tencent/bugly/proguard/O;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v4

    .line 168
    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/O;)[B

    move-result-object v5

    .line 169
    if-eqz v5, :cond_0

    .line 174
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 175
    const-string v2, "pid"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/s;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v2, "bid"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/s;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v2, "pver"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/s;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v0

    move v3, v0

    .line 181
    :goto_2
    const/4 v7, 0x5

    if-ge v3, v7, :cond_11

    .line 183
    if-eqz v3, :cond_6

    .line 184
    const-wide/32 v7, 0xea60

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 186
    :cond_6
    :goto_3
    add-int/lit8 v2, v3, 0x1

    .line 188
    :try_start_3
    iget-object v3, p0, Lcom/tencent/bugly/proguard/s;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 190
    const-string v3, "Network is not availiable!"

    const-string v7, "try upload fail! %d %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    iget v10, v10, Lcom/tencent/bugly/proguard/O;->g:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v3, v2

    move v2, v0

    .line 192
    goto :goto_2

    .line 184
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 195
    :cond_7
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 197
    iget-object v3, p0, Lcom/tencent/bugly/proguard/s;->e:Lcom/tencent/bugly/proguard/p;

    iget-object v7, v4, Lcom/tencent/bugly/crashreport/common/strategy/b;->h:Ljava/lang/String;

    invoke-virtual {v3, v7, v5, p0, v6}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/q;Ljava/util/Map;)[B

    move-result-object v3

    .line 199
    if-nez v3, :cond_8

    .line 201
    const-string v3, "upload fail, no response! "

    const-string v7, "try upload fail! %d %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/O;

    iget v10, v10, Lcom/tencent/bugly/proguard/O;->g:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v3, v2

    move v2, v1

    .line 203
    goto :goto_2

    .line 206
    :cond_8
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 208
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/a;->a([BLcom/tencent/bugly/crashreport/common/strategy/b;)Lcom/tencent/bugly/proguard/P;

    move-result-object v3

    .line 210
    if-nez v3, :cond_9

    .line 212
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "upload fail, resp error! "

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/bugly/proguard/s;->a(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_9
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v5, v3, Lcom/tencent/bugly/proguard/P;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    iget-object v2, v3, Lcom/tencent/bugly/proguard/P;->c:[B

    if-nez v2, :cond_a

    move v2, v0

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 217
    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->c:Lcom/tencent/bugly/proguard/n;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/s;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    if-nez v3, :cond_b

    const-string v1, "resp == null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_5
    if-nez v0, :cond_10

    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "upload fail, resp error! "

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/bugly/proguard/s;->a(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_a
    iget-object v2, v3, Lcom/tencent/bugly/proguard/P;->c:[B

    array-length v2, v2

    goto :goto_4

    .line 217
    :cond_b
    iget-byte v5, v3, Lcom/tencent/bugly/proguard/P;->a:B

    if-eqz v5, :cond_c

    const-string v1, "resp result error %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-byte v3, v3, Lcom/tencent/bugly/proguard/P;->a:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/tencent/bugly/proguard/P;->d:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->m()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    iget-object v5, v3, Lcom/tencent/bugly/proguard/P;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/bugly/proguard/n;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->m()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/tencent/bugly/proguard/n;->a(J)V

    iget v2, v3, Lcom/tencent/bugly/proguard/P;->b:I

    const/16 v5, 0x1fe

    if-ne v2, v5, :cond_f

    iget-object v2, v3, Lcom/tencent/bugly/proguard/P;->c:[B

    if-nez v2, :cond_d

    const-string v1, "remote data is miss! %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v3, v3, Lcom/tencent/bugly/proguard/P;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    iget-object v2, v3, Lcom/tencent/bugly/proguard/P;->c:[B

    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->b([B)Lcom/tencent/bugly/proguard/R;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v1, "remote data is error! %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v3, v3, Lcom/tencent/bugly/proguard/P;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v5, v2, Lcom/tencent/bugly/proguard/R;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x1

    iget-boolean v5, v2, Lcom/tencent/bugly/proguard/R;->c:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x2

    iget-boolean v5, v2, Lcom/tencent/bugly/proguard/R;->b:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    invoke-virtual {v4, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Lcom/tencent/bugly/proguard/R;)V

    :cond_f
    move v0, v1

    goto/16 :goto_5

    .line 223
    :cond_10
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/bugly/proguard/s;->a(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_11
    const/4 v0, 0x0

    const-string v1, "try OT Fail! "

    invoke-virtual {p0, v0, v2, v1}, Lcom/tencent/bugly/proguard/s;->a(ZILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
