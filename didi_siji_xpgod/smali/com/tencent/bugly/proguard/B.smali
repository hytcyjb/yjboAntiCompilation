.class public final Lcom/tencent/bugly/proguard/B;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/proguard/y;

.field private c:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field private d:Lcom/tencent/bugly/proguard/n;

.field private e:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/tencent/bugly/proguard/B;->b:Lcom/tencent/bugly/proguard/y;

    .line 49
    iput-object p3, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 50
    iput-object p4, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    .line 51
    iput-object p5, p0, Lcom/tencent/bugly/proguard/B;->e:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    .line 52
    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v4, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/x;-><init>()V

    .line 136
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->i()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->A:J

    .line 137
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->g()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->B:J

    .line 138
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->k()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->C:J

    .line 139
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->s()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->D:J

    .line 140
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->r()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->E:J

    .line 141
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->t()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->F:J

    .line 142
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    .line 145
    const/4 v1, 0x4

    iput v1, v4, Lcom/tencent/bugly/proguard/x;->b:I

    .line 146
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->x()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 153
    const-string v1, ""

    .line 154
    if-eqz p4, :cond_0

    .line 156
    const-string v2, "\n"

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 159
    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 163
    :cond_0
    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 164
    iput-object p4, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    .line 165
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->r:J

    .line 166
    iget-object v1, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/a;->c([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    .line 167
    const/16 v1, 0x4e20

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    .line 169
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->w()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    .line 173
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->b()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->K:J

    .line 174
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/a;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v4, Lcom/tencent/bugly/proguard/x;->L:Z

    .line 176
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->e:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    if-eqz v1, :cond_3

    .line 180
    :try_start_0
    const-string v1, "start notify crashHandleCallback!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->e:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    const/4 v2, 0x3

    iget-object v3, v4, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    iget-object v6, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 182
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    .line 186
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 188
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    .line 189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x64

    if-le v3, v7, :cond_2

    .line 195
    const/4 v3, 0x0

    const/16 v7, 0x64

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v3, "setted key length is over limit %d substring to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v3, v7}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    move-object v3, v1

    .line 199
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0x7530

    if-le v1, v7, :cond_6

    .line 202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0x7530

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    const-string v2, "setted %s value length is over limit %d substring"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x7530

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    :goto_3
    iget-object v2, v4, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v2, "add setted key %s value size:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 218
    const-string v2, "crash handle callback somthing wrong! %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 221
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    :cond_3
    :goto_4
    return-object v4

    .line 188
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 199
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 207
    :cond_6
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 213
    :cond_7
    invoke-interface {v5, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 232
    monitor-enter p0

    :try_start_0
    const-string v2, "Java Crash Happen"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :try_start_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    .line 236
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    const-string v2, "waiting for remote sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 243
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    :goto_0
    add-int/lit16 v1, v1, 0x1f4

    .line 245
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_0

    .line 246
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    const-string v1, "no remote but still store!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v1

    .line 260
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/b;->d:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 262
    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    const-string v1, "#++++++++++Simple Record By Bugly++++++++++#"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# PKG NAME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# APP VER: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TYPE: JAVA"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TIME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH PROCESS: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH THREAD: %s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_4

    const-string v0, "UNKNOWN"

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH STACK: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v1, "remoteClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 288
    :try_start_4
    const-string v0, "handle end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    :goto_2
    monitor-exit p0

    return-void

    .line 243
    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 281
    :try_start_6
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 288
    :cond_3
    :try_start_7
    const-string v0, "handle end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 263
    :cond_4
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 268
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/B;->b(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;

    move-result-object v3

    .line 269
    if-nez v3, :cond_6

    .line 271
    const-string v0, "pkg crash datas fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v1, "packageFail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 288
    :try_start_9
    const-string v0, "handle end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 276
    :cond_6
    :try_start_a
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v4

    const-string v1, "#++++++++++Detail Record By Bugly++++++++++#"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# You can go to Bugly(http:\\\\bugly.qq.com) to see more detail of this Report!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# REPORT ID: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# PKG NAME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# APP VER: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v1, v3, Lcom/tencent/bugly/proguard/x;->b:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    move-object v2, v1

    :goto_3
    const-string v5, "# LAUNCH TIME:%s"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v1, Ljava/util/Date;

    iget-wide v8, v3, Lcom/tencent/bugly/proguard/x;->K:J

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-nez v1, :cond_7

    move-object v1, v0

    :goto_4
    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TYPE: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TIME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    if-nez v6, :cond_8

    :goto_5
    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH PROCESS: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH THREAD: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, v3, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH DEVICE: %s %s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->z()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ROOTED"

    :goto_6
    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->A:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->B:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->C:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->E:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->F:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION TYPE: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION MSG: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION STACK:\n %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/tencent/bugly/proguard/B;->b:Lcom/tencent/bugly/proguard/y;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/y;->a(Lcom/tencent/bugly/proguard/x;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 288
    :try_start_b
    const-string v0, "handle end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 276
    :pswitch_0
    :try_start_c
    const-string v1, "U3D_CRASH"

    move-object v2, v1

    goto/16 :goto_3

    :cond_7
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_9
    const-string v0, "UNROOT"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_6

    .line 288
    :catchall_1
    move-exception v0

    :try_start_d
    const-string v1, "handle end"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
