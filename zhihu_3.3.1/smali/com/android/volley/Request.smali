.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$Priority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/volley/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static o:J


# instance fields
.field private final a:Lcom/android/volley/l$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:I

.field private g:Lcom/android/volley/i$a;

.field private h:Ljava/lang/Integer;

.field private i:Lcom/android/volley/h;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/android/volley/k;

.field private n:Lcom/android/volley/a$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/i$a;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-boolean v0, Lcom/android/volley/l$a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/volley/l$a;

    invoke-direct {v0}, Lcom/android/volley/l$a;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/l$a;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->j:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/volley/Request;->k:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/volley/Request;->l:Z

    .line 105
    iput-object v1, p0, Lcom/android/volley/Request;->n:Lcom/android/volley/a$a;

    .line 130
    iput p1, p0, Lcom/android/volley/Request;->b:I

    .line 131
    iput-object p2, p0, Lcom/android/volley/Request;->c:Ljava/lang/String;

    .line 132
    invoke-static {p1, p2}, Lcom/android/volley/Request;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/android/volley/Request;->g:Lcom/android/volley/i$a;

    .line 134
    new-instance v0, Lcom/android/volley/c;

    invoke-direct {v0}, Lcom/android/volley/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/volley/Request;->a(Lcom/android/volley/k;)Lcom/android/volley/Request;

    .line 136
    invoke-static {p2}, Lcom/android/volley/Request;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/volley/Request;->f:I

    .line 137
    return-void

    :cond_0
    move-object v0, v1

    .line 59
    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/android/volley/Request;->o:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/android/volley/Request;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 487
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/volley/Request;)Lcom/android/volley/l$a;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/l$a;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/volley/Request;->b:I

    return v0
.end method

.method public a(Lcom/android/volley/Request;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/volley/Request;->t()Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 609
    invoke-virtual {p1}, Lcom/android/volley/Request;->t()Lcom/android/volley/Request$Priority;

    move-result-object v1

    .line 613
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/volley/Request;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/volley/Request;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final a(I)Lcom/android/volley/Request;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Request;->h:Ljava/lang/Integer;

    .line 270
    return-object p0
.end method

.method public a(Lcom/android/volley/a$a;)Lcom/android/volley/Request;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/a$a;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/volley/Request;->n:Lcom/android/volley/a$a;

    .line 326
    return-object p0
.end method

.method public a(Lcom/android/volley/h;)Lcom/android/volley/Request;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/h;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/volley/Request;->i:Lcom/android/volley/h;

    .line 260
    return-object p0
.end method

.method public a(Lcom/android/volley/k;)Lcom/android/volley/Request;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/k;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/volley/Request;->m:Lcom/android/volley/k;

    .line 202
    return-object p0
.end method

.method public final a(Z)Lcom/android/volley/Request;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/android/volley/Request;->j:Z

    .line 500
    return-object p0
.end method

.method protected a(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0
    .parameter

    .prologue
    .line 578
    return-object p1
.end method

.method protected abstract a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/i",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/volley/l$a;->a:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/l$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/volley/l$a;->a(Ljava/lang/String;J)V

    .line 212
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/volley/Request;->f:I

    return v0
.end method

.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/volley/Request;->g:Lcom/android/volley/i$a;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/volley/Request;->g:Lcom/android/volley/i$a;

    invoke-interface {v0, p1}, Lcom/android/volley/i$a;->a(Lcom/android/volley/VolleyError;)V

    .line 600
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/volley/Request;->i:Lcom/android/volley/h;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/volley/Request;->i:Lcom/android/volley/h;

    invoke-virtual {v0, p0}, Lcom/android/volley/h;->b(Lcom/android/volley/Request;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/volley/Request;->c()V

    .line 224
    :cond_0
    sget-boolean v0, Lcom/android/volley/l$a;->a:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 226
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 229
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 230
    new-instance v3, Lcom/android/volley/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/volley/Request$1;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/l$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/volley/l$a;->a(Ljava/lang/String;J)V

    .line 241
    iget-object v0, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/l$a;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/l$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/Request;->g:Lcom/android/volley/i$a;

    .line 250
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/volley/Request;->d:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/volley/Request;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/volley/Request;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/Request;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/volley/Request;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/volley/Request;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/android/volley/a$a;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/volley/Request;->n:Lcom/android/volley/a$a;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->k:Z

    .line 341
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/volley/Request;->k:Z

    return v0
.end method

.method public j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/volley/Request;->o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/volley/Request;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/volley/Request;->k()Ljava/util/Map;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/android/volley/Request;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()[B
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/volley/Request;->o()Ljava/util/Map;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/volley/Request;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/volley/Request;->j:Z

    return v0
.end method

.method public t()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/volley/Request;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->t()Lcom/android/volley/Request$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/volley/Request;->m:Lcom/android/volley/k;

    invoke-interface {v0}, Lcom/android/volley/k;->a()I

    move-result v0

    return v0
.end method

.method public v()Lcom/android/volley/k;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/volley/Request;->m:Lcom/android/volley/k;

    return-object v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->l:Z

    .line 550
    return-void
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/android/volley/Request;->l:Z

    return v0
.end method
