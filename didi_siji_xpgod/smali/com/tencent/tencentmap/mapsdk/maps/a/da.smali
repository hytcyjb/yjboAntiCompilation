.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/da;
.super Ljava/lang/Object;
.source "NetChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;",
            ">;"
        }
    .end annotation
.end field

.field private static j:J

.field private static k:J

.field private static l:J

.field private static m:J

.field private static n:J

.field private static o:J

.field private static p:J

.field private static q:J

.field private static r:J

.field private static s:J

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:Z

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0x4e20

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/16 v3, 0x61a8

    const/16 v2, 0x3a98

    .line 19
    const/16 v0, 0x2710

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a:I

    .line 21
    sput v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b:I

    .line 23
    const/16 v0, 0x1388

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    .line 25
    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->d:I

    .line 27
    sput v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->e:I

    .line 29
    sput v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    .line 31
    sput v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->g:I

    .line 33
    sput v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->h:I

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->y:Z

    .line 105
    const/4 v0, -0x1

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->z:I

    .line 107
    const/16 v0, 0x2ee0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a:I

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b:I

    const/16 v0, 0x1f40

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->d:I

    sput v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->e:I

    sput v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    sput v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->g:I

    sput v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->h:I

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->y:Z

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->z:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_0

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a:I

    sput v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b:I

    const/16 v0, 0x2710

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    sput v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->d:I

    const v0, 0x88b8

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->e:I

    sput v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    const/4 v0, 0x2

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->g:I

    const/4 v0, 0x4

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->h:I

    .line 16
    :cond_0
    return-void
.end method

.method public static a()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 207
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a:I

    .line 208
    .local v3, result:I
    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->l:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 209
    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->o:J

    sget-wide v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->l:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sget-wide v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    add-long/2addr v4, v6

    sget-wide v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->n:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 212
    :cond_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->c()Landroid/content/Context;

    move-result-object v4

    .line 213
    const-string v5, "connectivity"

    .line 212
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 214
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 216
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 218
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b:I

    .line 227
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->x:I

    sget v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 228
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    if-gt v3, v4, :cond_2

    .line 229
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    .line 230
    :cond_2
    int-to-long v4, v3

    sget-wide v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 231
    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    sget v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    long-to-int v3, v4

    .line 232
    :cond_3
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b:I

    if-lt v3, v4, :cond_4

    .line 233
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b:I

    .line 235
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v1

    .line 236
    .local v1, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    if-nez v1, :cond_5

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v1

    .line 238
    :cond_5
    iget v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->j:I

    sget v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    .line 239
    iget v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->j:I

    sget v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    add-int v3, v4, v5

    .line 240
    :cond_6
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b:I

    if-lt v3, v4, :cond_7

    .line 241
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b:I

    .line 242
    :cond_7
    iput v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->j:I

    .line 244
    return v3

    .line 220
    .end local v1           #item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    :cond_8
    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    sget v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 221
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    goto :goto_0
.end method

.method private static a(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    .locals 14
    .parameter "tid"

    .prologue
    const-wide/16 v12, 0x0

    .line 580
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 581
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    .line 583
    :cond_0
    sget-object v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    monitor-enter v7

    .line 584
    :try_start_0
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v8, 0x14

    if-le v6, v8, :cond_3

    .line 586
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 587
    .local v4, size:I
    const/4 v2, 0x0

    .line 588
    .local v2, pos:I
    const/4 v3, 0x0

    .line 589
    .local v3, removed:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    div-int/lit8 v6, v4, 0x2

    if-lt v0, v6, :cond_4

    .line 598
    if-eqz v3, :cond_3

    .line 599
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v8, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->d:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->j:J

    .line 600
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v8, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->d:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->k:J

    .line 601
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v8, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    .line 602
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v8, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->n:J

    .line 603
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v8, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    .line 604
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v8, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->r:J

    .line 605
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v8, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J

    cmp-long v6, v8, v12

    if-lez v6, :cond_1

    .line 606
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget v6, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->g:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v8, v6

    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v10, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J

    div-long/2addr v8, v10

    long-to-int v6, v8

    sput v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->u:I

    .line 607
    :cond_1
    sget v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->u:I

    sput v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->v:I

    .line 608
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 632
    .end local v0           #i:I
    .end local v2           #pos:I
    .end local v3           #removed:Z
    .end local v4           #size:I
    :cond_3
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;-><init>()V

    .line 633
    .local v1, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    iput-wide p0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->b:J

    .line 634
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    monitor-exit v7

    return-object v1

    .line 590
    .end local v1           #item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    .restart local v0       #i:I
    .restart local v2       #pos:I
    .restart local v3       #removed:Z
    .restart local v4       #size:I
    :cond_4
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v8, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J

    cmp-long v6, v8, v12

    if-gtz v6, :cond_5

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v10, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x927c0

    cmp-long v6, v8, v10

    if-lez v6, :cond_6

    .line 593
    :cond_5
    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 594
    const/4 v3, 0x1

    .line 589
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 596
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 608
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    .line 609
    .restart local v1       #item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->d:J

    sget-wide v10, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->j:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 610
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->d:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->j:J

    .line 611
    :cond_8
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->d:J

    sget-wide v10, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->k:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    .line 612
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->d:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->k:J

    .line 613
    :cond_9
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sget-wide v10, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 614
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    .line 615
    :cond_a
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sget-wide v10, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->n:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_b

    .line 616
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->n:J

    .line 617
    :cond_b
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sget-wide v10, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_c

    .line 618
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    .line 619
    :cond_c
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sget-wide v10, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->r:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_d

    .line 620
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sput-wide v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->r:J

    .line 621
    :cond_d
    iget-wide v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J

    cmp-long v8, v8, v12

    if-lez v8, :cond_2

    .line 622
    iget v8, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->g:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    iget-wide v10, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J

    div-long/2addr v8, v10

    long-to-int v5, v8

    .line 623
    .local v5, speed:I
    sget v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->u:I

    if-le v5, v8, :cond_e

    .line 624
    sput v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->u:I

    .line 625
    :cond_e
    sget v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->v:I

    if-ge v5, v8, :cond_2

    .line 626
    sput v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 583
    .end local v0           #i:I
    .end local v1           #item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    .end local v2           #pos:I
    .end local v3           #removed:Z
    .end local v4           #size:I
    .end local v5           #speed:I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static a(I)V
    .locals 14
    .parameter "length"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 546
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v1

    .line 547
    .local v1, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    if-nez v1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    .line 551
    iput p0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->g:I

    .line 552
    iget-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J

    cmp-long v7, v7, v12

    if-nez v7, :cond_3

    const-wide/16 v2, 0x1

    .line 553
    .local v2, recvtime:J
    :goto_1
    mul-int/lit16 v7, p0, 0x3e8

    int-to-long v7, v7

    div-long/2addr v7, v2

    long-to-int v7, v7

    .line 554
    sput v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->w:I

    sget v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->u:I

    if-le v7, v8, :cond_4

    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->w:I

    :goto_2
    sput v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->u:I

    .line 555
    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->w:I

    sget v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->v:I

    if-ge v7, v8, :cond_5

    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->w:I

    :goto_3
    sput v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->v:I

    .line 557
    const/4 v4, 0x0

    .line 558
    .local v4, totallength:I
    const-wide/16 v5, 0x0

    .line 559
    .local v5, totaltime:J
    sget-object v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 560
    sget-object v8, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    monitor-enter v8

    .line 561
    :try_start_0
    sget-object v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 560
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    cmp-long v7, v5, v12

    if-lez v7, :cond_1

    .line 567
    mul-int/lit16 v7, v4, 0x3e8

    int-to-long v7, v7

    div-long/2addr v7, v5

    long-to-int v7, v7

    sput v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->t:I

    .line 569
    :cond_1
    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->x:I

    if-lez v7, :cond_2

    iget-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sget v9, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 570
    iget-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sget v9, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 571
    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->x:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->x:I

    .line 572
    :cond_2
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->a:Ljava/net/HttpURLConnection;

    .line 573
    iget-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    long-to-int v7, v7

    iput v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->j:I

    .line 574
    iput v11, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->l:I

    .line 576
    iput v11, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->m:I

    goto :goto_0

    .line 552
    .end local v2           #recvtime:J
    .end local v4           #totallength:I
    .end local v5           #totaltime:J
    :cond_3
    iget-wide v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J

    goto :goto_1

    .line 554
    .restart local v2       #recvtime:J
    :cond_4
    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->u:I

    goto :goto_2

    .line 556
    :cond_5
    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->v:I

    if-nez v7, :cond_6

    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->w:I

    goto :goto_3

    :cond_6
    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->v:I

    goto :goto_3

    .line 561
    .restart local v4       #totallength:I
    .restart local v5       #totaltime:J
    :cond_7
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    .line 562
    .local v0, info:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    iget v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->g:I

    add-int/2addr v4, v9

    .line 563
    iget-wide v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v5, v9

    goto :goto_4

    .line 560
    .end local v0           #info:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter "con"

    .prologue
    .line 467
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v0

    .line 468
    .local v0, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    if-nez v0, :cond_0

    .line 469
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v0

    .line 470
    :cond_0
    if-nez v0, :cond_1

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_1
    iput-object p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->a:Ljava/net/HttpURLConnection;

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 5
    .parameter "cancel"

    .prologue
    .line 426
    if-nez p0, :cond_0

    .line 427
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->x:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->x:I

    .line 428
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v0

    .line 429
    .local v0, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    if-eqz v0, :cond_1

    .line 430
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->a:Ljava/net/HttpURLConnection;

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->i:J

    .line 433
    :cond_1
    return-void
.end method

.method public static b()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 248
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->d:I

    .line 249
    .local v3, result:I
    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->p:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 250
    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->s:J

    sget-wide v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->p:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sget-wide v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    add-long/2addr v4, v6

    sget-wide v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->r:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 253
    :cond_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->c()Landroid/content/Context;

    move-result-object v4

    .line 254
    const-string v5, "connectivity"

    .line 253
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 255
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 257
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 259
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->e:I

    .line 268
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->x:I

    sget v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 269
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    if-gt v3, v4, :cond_2

    .line 270
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    .line 271
    :cond_2
    int-to-long v4, v3

    sget-wide v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 272
    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    sget v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    long-to-int v3, v4

    .line 273
    :cond_3
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->e:I

    if-lt v3, v4, :cond_4

    .line 274
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->e:I

    .line 276
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v1

    .line 277
    .local v1, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    if-eqz v1, :cond_7

    .line 278
    iget v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->k:I

    sget v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    .line 279
    iget v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->k:I

    sget v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    add-int v3, v4, v5

    .line 280
    :cond_5
    iget v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->j:I

    sget v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    .line 281
    iget v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->j:I

    sget v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    add-int v3, v4, v5

    .line 282
    :cond_6
    iput v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->k:I

    .line 283
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->e:I

    if-lt v3, v4, :cond_7

    .line 284
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->e:I

    .line 287
    :cond_7
    return v3

    .line 261
    .end local v1           #item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    :cond_8
    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    sget-wide v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    sget v6, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 262
    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->f:I

    goto :goto_0
.end method

.method private static b(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    .locals 6
    .parameter "tid"

    .prologue
    const/4 v1, 0x0

    .line 640
    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 649
    :goto_0
    return-object v0

    .line 643
    :cond_0
    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    monitor-enter v2

    .line 644
    :try_start_0
    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 643
    monitor-exit v2

    move-object v0, v1

    .line 649
    goto :goto_0

    .line 644
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    .line 645
    .local v0, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->b:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_1

    .line 646
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 643
    .end local v0           #item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static c(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    .locals 5
    .parameter "tid"

    .prologue
    .line 653
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 654
    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    monitor-enter v2

    .line 655
    :try_start_0
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 656
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 654
    monitor-exit v2

    .line 663
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 657
    .restart local v0       #i:I
    :cond_1
    :try_start_1
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    iget-wide v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->b:J

    cmp-long v1, v3, p0

    if-nez v1, :cond_2

    .line 658
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 654
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 656
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static c()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 477
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v2

    .line 478
    .local v2, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    if-nez v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    .line 482
    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sput-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->o:J

    .line 483
    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sget-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    :goto_1
    sput-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    .line 484
    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    sget-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->n:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    :goto_2
    sput-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->n:J

    .line 486
    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 487
    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    monitor-enter v4

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, count:I
    :try_start_0
    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 495
    if-lez v0, :cond_3

    .line 496
    sget-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->l:J

    int-to-long v7, v0

    div-long/2addr v5, v7

    sput-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->l:J

    .line 487
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 483
    .end local v0           #count:I
    :cond_4
    sget-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->m:J

    goto :goto_1

    .line 485
    :cond_5
    sget-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->n:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_6

    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    goto :goto_2

    :cond_6
    sget-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->n:J

    goto :goto_2

    .line 489
    .restart local v0       #count:I
    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    .line 490
    .local v1, info:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    iget-wide v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 491
    sget-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->l:J

    iget-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->e:J

    add-long/2addr v5, v7

    sput-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static d()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 520
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b(J)Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    move-result-object v2

    .line 521
    .local v2, item:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    if-nez v2, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->c:J

    .line 525
    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sput-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->s:J

    .line 526
    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sget-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    :goto_1
    sput-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    .line 528
    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    sget-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->r:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    :goto_2
    sput-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->r:J

    .line 530
    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 531
    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    monitor-enter v4

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, count:I
    :try_start_0
    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 539
    if-lez v0, :cond_3

    .line 540
    sget-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->p:J

    int-to-long v7, v0

    div-long/2addr v5, v7

    sput-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->p:J

    .line 531
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 527
    .end local v0           #count:I
    :cond_4
    sget-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->q:J

    goto :goto_1

    .line 529
    :cond_5
    sget-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->r:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_6

    iget-wide v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    goto :goto_2

    :cond_6
    sget-wide v3, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->r:J

    goto :goto_2

    .line 533
    .restart local v0       #count:I
    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;

    .line 534
    .local v1, info:Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;
    iget-wide v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 535
    sget-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->p:J

    iget-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/da$a;->f:J

    add-long/2addr v5, v7

    sput-wide v5, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->p:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
