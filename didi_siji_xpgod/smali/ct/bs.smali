.class public final Lct/bs;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/bs$a;
    }
.end annotation


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Lct/bs$a;

.field private final d:Lct/b;

.field private final e:Lct/br;

.field private final f:Lct/by;

.field private final g:Lct/bp;

.field private final h:Lct/bu;

.field private final i:Lct/bx;

.field private final j:Lct/bo;

.field private final k:Lct/bh;

.field private l:Lct/ca;

.field private m:Lct/ce;

.field private n:Lct/cb;

.field private final o:Lct/be;

.field private p:Lcom/tencent/map/geolocation/TencentLocationListener;

.field private final q:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private r:Lct/ck;

.field private s:I

.field private final t:Z

.field private u:Ljava/lang/String;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 114
    sput-object v0, Lct/bs;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lct/bs;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "ERROR_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lct/bs;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "BAD_JSON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lct/bs;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "DEFLECT_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lct/be;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v3, p0, Lct/bs;->b:I

    .line 143
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    iput-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 150
    const/16 v0, 0x194

    iput v0, p0, Lct/bs;->s:I

    .line 754
    iput-boolean v5, p0, Lct/bs;->v:Z

    .line 157
    iput-object p1, p0, Lct/bs;->o:Lct/be;

    .line 160
    iget-object v0, p1, Lct/be;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/cm;->a(Landroid/content/Context;)V

    .line 163
    invoke-static {}, Lct/bi;->b()Lct/bh;

    move-result-object v0

    iput-object v0, p0, Lct/bs;->k:Lct/bh;

    .line 165
    new-instance v0, Lct/bu;

    iget-object v2, p0, Lct/bs;->o:Lct/be;

    invoke-direct {v0, v2}, Lct/bu;-><init>(Lct/be;)V

    iput-object v0, p0, Lct/bs;->h:Lct/bu;

    .line 166
    new-instance v0, Lct/bx;

    iget-object v2, p0, Lct/bs;->o:Lct/be;

    invoke-direct {v0, v2}, Lct/bx;-><init>(Lct/be;)V

    iput-object v0, p0, Lct/bs;->i:Lct/bx;

    .line 167
    new-instance v0, Lct/bo;

    iget-object v2, p0, Lct/bs;->o:Lct/be;

    iget-object v2, p0, Lct/bs;->i:Lct/bx;

    invoke-direct {v0}, Lct/bo;-><init>()V

    iput-object v0, p0, Lct/bs;->j:Lct/bo;

    .line 169
    iget-object v0, p1, Lct/be;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/bp;->a(Landroid/content/Context;)Lct/bp;

    move-result-object v0

    iput-object v0, p0, Lct/bs;->g:Lct/bp;

    .line 170
    iget-object v0, p0, Lct/bs;->o:Lct/be;

    invoke-virtual {v0}, Lct/be;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TxLocationManagerImpl"

    const-string v2, "createWifiProvider: failed"

    invoke-static {v0, v2}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lct/bs;->f:Lct/by;

    iget-object v0, p0, Lct/bs;->o:Lct/be;

    invoke-virtual {v0}, Lct/be;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TxLocationManagerImpl"

    const-string v2, "createCellProvider: failed"

    invoke-static {v0, v2}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lct/bs;->d:Lct/b;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lct/bs;->j:Lct/bo;

    iget-object v3, p0, Lct/bs;->o:Lct/be;

    invoke-virtual {v3}, Lct/be;->f()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "TxLocationManagerImpl"

    const-string v4, "createGpsProvider: failed"

    invoke-static {v3, v4}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iput-object v1, p0, Lct/bs;->e:Lct/br;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lct/b$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lct/bs;->t:Z

    .line 174
    return-void

    .line 170
    :cond_0
    new-instance v0, Lct/by;

    iget-object v2, p0, Lct/bs;->o:Lct/be;

    invoke-direct {v0, v2}, Lct/by;-><init>(Lct/be;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lct/b;

    iget-object v2, p0, Lct/bs;->o:Lct/be;

    invoke-direct {v0, v2}, Lct/b;-><init>(Lct/be;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lct/br;

    iget-object v3, p0, Lct/bs;->o:Lct/be;

    invoke-direct {v1, v3}, Lct/br;-><init>(Lct/be;)V

    goto :goto_2
.end method

.method static synthetic a(Lct/bs;)Lct/be;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->o:Lct/be;

    return-object v0
.end method

.method private a(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 676
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    invoke-virtual {v0, p1}, Lct/bs$a;->removeMessages(I)V

    .line 678
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    invoke-virtual {v0, p1, p2, p3}, Lct/bs$a;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    :cond_0
    return-void
.end method

.method private a(ILct/ck;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 499
    if-nez p2, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-direct {p0}, Lct/bs;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    iput p1, p0, Lct/bs;->s:I

    .line 505
    iput-object p2, p0, Lct/bs;->r:Lct/ck;

    .line 506
    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/16 v0, 0x2edf

    invoke-direct {p0, v0, v2, v3}, Lct/bs;->a(IJ)V

    .line 537
    :cond_2
    :goto_1
    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lct/bs;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/16 v0, 0x2ede

    invoke-direct {p0, v0}, Lct/bs;->b(I)V

    goto :goto_0

    .line 508
    :cond_3
    iget v0, p0, Lct/bs;->s:I

    .line 509
    iget-object v0, p0, Lct/bs;->r:Lct/ck;

    .line 533
    iput p1, p0, Lct/bs;->s:I

    .line 534
    iput-object p2, p0, Lct/bs;->r:Lct/ck;

    goto :goto_1
.end method

.method static synthetic a(Lct/bs;ILct/ck;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lct/bs;->a(ILct/ck;)V

    return-void
.end method

.method static synthetic b(Lct/bs;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object v0
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    invoke-virtual {v0, p1}, Lct/bs$a;->sendEmptyMessage(I)Z

    .line 673
    :cond_0
    return-void
.end method

.method static synthetic c(Lct/bs;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    return-object v0
.end method

.method static synthetic d()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lct/bs;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic d(Lct/bs;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lct/bs;->e()V

    return-void
.end method

.method static synthetic e(Lct/bs;)Lct/ck;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->r:Lct/ck;

    return-object v0
.end method

.method private final e()V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lct/bs;->r:Lct/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lct/bs;->r:Lct/ck;

    invoke-virtual {v0}, Lct/ck;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "direction"

    iget-object v2, p0, Lct/bs;->g:Lct/bp;

    invoke-virtual {v2}, Lct/bp;->c()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 446
    :cond_0
    return-void
.end method

.method static synthetic f(Lct/bs;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lct/bs;->s:I

    return v0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 455
    sput-boolean v10, Lct/cl;->a:Z

    .line 456
    iget-object v0, p0, Lct/bs;->o:Lct/be;

    invoke-virtual {v0, p0}, Lct/be;->b(Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lct/bs;->h:Lct/bu;

    invoke-virtual {v0}, Lct/bu;->b()V

    .line 458
    iget-object v0, p0, Lct/bs;->i:Lct/bx;

    iget-boolean v1, v0, Lct/bx;->g:Z

    if-eqz v1, :cond_1

    iput-boolean v10, v0, Lct/bx;->g:Z

    iget-object v1, v0, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v1, v0, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v2, Lct/bx$a;->b:Lct/bx$a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-wide v1, v0, Lct/bx;->f:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lct/bx;->f:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "shutdown: duration=%ds, sent=%dB, recv=%dB, reqCount=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v10

    const/4 v1, 0x1

    iget-wide v6, v0, Lct/bx;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    iget-wide v6, v0, Lct/bx;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    iget-wide v6, v0, Lct/bx;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TxRequestSender"

    invoke-static {v2, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-wide v8, v0, Lct/bx;->c:J

    iput-wide v8, v0, Lct/bx;->d:J

    iput-wide v8, v0, Lct/bx;->e:J

    iput-wide v8, v0, Lct/bx;->f:J

    .line 461
    :cond_1
    iget-object v0, p0, Lct/bs;->f:Lct/by;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lct/bs;->f:Lct/by;

    invoke-virtual {v0}, Lct/by;->a()V

    .line 464
    :cond_2
    iget-object v0, p0, Lct/bs;->d:Lct/b;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lct/bs;->d:Lct/b;

    invoke-virtual {v0}, Lct/b;->b()V

    .line 467
    :cond_3
    iget-object v0, p0, Lct/bs;->e:Lct/br;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 468
    iget-object v0, p0, Lct/bs;->e:Lct/br;

    invoke-virtual {v0}, Lct/br;->a()V

    .line 470
    :cond_4
    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    iget-object v0, p0, Lct/bs;->g:Lct/bp;

    invoke-virtual {v0}, Lct/bp;->b()V

    .line 473
    :cond_5
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 474
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    invoke-virtual {v0}, Lct/bs$a;->a()V

    .line 476
    :cond_6
    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Lct/bs;->s:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lct/bs;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lct/bs;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lct/bs;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lct/bs;->b:I

    return v0
.end method

.method static synthetic i(Lct/bs;)Lct/cc;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    iget-object v4, p0, Lct/bs;->m:Lct/ce;

    iget-object v2, p0, Lct/bs;->l:Lct/ca;

    iget-object v3, p0, Lct/bs;->n:Lct/cb;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lct/bs;->e:Lct/br;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lct/bs;->e:Lct/br;

    invoke-virtual {v5}, Lct/br;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lct/bs;->e:Lct/br;

    invoke-virtual {v5}, Lct/br;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v5, "TxLocationManagerImpl"

    const-string v6, "isGpsValid: provider=false"

    invoke-static {v5, v6}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    move-object v3, v1

    :cond_2
    if-nez v2, :cond_5

    iget-object v0, p0, Lct/bs;->o:Lct/be;

    invoke-static {v0}, Lct/cl;->a(Lct/be;)Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lct/ca;->a(Lct/be;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/ca;

    move-result-object v0

    invoke-static {v0}, Lct/cl;->a(Lct/ca;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget v2, v0, Lct/ca;->d:I

    iget v5, v0, Lct/ca;->e:I

    iget-object v6, v3, Lct/cb;->a:Landroid/location/Location;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "lac"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "cid"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "location"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v6, p0, Lct/bs;->o:Lct/be;

    const-string v8, "cell"

    invoke-virtual {v6, v8}, Lct/be;->a(Ljava/lang/String;)Lct/bj;

    move-result-object v6

    invoke-virtual {v6, v7}, Lct/bj;->b(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v0, "TxLocationManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getFromLastKnownInfo: discard bad cell("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lct/cc;

    invoke-direct {v0, v4, v1, v3}, Lct/cc;-><init>(Lct/ce;Lct/ca;Lct/cb;)V

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic j(Lct/bs;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lct/bs;)Lct/br;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->e:Lct/br;

    return-object v0
.end method

.method static synthetic l(Lct/bs;)Lct/bh;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->k:Lct/bh;

    return-object v0
.end method

.method static synthetic m(Lct/bs;)Lct/bx;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->i:Lct/bx;

    return-object v0
.end method

.method static synthetic n(Lct/bs;)Lct/ca;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lct/bs;->l:Lct/ca;

    return-object v0
.end method

.method static synthetic o(Lct/bs;)Lct/ce;
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lct/bs;->m:Lct/ce;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lct/bs;->o:Lct/be;

    .line 221
    invoke-virtual {v0}, Lct/be;->h()Lct/bf;

    move-result-object v3

    .line 222
    iget-object v0, v3, Lct/bf;->h:Ljava/lang/String;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v0, v5

    if-le v0, v1, :cond_1

    aget-object v0, v5, v2

    if-eqz v0, :cond_1

    aget-object v0, v5, v1

    if-eqz v0, :cond_1

    aget-object v0, v5, v2

    aget-object v6, v5, v1

    invoke-static {v0, v6}, Lcom/tencent/tencentmap/lbssdk/service/e;->v2(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    aget-object v0, v5, v2

    :goto_1
    iput-object v0, p0, Lct/bs;->u:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lct/bs;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestLocationUpdates: illegal key ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x2

    .line 248
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 223
    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/tencent/tencentmap/lbssdk/service/e;->v(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 230
    :cond_5
    iget-boolean v0, p0, Lct/bs;->t:Z

    if-nez v0, :cond_0

    .line 234
    iput-object v8, p0, Lct/bs;->r:Lct/ck;

    const/16 v0, 0x194

    iput v0, p0, Lct/bs;->s:I

    iput-object v8, p0, Lct/bs;->m:Lct/ce;

    iput-object v8, p0, Lct/bs;->l:Lct/ca;

    iput-object v8, p0, Lct/bs;->n:Lct/cb;

    iget-object v0, p0, Lct/bs;->o:Lct/be;

    const-string v4, "cell"

    invoke-virtual {v0, v4}, Lct/be;->a(Ljava/lang/String;)Lct/bj;

    move-result-object v0

    invoke-virtual {v0}, Lct/bj;->a()V

    .line 235
    iput-object p2, p0, Lct/bs;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 236
    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-static {v0, p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->copy(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationRequest;)V

    .line 237
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getQQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lct/bf;->g:Ljava/lang/String;

    .line 239
    iget-object v0, v3, Lct/bf;->e:Ljava/lang/String;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lct/bf;->e:Ljava/lang/String;

    .line 242
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v4

    const-wide/16 v6, 0x1f40

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lct/bf;->k:J

    .line 244
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    invoke-static {v0}, Lct/b$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lct/bs$a;

    invoke-direct {v0, p0, p3}, Lct/bs$a;-><init>(Lct/bs;Landroid/os/Looper;)V

    iput-object v0, p0, Lct/bs;->c:Lct/bs$a;

    .line 245
    :cond_7
    :goto_3
    invoke-direct {p0}, Lct/bs;->f()V

    .line 246
    iget-object v0, p0, Lct/bs;->o:Lct/be;

    invoke-virtual {v0, p0}, Lct/be;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "use_network"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lct/bs;->c:Lct/bs$a;

    iget-object v4, p0, Lct/bs;->h:Lct/bu;

    invoke-virtual {v4}, Lct/bu;->a()V

    iget-object v4, p0, Lct/bs;->i:Lct/bx;

    iget-boolean v5, v4, Lct/bx;->g:Z

    if-nez v5, :cond_8

    iput-boolean v1, v4, Lct/bx;->g:Z

    iget-object v5, v4, Lct/bx;->b:Lct/be;

    invoke-virtual {v5}, Lct/be;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lct/bx$1;

    invoke-direct {v6, v4, v3}, Lct/bx$1;-><init>(Lct/bx;Landroid/os/Handler;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lct/bx;->f:J

    :cond_8
    if-eqz v0, :cond_9

    iget-object v4, p0, Lct/bs;->d:Lct/b;

    invoke-static {v4}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lct/bs;->d:Lct/b;

    invoke-virtual {v4}, Lct/b;->a()V

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, p0, Lct/bs;->f:Lct/by;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lct/bs;->f:Lct/by;

    iget-object v4, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v4}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    invoke-virtual {v0, v3}, Lct/by;->a(Landroid/os/Handler;)V

    :cond_a
    iget-object v0, p0, Lct/bs;->e:Lct/br;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->isAllowGps(Lcom/tencent/map/geolocation/TencentLocationRequest;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v4, p0, Lct/bs;->e:Lct/br;

    iget v0, p0, Lct/bs;->b:I

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Lct/br;->a(Z)V

    iget-object v0, p0, Lct/bs;->e:Lct/br;

    iget-object v1, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    invoke-virtual {v0, v3}, Lct/br;->a(Landroid/os/Handler;)V

    :cond_b
    iget-object v0, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lct/bs;->g:Lct/bp;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    invoke-virtual {v0}, Lct/bp;->a()V

    :cond_c
    move v1, v2

    .line 248
    goto/16 :goto_2

    .line 244
    :cond_d
    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    invoke-virtual {v0, v8}, Lct/bs$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lct/bs;->c:Lct/bs$a;

    invoke-virtual {v0}, Lct/bs$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v0, p3, :cond_7

    new-instance v0, Lct/bs$a;

    invoke-direct {v0, p0, p3}, Lct/bs$a;-><init>(Lct/bs;Landroid/os/Looper;)V

    iput-object v0, p0, Lct/bs;->c:Lct/bs$a;

    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 246
    goto :goto_4
.end method

.method public final a()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 433
    iget v0, p0, Lct/bs;->s:I

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0}, Lct/bs;->e()V

    .line 435
    iget-object v0, p0, Lct/bs;->r:Lct/ck;

    .line 437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 653
    iget v0, p0, Lct/bs;->b:I

    if-ne v0, p1, :cond_0

    .line 663
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lct/bs;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v0, :cond_1

    .line 658
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "removeUpdates MUST called before set coordinate type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1
    iput p1, p0, Lct/bs;->b:I

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Lct/bs;->f()V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lct/bs;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 451
    iget-object v0, p0, Lct/bs;->k:Lct/bh;

    invoke-interface {v0}, Lct/bh;->a()V

    .line 452
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lct/bs;->b:I

    return v0
.end method

.method public final onCellInfoEvent(Lct/ca;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 683
    iget v4, p1, Lct/ca;->e:I

    iget v5, p1, Lct/ca;->f:I

    iget-object v0, p0, Lct/bs;->l:Lct/ca;

    if-eqz v0, :cond_3

    iget v2, v0, Lct/ca;->e:I

    iget v0, v0, Lct/ca;->f:I

    :goto_0
    iput-object p1, p0, Lct/bs;->l:Lct/ca;

    iget-object v3, p0, Lct/bs;->f:Lct/by;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lct/bs;->f:Lct/by;

    invoke-virtual {v3}, Lct/by;->b()I

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v9, p0, Lct/bs;->v:Z

    :goto_1
    const-string v6, "TxLocationManagerImpl"

    const-string v7, "onCellChanged: %d(%d)-->%d(%d) (%d)%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v1, 0x5

    if-nez v3, :cond_2

    const-string v0, "scan wifi"

    :goto_2
    aput-object v0, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void

    :cond_0
    move v3, v1

    .line 683
    :cond_1
    const/16 v6, 0xf9f

    invoke-direct {p0, v6}, Lct/bs;->b(I)V

    goto :goto_1

    :cond_2
    const-string v0, "prepare json. wifi is not scannable?"

    goto :goto_2

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public final onGpsInfoEvent(Lct/cb;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0xf9f

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 691
    iget-object v2, p1, Lct/cb;->a:Landroid/location/Location;

    sget-object v3, Lct/bn;->b:Landroid/location/Location;

    if-eq v2, v3, :cond_1

    iput-object p1, p0, Lct/bs;->n:Lct/cb;

    invoke-static {}, Lct/bq;->a()Lct/bq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lct/bq;->a(Lct/cb;)I

    iget v5, p0, Lct/bs;->b:I

    iget-object v2, p0, Lct/bs;->q:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v6

    iget-object v7, p0, Lct/bs;->r:Lct/ck;

    new-instance v8, Landroid/location/Location;

    iget-object v2, p1, Lct/cb;->a:Landroid/location/Location;

    invoke-direct {v8, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v8}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v0, "lat"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "lng"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    invoke-static {v5}, Lct/b$a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Lct/ck$a;

    invoke-direct {v0}, Lct/ck$a;-><init>()V

    iput-object v7, v0, Lct/ck$a;->b:Lct/ck;

    const-string v1, "gps"

    iput-object v1, v0, Lct/ck$a;->d:Ljava/lang/String;

    iput v6, v0, Lct/ck$a;->c:I

    new-instance v1, Landroid/location/Location;

    iget-object v2, p1, Lct/cb;->a:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lct/ck$a;->a(Landroid/location/Location;)Lct/ck$a;

    move-result-object v0

    invoke-virtual {v0}, Lct/ck$a;->a()Lct/ck;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lct/bs;->a(ILct/ck;)V

    :goto_1
    iget-object v0, p0, Lct/bs;->e:Lct/br;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lct/bs;->e:Lct/br;

    invoke-virtual {v0}, Lct/br;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lct/bs;->k:Lct/bh;

    invoke-interface {v1, v0, p1}, Lct/bh;->a(ZLct/cb;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lct/bs;->f:Lct/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/bs;->f:Lct/by;

    invoke-virtual {v0}, Lct/by;->b()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "onGpsChanged: --> report gps"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lct/bs;->b(I)V

    .line 692
    :cond_1
    return-void

    .line 691
    :cond_2
    invoke-direct {p0}, Lct/bs;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v10}, Lct/bs;->b(I)V

    :cond_3
    new-instance v5, Lct/ck$a;

    invoke-direct {v5}, Lct/ck$a;-><init>()V

    iput-object v7, v5, Lct/ck$a;->b:Lct/ck;

    const-string v7, "gps"

    iput-object v7, v5, Lct/ck$a;->d:Ljava/lang/String;

    iput v6, v5, Lct/ck$a;->c:I

    new-instance v6, Landroid/location/Location;

    iget-object v7, p1, Lct/cb;->a:Landroid/location/Location;

    invoke-direct {v6, v7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v5, v6}, Lct/ck$a;->a(Landroid/location/Location;)Lct/ck$a;

    move-result-object v5

    invoke-virtual {v5}, Lct/ck$a;->a()Lct/ck;

    move-result-object v5

    invoke-virtual {v8, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v5, v8}, Lct/ck;->a(Landroid/location/Location;)V

    invoke-direct {p0, v4, v5}, Lct/bs;->a(ILct/ck;)V

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public final onNetworkEvent(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lct/bs;->o:Lct/be;

    iget-object v0, v0, Lct/be;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/b$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 712
    :goto_0
    return-void

    .line 702
    :pswitch_0
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "onNetworkEvent: networks not found"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :pswitch_1
    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " disconnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :pswitch_2
    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/16 v0, 0x1f3f

    const-wide/16 v1, 0x3e8

    invoke-direct {p0, v0, v1, v2}, Lct/bs;->a(IJ)V

    goto :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onStatusEvent(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 695
    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    packed-switch v2, :pswitch_data_0

    move-object v2, v0

    :cond_0
    :goto_0
    const-string v3, "TxLocationManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStatusChanged: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lct/bs;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lct/bs;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-interface {v3, v2, v1, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V

    .line 696
    :cond_1
    return-void

    .line 695
    :pswitch_0
    const-string v2, "gps"

    if-ne v1, v3, :cond_2

    const-string v0, "gps enabled"

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string v0, "gps disabled"

    goto :goto_0

    :cond_3
    const-string v0, "unknown"

    goto :goto_0

    :pswitch_1
    const-string v2, "cell"

    if-ne v1, v3, :cond_4

    const-string v0, "cell enabled"

    :goto_1
    sget-boolean v3, Lct/cl;->a:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    const-string v0, "permission denied"

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    const-string v0, "cell disabled"

    goto :goto_1

    :cond_5
    const-string v0, "unknown"

    goto :goto_1

    :pswitch_2
    const-string v2, "wifi"

    if-ne v1, v3, :cond_6

    const-string v0, "wifi enabled"

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    const-string v0, "wifi disabled"

    goto :goto_0

    :cond_7
    const-string v0, "unknown"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2ee1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onWifiInfoEvent(Lct/ce;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xf9f

    .line 687
    sget-object v0, Lct/ce;->a:Lct/ce;

    if-ne p1, v0, :cond_0

    const-string v0, "TxLocationManagerImpl"

    const-string v1, "onWifiChanged --> clear wifi if needed"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x22b

    const-wide/16 v1, 0x5dc

    invoke-direct {p0, v0, v1, v2}, Lct/bs;->a(IJ)V

    .line 688
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lct/bs;->e:Lct/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lct/bs;->e:Lct/br;

    invoke-virtual {v0}, Lct/br;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lct/bs;->m:Lct/ce;

    const-string v0, "TxLocationManagerImpl"

    const-string v1, "onWifiChanged: --> prepare json(report gps)"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lct/bs;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lct/bs;->m:Lct/ce;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lct/bs;->m:Lct/ce;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lct/ce;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lct/ce;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lct/ce;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lct/bs;->v:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lct/bs;->m:Lct/ce;

    invoke-virtual {v0, p1}, Lct/ce;->a(Lct/ce;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iput-object p1, p0, Lct/bs;->m:Lct/ce;

    const-string v0, "TxLocationManagerImpl"

    const-string v1, "onWifiChanged: --> prepare json"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lct/bs;->b(I)V

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/bs;->v:Z

    goto :goto_0
.end method
