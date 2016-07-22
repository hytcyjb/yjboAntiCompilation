.class public Lcom/squareup/okhttp/s;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private A:I

.field private final d:Lcom/squareup/okhttp/internal/g;

.field private e:Lcom/squareup/okhttp/m;

.field private f:Ljava/net/Proxy;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/q;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/q;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/net/ProxySelector;

.field private l:Ljava/net/CookieHandler;

.field private m:Lcom/squareup/okhttp/internal/c;

.field private n:Lcom/squareup/okhttp/c;

.field private o:Ljavax/net/SocketFactory;

.field private p:Ljavax/net/ssl/SSLSocketFactory;

.field private q:Ljavax/net/ssl/HostnameVerifier;

.field private r:Lcom/squareup/okhttp/g;

.field private s:Lcom/squareup/okhttp/b;

.field private t:Lcom/squareup/okhttp/j;

.field private u:Lcom/squareup/okhttp/n;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v5, [Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/squareup/okhttp/internal/h;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->a:Ljava/util/List;

    .line 61
    new-array v0, v5, [Lcom/squareup/okhttp/k;

    sget-object v1, Lcom/squareup/okhttp/k;->a:Lcom/squareup/okhttp/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/k;->b:Lcom/squareup/okhttp/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/k;->c:Lcom/squareup/okhttp/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/squareup/okhttp/internal/h;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->b:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/squareup/okhttp/s$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/s$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->i:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->j:Ljava/util/List;

    .line 181
    iput-boolean v1, p0, Lcom/squareup/okhttp/s;->v:Z

    .line 182
    iput-boolean v1, p0, Lcom/squareup/okhttp/s;->w:Z

    .line 183
    iput-boolean v1, p0, Lcom/squareup/okhttp/s;->x:Z

    .line 184
    iput v2, p0, Lcom/squareup/okhttp/s;->y:I

    .line 185
    iput v2, p0, Lcom/squareup/okhttp/s;->z:I

    .line 186
    iput v2, p0, Lcom/squareup/okhttp/s;->A:I

    .line 189
    new-instance v0, Lcom/squareup/okhttp/internal/g;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/g;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->d:Lcom/squareup/okhttp/internal/g;

    .line 190
    new-instance v0, Lcom/squareup/okhttp/m;

    invoke-direct {v0}, Lcom/squareup/okhttp/m;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->e:Lcom/squareup/okhttp/m;

    .line 191
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/s;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->i:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->j:Ljava/util/List;

    .line 181
    iput-boolean v1, p0, Lcom/squareup/okhttp/s;->v:Z

    .line 182
    iput-boolean v1, p0, Lcom/squareup/okhttp/s;->w:Z

    .line 183
    iput-boolean v1, p0, Lcom/squareup/okhttp/s;->x:Z

    .line 184
    iput v2, p0, Lcom/squareup/okhttp/s;->y:I

    .line 185
    iput v2, p0, Lcom/squareup/okhttp/s;->z:I

    .line 186
    iput v2, p0, Lcom/squareup/okhttp/s;->A:I

    .line 194
    iget-object v0, p1, Lcom/squareup/okhttp/s;->d:Lcom/squareup/okhttp/internal/g;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->d:Lcom/squareup/okhttp/internal/g;

    .line 195
    iget-object v0, p1, Lcom/squareup/okhttp/s;->e:Lcom/squareup/okhttp/m;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->e:Lcom/squareup/okhttp/m;

    .line 196
    iget-object v0, p1, Lcom/squareup/okhttp/s;->f:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->f:Ljava/net/Proxy;

    .line 197
    iget-object v0, p1, Lcom/squareup/okhttp/s;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->g:Ljava/util/List;

    .line 198
    iget-object v0, p1, Lcom/squareup/okhttp/s;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->h:Ljava/util/List;

    .line 199
    iget-object v0, p0, Lcom/squareup/okhttp/s;->i:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/okhttp/s;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v0, p0, Lcom/squareup/okhttp/s;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/okhttp/s;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v0, p1, Lcom/squareup/okhttp/s;->k:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->k:Ljava/net/ProxySelector;

    .line 202
    iget-object v0, p1, Lcom/squareup/okhttp/s;->l:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->l:Ljava/net/CookieHandler;

    .line 203
    iget-object v0, p1, Lcom/squareup/okhttp/s;->n:Lcom/squareup/okhttp/c;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->n:Lcom/squareup/okhttp/c;

    .line 204
    iget-object v0, p0, Lcom/squareup/okhttp/s;->n:Lcom/squareup/okhttp/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/s;->n:Lcom/squareup/okhttp/c;

    iget-object v0, v0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/internal/c;

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/s;->m:Lcom/squareup/okhttp/internal/c;

    .line 205
    iget-object v0, p1, Lcom/squareup/okhttp/s;->o:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->o:Ljavax/net/SocketFactory;

    .line 206
    iget-object v0, p1, Lcom/squareup/okhttp/s;->p:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 207
    iget-object v0, p1, Lcom/squareup/okhttp/s;->q:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 208
    iget-object v0, p1, Lcom/squareup/okhttp/s;->r:Lcom/squareup/okhttp/g;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->r:Lcom/squareup/okhttp/g;

    .line 209
    iget-object v0, p1, Lcom/squareup/okhttp/s;->s:Lcom/squareup/okhttp/b;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->s:Lcom/squareup/okhttp/b;

    .line 210
    iget-object v0, p1, Lcom/squareup/okhttp/s;->t:Lcom/squareup/okhttp/j;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->t:Lcom/squareup/okhttp/j;

    .line 211
    iget-object v0, p1, Lcom/squareup/okhttp/s;->u:Lcom/squareup/okhttp/n;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->u:Lcom/squareup/okhttp/n;

    .line 212
    iget-boolean v0, p1, Lcom/squareup/okhttp/s;->v:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/s;->v:Z

    .line 213
    iget-boolean v0, p1, Lcom/squareup/okhttp/s;->w:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/s;->w:Z

    .line 214
    iget-boolean v0, p1, Lcom/squareup/okhttp/s;->x:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/s;->x:Z

    .line 215
    iget v0, p1, Lcom/squareup/okhttp/s;->y:I

    iput v0, p0, Lcom/squareup/okhttp/s;->y:I

    .line 216
    iget v0, p1, Lcom/squareup/okhttp/s;->z:I

    iput v0, p0, Lcom/squareup/okhttp/s;->z:I

    .line 217
    iget v0, p1, Lcom/squareup/okhttp/s;->A:I

    iput v0, p0, Lcom/squareup/okhttp/s;->A:I

    .line 218
    return-void

    .line 204
    :cond_0
    iget-object v0, p1, Lcom/squareup/okhttp/s;->m:Lcom/squareup/okhttp/internal/c;

    goto :goto_0
.end method

.method private declared-synchronized z()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 669
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/squareup/okhttp/s;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 671
    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 672
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 673
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 678
    :cond_0
    :try_start_2
    sget-object v0, Lcom/squareup/okhttp/s;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/squareup/okhttp/s;->y:I

    return v0
.end method

.method public a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/e;
    .locals 1
    .parameter

    .prologue
    .line 603
    new-instance v0, Lcom/squareup/okhttp/e;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/e;-><init>(Lcom/squareup/okhttp/s;Lcom/squareup/okhttp/t;)V

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 227
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 230
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/s;->y:I

    .line 233
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/squareup/okhttp/s;->z:I

    return v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 247
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 250
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/s;->z:I

    .line 253
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/squareup/okhttp/s;->A:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/squareup/okhttp/s;->y()Lcom/squareup/okhttp/s;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/squareup/okhttp/s;->f:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/squareup/okhttp/s;->k:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/squareup/okhttp/s;->l:Ljava/net/CookieHandler;

    return-object v0
.end method

.method g()Lcom/squareup/okhttp/internal/c;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/squareup/okhttp/s;->m:Lcom/squareup/okhttp/internal/c;

    return-object v0
.end method

.method public h()Lcom/squareup/okhttp/n;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/s;->u:Lcom/squareup/okhttp/n;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/squareup/okhttp/s;->o:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/squareup/okhttp/s;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/squareup/okhttp/s;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lcom/squareup/okhttp/g;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/squareup/okhttp/s;->r:Lcom/squareup/okhttp/g;

    return-object v0
.end method

.method public m()Lcom/squareup/okhttp/b;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/squareup/okhttp/s;->s:Lcom/squareup/okhttp/b;

    return-object v0
.end method

.method public n()Lcom/squareup/okhttp/j;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/squareup/okhttp/s;->t:Lcom/squareup/okhttp/j;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/squareup/okhttp/s;->v:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/squareup/okhttp/s;->w:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/squareup/okhttp/s;->x:Z

    return v0
.end method

.method r()Lcom/squareup/okhttp/internal/g;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/squareup/okhttp/s;->d:Lcom/squareup/okhttp/internal/g;

    return-object v0
.end method

.method public s()Lcom/squareup/okhttp/m;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/squareup/okhttp/s;->e:Lcom/squareup/okhttp/m;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/squareup/okhttp/s;->g:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/squareup/okhttp/s;->h:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/squareup/okhttp/s;->i:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/squareup/okhttp/s;->j:Ljava/util/List;

    return-object v0
.end method

.method x()Lcom/squareup/okhttp/s;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Lcom/squareup/okhttp/s;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/s;-><init>(Lcom/squareup/okhttp/s;)V

    .line 621
    iget-object v1, v0, Lcom/squareup/okhttp/s;->k:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 622
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/s;->k:Ljava/net/ProxySelector;

    .line 624
    :cond_0
    iget-object v1, v0, Lcom/squareup/okhttp/s;->l:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 625
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/s;->l:Ljava/net/CookieHandler;

    .line 627
    :cond_1
    iget-object v1, v0, Lcom/squareup/okhttp/s;->o:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 628
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/s;->o:Ljavax/net/SocketFactory;

    .line 630
    :cond_2
    iget-object v1, v0, Lcom/squareup/okhttp/s;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 631
    invoke-direct {p0}, Lcom/squareup/okhttp/s;->z()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/s;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 633
    :cond_3
    iget-object v1, v0, Lcom/squareup/okhttp/s;->q:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    .line 634
    sget-object v1, Lcom/squareup/okhttp/internal/a/b;->a:Lcom/squareup/okhttp/internal/a/b;

    iput-object v1, v0, Lcom/squareup/okhttp/s;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 636
    :cond_4
    iget-object v1, v0, Lcom/squareup/okhttp/s;->r:Lcom/squareup/okhttp/g;

    if-nez v1, :cond_5

    .line 637
    sget-object v1, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/g;

    iput-object v1, v0, Lcom/squareup/okhttp/s;->r:Lcom/squareup/okhttp/g;

    .line 639
    :cond_5
    iget-object v1, v0, Lcom/squareup/okhttp/s;->s:Lcom/squareup/okhttp/b;

    if-nez v1, :cond_6

    .line 640
    sget-object v1, Lcom/squareup/okhttp/internal/http/a;->a:Lcom/squareup/okhttp/b;

    iput-object v1, v0, Lcom/squareup/okhttp/s;->s:Lcom/squareup/okhttp/b;

    .line 642
    :cond_6
    iget-object v1, v0, Lcom/squareup/okhttp/s;->t:Lcom/squareup/okhttp/j;

    if-nez v1, :cond_7

    .line 643
    invoke-static {}, Lcom/squareup/okhttp/j;->a()Lcom/squareup/okhttp/j;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/s;->t:Lcom/squareup/okhttp/j;

    .line 645
    :cond_7
    iget-object v1, v0, Lcom/squareup/okhttp/s;->g:Ljava/util/List;

    if-nez v1, :cond_8

    .line 646
    sget-object v1, Lcom/squareup/okhttp/s;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/squareup/okhttp/s;->g:Ljava/util/List;

    .line 648
    :cond_8
    iget-object v1, v0, Lcom/squareup/okhttp/s;->h:Ljava/util/List;

    if-nez v1, :cond_9

    .line 649
    sget-object v1, Lcom/squareup/okhttp/s;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/squareup/okhttp/s;->h:Ljava/util/List;

    .line 651
    :cond_9
    iget-object v1, v0, Lcom/squareup/okhttp/s;->u:Lcom/squareup/okhttp/n;

    if-nez v1, :cond_a

    .line 652
    sget-object v1, Lcom/squareup/okhttp/n;->a:Lcom/squareup/okhttp/n;

    iput-object v1, v0, Lcom/squareup/okhttp/s;->u:Lcom/squareup/okhttp/n;

    .line 654
    :cond_a
    return-object v0
.end method

.method public y()Lcom/squareup/okhttp/s;
    .locals 1

    .prologue
    .line 683
    new-instance v0, Lcom/squareup/okhttp/s;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/s;-><init>(Lcom/squareup/okhttp/s;)V

    return-object v0
.end method
