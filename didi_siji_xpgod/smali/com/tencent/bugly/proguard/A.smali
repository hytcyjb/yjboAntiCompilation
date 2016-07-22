.class public final Lcom/tencent/bugly/proguard/A;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/proguard/y;

.field private c:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field private d:Lcom/tencent/bugly/proguard/n;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/tencent/bugly/proguard/A;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/tencent/bugly/proguard/A;->b:Lcom/tencent/bugly/proguard/y;

    .line 44
    iput-object p3, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 45
    iput-object p4, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    .line 46
    iput-object p5, p0, Lcom/tencent/bugly/proguard/A;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    .line 47
    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Lcom/tencent/bugly/proguard/x;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0x4e20

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 208
    new-instance v4, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/x;-><init>()V

    .line 211
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->i()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/proguard/x;->A:J

    .line 212
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->g()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/proguard/x;->B:J

    .line 213
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->k()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/proguard/x;->C:J

    .line 214
    iget-object v2, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->s()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/proguard/x;->D:J

    .line 215
    iget-object v2, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->r()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/proguard/x;->E:J

    .line 216
    iget-object v2, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->t()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/proguard/x;->F:J

    .line 217
    iget-object v2, p0, Lcom/tencent/bugly/proguard/A;->a:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    .line 219
    if-eqz p3, :cond_0

    move v1, v3

    :cond_0
    iput v1, v4, Lcom/tencent/bugly/proguard/x;->b:I

    .line 220
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->x()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    .line 225
    if-nez p2, :cond_e

    const/4 v1, 0x0

    move-object v2, v1

    .line 226
    :goto_0
    if-nez v2, :cond_2

    .line 228
    const-string v1, "throw null,return"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    const/4 v1, 0x0

    .line 326
    :goto_1
    return-object v1

    .line 225
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 233
    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v1

    .line 234
    if-nez v1, :cond_3

    .line 235
    const-string v1, ""

    .line 236
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    .line 238
    if-eq v2, p2, :cond_8

    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 242
    const/16 v8, 0x3e8

    invoke-static {v2, v8}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 243
    iget-object v8, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 244
    const-string v8, ""

    iput-object v8, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 245
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "\n......"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "\ncause by:\n"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, v4, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {v2, v10}, Lcom/tencent/bugly/proguard/a;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    .line 267
    :goto_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->r:J

    .line 269
    iget-object v1, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/a;->c([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    .line 270
    invoke-static {v10, v5}, Lcom/tencent/bugly/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    .line 271
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->w()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    .line 275
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->b()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->K:J

    .line 276
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/a;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v4, Lcom/tencent/bugly/proguard/x;->L:Z

    .line 278
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    if-eqz v1, :cond_7

    .line 282
    :try_start_0
    const-string v1, "start notify crashHandleCallback!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 283
    iget-object v2, p0, Lcom/tencent/bugly/proguard/A;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    if-eqz p3, :cond_a

    move v1, v3

    :goto_4
    iget-object v6, v4, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    iget-object v7, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    iget-object v8, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v2, v1, v6, v7, v8}, Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 287
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v4, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    .line 288
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 290
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    move v1, v3

    :goto_6
    if-nez v1, :cond_5

    .line 291
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_6

    .line 297
    const/4 v6, 0x0

    const/16 v8, 0x64

    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 298
    const-string v6, "setted key length is over limit %d substring to %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v6, v8}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_6
    move-object v6, v1

    .line 301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    move v1, v3

    :goto_7
    if-nez v1, :cond_d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v8, 0x7530

    if-le v1, v8, :cond_d

    .line 304
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

    .line 305
    const-string v2, "setted %s value length is over limit %d substring"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x7530

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 312
    :goto_8
    iget-object v2, v4, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v2, "add setted key %s value size:%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v6

    invoke-static {v2, v8}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 317
    :catch_0
    move-exception v1

    .line 319
    const-string v2, "crash handle callback somthing wrong! %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 320
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 322
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    move-object v1, v4

    .line 326
    goto/16 :goto_1

    .line 259
    :cond_8
    iput-object v6, v4, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 260
    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 261
    iget-object v1, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 262
    const-string v1, ""

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 263
    :cond_9
    iput-object v7, v4, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 264
    invoke-static {p2, v10}, Lcom/tencent/bugly/proguard/a;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    move v1, v5

    .line 283
    goto/16 :goto_4

    :cond_b
    move v1, v5

    .line 290
    goto/16 :goto_6

    :cond_c
    move v1, v5

    .line 301
    goto/16 :goto_7

    .line 309
    :cond_d
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_8

    :cond_e
    move-object v1, p2

    goto/16 :goto_2
.end method


# virtual methods
.method protected final declared-synchronized a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 339
    monitor-enter p0

    if-eqz p3, :cond_3

    .line 340
    :try_start_0
    const-string v2, "Java Crash Happen"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    .line 347
    iget-object v2, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    const-string v2, "waiting for remote sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 354
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 355
    :goto_1
    add-int/lit16 v1, v1, 0x1f4

    .line 356
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_0

    .line 357
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    const-string v1, "no remote but still store!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v1

    .line 373
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/b;->d:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 375
    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    if-eqz p3, :cond_6

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

    if-nez p1, :cond_5

    const-string v0, "UNKNOWN"

    :goto_2
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH STACK: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/Throwable;)Z

    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    :goto_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v1, "remoteClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 401
    if-nez p3, :cond_8

    .line 403
    :try_start_4
    const-string v0, "not to shut down return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 423
    :goto_4
    monitor-exit p0

    return-void

    .line 342
    :cond_3
    :try_start_5
    const-string v2, "Java Catch Happen"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 354
    :catch_0
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 392
    :catch_1
    move-exception v0

    .line 394
    :try_start_7
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 396
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 401
    :cond_4
    if-nez p3, :cond_17

    .line 403
    :try_start_8
    const-string v0, "not to shut down return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 376
    :cond_5
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v1, "#++++++++++Simple Record By Bugly++++++++++#"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# PKG NAME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# APP VER: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TYPE: JAVA"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

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

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH PROCESS: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH THREAD: %s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_7

    const-string v0, "UNKNOWN"

    :goto_5
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH STACK: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 401
    :catchall_1
    move-exception v0

    if-nez p3, :cond_19

    .line 403
    :try_start_a
    const-string v0, "not to shut down return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 376
    :cond_7
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v0

    goto :goto_5

    .line 407
    :cond_8
    :try_start_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_9

    .line 409
    const-string v0, "sys default last handle start!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 413
    const-string v0, "sys default last handle end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 417
    :cond_9
    const-string v0, "crashreport last handle start!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    const-string v0, "current process die"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 421
    const-string v0, "crashreport last handle end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 381
    :cond_a
    :try_start_d
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/A;->b(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Lcom/tencent/bugly/proguard/x;

    move-result-object v3

    .line 382
    if-nez v3, :cond_d

    .line 384
    const-string v0, "pkg crash datas fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v1, "packageFail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    .line 401
    if-nez p3, :cond_b

    .line 403
    :try_start_e
    const-string v0, "not to shut down return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 407
    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_c

    .line 409
    const-string v0, "sys default last handle start!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 413
    const-string v0, "sys default last handle end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 417
    :cond_c
    const-string v0, "crashreport last handle start!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    const-string v0, "current process die"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 421
    const-string v0, "crashreport last handle end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    .line 389
    :cond_d
    :try_start_f
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v4

    iget v1, v3, Lcom/tencent/bugly/proguard/x;->b:I

    if-nez v1, :cond_11

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

    :pswitch_0
    const-string v1, "UNKNOWN"

    move-object v2, v1

    :goto_6
    const-string v5, "# LAUNCH TIME:%s"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v1, Ljava/util/Date;

    iget-wide v8, v3, Lcom/tencent/bugly/proguard/x;->K:J

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-nez v1, :cond_e

    move-object v1, v0

    :goto_7
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

    if-nez v6, :cond_f

    :goto_8
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

    if-eqz v0, :cond_10

    const-string v0, "ROOTED"

    :goto_9
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

    .line 390
    :goto_a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->b:Lcom/tencent/bugly/proguard/y;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/y;->a(Lcom/tencent/bugly/proguard/x;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    .line 401
    if-nez p3, :cond_15

    .line 403
    :try_start_10
    const-string v0, "not to shut down return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_4

    .line 389
    :pswitch_1
    :try_start_11
    const-string v1, "JAVA_CRASH"

    move-object v2, v1

    goto/16 :goto_6

    :pswitch_2
    const-string v1, "JAVA_CATCHED"

    move-object v2, v1

    goto/16 :goto_6

    :cond_e
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_f
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_10
    const-string v0, "UNROOT"

    goto/16 :goto_9

    :cond_11
    const-string v1, "#++++++++++Detail Record By Bugly++++++++++#"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# You can go to Bugly(http:\\\\bugly.qq.com) to see more detail of this Report!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# REPORT ID: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# PKG NAME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# APP VER: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v1, v3, Lcom/tencent/bugly/proguard/x;->b:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    const-string v1, "UNKNOWN"

    move-object v2, v1

    :goto_b
    const-string v5, "# LAUNCH TIME:%s"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v1, Ljava/util/Date;

    iget-wide v8, v3, Lcom/tencent/bugly/proguard/x;->K:J

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-nez v1, :cond_12

    move-object v1, v0

    :goto_c
    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TYPE: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TIME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    if-nez v6, :cond_13

    :goto_d
    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH PROCESS: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH THREAD: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, v3, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

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

    if-eqz v0, :cond_14

    const-string v0, "ROOTED"

    :goto_e
    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

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

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

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

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION TYPE: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION MSG: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION STACK:\n %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_a

    :pswitch_4
    const-string v1, "JAVA_CRASH"

    move-object v2, v1

    goto/16 :goto_b

    :pswitch_5
    const-string v1, "JAVA_CATCHED"

    move-object v2, v1

    goto/16 :goto_b

    :cond_12
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    :cond_13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_14
    const-string v0, "UNROOT"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_e

    .line 407
    :cond_15
    :try_start_12
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_16

    .line 409
    const-string v0, "sys default last handle start!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 413
    const-string v0, "sys default last handle end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 417
    :cond_16
    const-string v0, "crashreport last handle start!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    const-string v0, "current process die"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 421
    const-string v0, "crashreport last handle end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 407
    :cond_17
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_18

    .line 409
    const-string v0, "sys default last handle start!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 413
    const-string v0, "sys default last handle end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 417
    :cond_18
    const-string v0, "crashreport last handle start!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    const-string v0, "current process die"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 421
    const-string v0, "crashreport last handle end!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 407
    :cond_19
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1a

    .line 409
    const-string v1, "sys default last handle start!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 411
    iget-object v1, p0, Lcom/tencent/bugly/proguard/A;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 413
    const-string v1, "sys default last handle end!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 421
    :goto_f
    throw v0

    .line 417
    :cond_1a
    const-string v1, "crashreport last handle start!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    const-string v1, "current process die"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 421
    const-string v1, "crashreport last handle end!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_f

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 429
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/bugly/proguard/A;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
