.class public abstract Lcom/octo/android/robospice/b;
.super Landroid/app/Service;
.source "SpiceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octo/android/robospice/b$b;,
        Lcom/octo/android/robospice/b$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/octo/android/robospice/b$b;

.field private c:Lcom/octo/android/robospice/request/c;

.field private d:I

.field private e:Z

.field private f:Landroid/app/Notification;

.field private g:Lcom/octo/android/robospice/persistence/b;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/octo/android/robospice/b;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/octo/android/robospice/b;->d:I

    .line 100
    new-instance v0, Lcom/octo/android/robospice/b$b;

    invoke-direct {v0, p0}, Lcom/octo/android/robospice/b$b;-><init>(Lcom/octo/android/robospice/b;)V

    iput-object v0, p0, Lcom/octo/android/robospice/b;->b:Lcom/octo/android/robospice/b$b;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/octo/android/robospice/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/octo/android/robospice/b;->d:I

    return p1
.end method

.method private a(Lcom/octo/android/robospice/request/d;Lcom/octo/android/robospice/request/b/b;Lcom/octo/android/robospice/request/b/c;)Lcom/octo/android/robospice/request/e;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    new-instance v0, Lcom/octo/android/robospice/request/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/octo/android/robospice/request/e;-><init>(Lcom/octo/android/robospice/request/d;Lcom/octo/android/robospice/request/b/b;Lcom/octo/android/robospice/request/b/c;)V

    return-object v0
.end method

.method private a(Ljava/util/concurrent/ExecutorService;Lcom/octo/android/robospice/b/b;Lcom/octo/android/robospice/request/e;)Lcom/octo/android/robospice/request/f;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    new-instance v0, Lcom/octo/android/robospice/request/b;

    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/octo/android/robospice/b;->g:Lcom/octo/android/robospice/persistence/b;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/octo/android/robospice/request/b;-><init>(Landroid/content/Context;Lcom/octo/android/robospice/persistence/b;Ljava/util/concurrent/ExecutorService;Lcom/octo/android/robospice/request/e;Lcom/octo/android/robospice/b/b;)V

    return-object v0
.end method

.method private a(Landroid/app/Notification;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 518
    :try_start_0
    const-class v0, Landroid/app/Service;

    const-string v1, "startForeground"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Notification;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 519
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 531
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string v1, "Unable to start a service in foreground"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc/a/a/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 522
    :catch_1
    move-exception v0

    .line 523
    const-string v1, "Unable to start a service in foreground"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc/a/a/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 524
    :catch_2
    move-exception v0

    .line 525
    const-string v1, "Unable to start a service in foreground"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc/a/a/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 526
    :catch_3
    move-exception v0

    .line 527
    const-string v1, "Unable to start a service in foreground"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc/a/a/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 528
    :catch_4
    move-exception v0

    .line 529
    const-string v1, "Unable to start a service in foreground"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc/a/a/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/octo/android/robospice/b;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/octo/android/robospice/b;->o()V

    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending requests : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/octo/android/robospice/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 496
    iget v0, p0, Lcom/octo/android/robospice/b;->d:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/octo/android/robospice/b;->e:Z

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->stopSelf()V

    .line 499
    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/octo/android/robospice/b;->f:Landroid/app/Notification;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/octo/android/robospice/b;->a:Z

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending requests : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/octo/android/robospice/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 507
    iget-boolean v0, p0, Lcom/octo/android/robospice/b;->e:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/octo/android/robospice/b;->d:I

    if-nez v0, :cond_3

    .line 508
    :cond_2
    const-string v0, "Stop foreground"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 509
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/octo/android/robospice/b;->stopForeground(Z)V

    goto :goto_0

    .line 511
    :cond_3
    const-string v0, "Start foreground"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 512
    iget-object v0, p0, Lcom/octo/android/robospice/b;->f:Landroid/app/Notification;

    invoke-direct {p0, v0}, Lcom/octo/android/robospice/b;->a(Landroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/app/Application;)Lcom/octo/android/robospice/persistence/b;
.end method

.method protected a(Lcom/octo/android/robospice/persistence/b;Lcom/octo/android/robospice/request/e;Lcom/octo/android/robospice/request/f;)Lcom/octo/android/robospice/request/c;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/octo/android/robospice/request/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/octo/android/robospice/request/c;-><init>(Lcom/octo/android/robospice/persistence/b;Lcom/octo/android/robospice/request/e;Lcom/octo/android/robospice/request/f;)V

    return-object v0
.end method

.method protected a()Lcom/octo/android/robospice/request/d;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/octo/android/robospice/b$a;

    invoke-direct {v0, p0}, Lcom/octo/android/robospice/b$a;-><init>(Lcom/octo/android/robospice/b;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/octo/android/robospice/b;->g:Lcom/octo/android/robospice/persistence/b;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/octo/android/robospice/persistence/b;->a(Ljava/lang/Class;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/octo/android/robospice/b;->c:Lcom/octo/android/robospice/request/c;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/c;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Collection;)V

    .line 430
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    iget v0, p0, Lcom/octo/android/robospice/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/octo/android/robospice/b;->d:I

    .line 380
    iget-object v0, p0, Lcom/octo/android/robospice/b;->c:Lcom/octo/android/robospice/request/c;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/c;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 381
    invoke-direct {p0}, Lcom/octo/android/robospice/b;->p()V

    .line 382
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/listener/g;)V
    .locals 1
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/octo/android/robospice/b;->c:Lcom/octo/android/robospice/request/c;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/c;->a(Lcom/octo/android/robospice/request/listener/g;)V

    .line 488
    return-void
.end method

.method protected b()Lcom/octo/android/robospice/request/b/b;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/octo/android/robospice/request/b/a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/b/a;-><init>()V

    return-object v0
.end method

.method public b(Lcom/octo/android/robospice/request/listener/g;)V
    .locals 1
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/octo/android/robospice/b;->c:Lcom/octo/android/robospice/request/c;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/c;->b(Lcom/octo/android/robospice/request/listener/g;)V

    .line 492
    return-void
.end method

.method protected c()Lcom/octo/android/robospice/b/b;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/octo/android/robospice/b/a;

    invoke-direct {v0}, Lcom/octo/android/robospice/b/a;-><init>()V

    return-object v0
.end method

.method protected d()Ljava/util/concurrent/ExecutorService;
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->i()I

    move-result v0

    .line 236
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->j()I

    move-result v1

    .line 237
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->m()I

    move-result v2

    .line 238
    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Thread count must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/octo/android/robospice/priority/e;->a(III)Lcom/octo/android/robospice/priority/e;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->k()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/octo/android/robospice/priority/e;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->k()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/octo/android/robospice/priority/e;->allowCoreThreadTimeOut(Z)V

    .line 248
    :cond_2
    return-object v1

    .line 246
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Lcom/octo/android/robospice/request/b/c;
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/octo/android/robospice/request/b/c;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/b/c;-><init>()V

    return-object v0
.end method

.method public f()Landroid/app/Notification;
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 274
    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    .line 276
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 289
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    .line 290
    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 293
    :cond_0
    return-object v0

    .line 277
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 278
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_2
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 281
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 283
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 284
    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 285
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    goto :goto_0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0x2a

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->h()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->h()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/octo/android/robospice/b;->c:Lcom/octo/android/robospice/request/c;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/c;->a()V

    .line 418
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octo/android/robospice/b;->e:Z

    .line 439
    invoke-direct {p0}, Lcom/octo/android/robospice/b;->p()V

    .line 440
    iget-object v0, p0, Lcom/octo/android/robospice/b;->b:Lcom/octo/android/robospice/b$b;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/octo/android/robospice/b;->a(Landroid/app/Application;)Lcom/octo/android/robospice/persistence/b;

    move-result-object v0

    iput-object v0, p0, Lcom/octo/android/robospice/b;->g:Lcom/octo/android/robospice/persistence/b;
    :try_end_0
    .catch Lcom/octo/android/robospice/persistence/exception/CacheCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    iget-object v0, p0, Lcom/octo/android/robospice/b;->g:Lcom/octo/android/robospice/persistence/b;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/octo/android/robospice/persistence/exception/CacheCreationException;

    const-string v1, "createCacheManager() can\'t create a null cacheManager"

    invoke-direct {v0, v1}, Lcom/octo/android/robospice/persistence/exception/CacheCreationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Throwable;)I

    .line 116
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->stopSelf()V

    .line 135
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Throwable;)I

    .line 111
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->stopSelf()V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->b()Lcom/octo/android/robospice/request/b/b;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->e()Lcom/octo/android/robospice/request/b/c;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->a()Lcom/octo/android/robospice/request/d;

    move-result-object v2

    .line 123
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 124
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->c()Lcom/octo/android/robospice/b/b;

    move-result-object v4

    .line 125
    invoke-direct {p0, v2, v0, v1}, Lcom/octo/android/robospice/b;->a(Lcom/octo/android/robospice/request/d;Lcom/octo/android/robospice/request/b/b;Lcom/octo/android/robospice/request/b/c;)Lcom/octo/android/robospice/request/e;

    move-result-object v0

    .line 126
    invoke-direct {p0, v3, v4, v0}, Lcom/octo/android/robospice/b;->a(Ljava/util/concurrent/ExecutorService;Lcom/octo/android/robospice/b/b;Lcom/octo/android/robospice/request/e;)Lcom/octo/android/robospice/request/f;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/octo/android/robospice/b;->g:Lcom/octo/android/robospice/persistence/b;

    invoke-virtual {p0, v2, v0, v1}, Lcom/octo/android/robospice/b;->a(Lcom/octo/android/robospice/persistence/b;Lcom/octo/android/robospice/request/e;Lcom/octo/android/robospice/request/f;)Lcom/octo/android/robospice/request/c;

    move-result-object v0

    iput-object v0, p0, Lcom/octo/android/robospice/b;->c:Lcom/octo/android/robospice/request/c;

    .line 129
    iget-object v0, p0, Lcom/octo/android/robospice/b;->c:Lcom/octo/android/robospice/request/c;

    invoke-virtual {v0, v5}, Lcom/octo/android/robospice/request/c;->a(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/octo/android/robospice/b;->f()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/octo/android/robospice/b;->f:Landroid/app/Notification;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octo/android/robospice/b;->h:Z

    .line 134
    const-string v0, "SpiceService instance created."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/octo/android/robospice/b;->c:Lcom/octo/android/robospice/request/c;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/c;->b()V

    .line 303
    const-string v0, "SpiceService instance destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 304
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 305
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octo/android/robospice/b;->e:Z

    .line 446
    invoke-direct {p0}, Lcom/octo/android/robospice/b;->p()V

    .line 447
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 448
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 154
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octo/android/robospice/b;->e:Z

    .line 453
    invoke-direct {p0}, Lcom/octo/android/robospice/b;->p()V

    .line 454
    invoke-direct {p0}, Lcom/octo/android/robospice/b;->o()V

    .line 455
    const/4 v0, 0x1

    return v0
.end method
