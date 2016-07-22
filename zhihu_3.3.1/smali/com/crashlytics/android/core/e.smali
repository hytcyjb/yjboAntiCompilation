.class public Lcom/crashlytics/android/core/e;
.super Lio/fabric/sdk/android/h;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/b;
    a = {
        Lcom/crashlytics/android/core/a/a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private j:Lcom/crashlytics/android/core/g;

.field private k:Lcom/crashlytics/android/core/i;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:F

.field private v:Z

.field private final w:Lcom/crashlytics/android/core/u;

.field private x:Lio/fabric/sdk/android/services/network/c;

.field private y:Lcom/crashlytics/android/core/f;

.field private z:Lcom/crashlytics/android/core/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/crashlytics/android/core/e;-><init>(FLcom/crashlytics/android/core/g;Lcom/crashlytics/android/core/u;Z)V

    .line 200
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/core/g;Lcom/crashlytics/android/core/u;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/e;-><init>(FLcom/crashlytics/android/core/g;Lcom/crashlytics/android/core/u;ZLjava/util/concurrent/ExecutorService;)V

    .line 206
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/core/g;Lcom/crashlytics/android/core/u;ZLjava/util/concurrent/ExecutorService;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/crashlytics/android/core/e;->l:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/crashlytics/android/core/e;->m:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/crashlytics/android/core/e;->n:Ljava/lang/String;

    .line 214
    iput p1, p0, Lcom/crashlytics/android/core/e;->u:F

    .line 215
    iput-object p2, p0, Lcom/crashlytics/android/core/e;->j:Lcom/crashlytics/android/core/g;

    .line 216
    iput-object p3, p0, Lcom/crashlytics/android/core/e;->w:Lcom/crashlytics/android/core/u;

    .line 217
    iput-boolean p4, p0, Lcom/crashlytics/android/core/e;->v:Z

    .line 218
    new-instance v0, Lcom/crashlytics/android/core/f;

    invoke-direct {v0, p5}, Lcom/crashlytics/android/core/f;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/e;->y:Lcom/crashlytics/android/core/f;

    .line 220
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/core/e;->a:J

    .line 222
    return-void
.end method

.method static A()Lio/fabric/sdk/android/services/settings/p;
    .locals 1

    .prologue
    .line 1025
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->b()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 1026
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/s;->b:Lio/fabric/sdk/android/services/settings/p;

    goto :goto_0
.end method

.method private I()V
    .locals 4

    .prologue
    .line 759
    new-instance v1, Lcom/crashlytics/android/core/e$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/e$1;-><init>(Lcom/crashlytics/android/core/e;)V

    .line 771
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->H()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/i;

    .line 772
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/concurrency/d;->a(Lio/fabric/sdk/android/services/concurrency/i;)V

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->E()Lio/fabric/sdk/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 777
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 790
    :goto_1
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 785
    :catch_1
    move-exception v0

    .line 786
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 787
    :catch_2
    move-exception v0

    .line 788
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(FI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/crashlytics/android/core/e;->b(FI)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/e;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->d:Ljava/io/File;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->w:Lcom/crashlytics/android/core/u;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crashlytics/android/core/h;

    iget-object v1, p0, Lcom/crashlytics/android/core/e;->w:Lcom/crashlytics/android/core/u;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/h;-><init>(Lcom/crashlytics/android/core/u;)V

    .line 289
    :goto_0
    new-instance v1, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/k;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/e;->x:Lio/fabric/sdk/android/services/network/c;

    .line 290
    iget-object v1, p0, Lcom/crashlytics/android/core/e;->x:Lio/fabric/sdk/android/services/network/c;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/network/c;->a(Lio/fabric/sdk/android/services/network/e;)V

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/e;->p:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->C()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/e;->r:Ljava/lang/String;

    .line 294
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installer package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/core/e;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/crashlytics/android/core/e;->p:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 298
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/core/e;->s:Ljava/lang/String;

    .line 299
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, "0.0"

    :goto_1
    iput-object v0, p0, Lcom/crashlytics/android/core/e;->t:Ljava/lang/String;

    .line 304
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/e;->o:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/crashlytics/android/core/e;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;Z)Lcom/crashlytics/android/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/e;->p:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/crashlytics/android/core/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Lcom/crashlytics/android/core/aa;)V
    .locals 7
    .parameter

    .prologue
    .line 313
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Installing exception handler..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/crashlytics/android/core/i;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/e;->j:Lcom/crashlytics/android/core/g;

    iget-object v3, p0, Lcom/crashlytics/android/core/e;->y:Lcom/crashlytics/android/core/f;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->C()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v4

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/i;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/core/g;Lcom/crashlytics/android/core/f;Lio/fabric/sdk/android/services/common/IdManager;Lcom/crashlytics/android/core/aa;Lcom/crashlytics/android/core/e;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/e;->k:Lcom/crashlytics/android/core/i;

    .line 325
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->k:Lcom/crashlytics/android/core/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/i;->b()V

    .line 327
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->k:Lcom/crashlytics/android/core/i;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 328
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Successfully installed exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "There was a problem installing the exception handler."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 679
    const-class v0, Lcom/crashlytics/android/answers/a;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/a;

    .line 680
    if-eqz v0, :cond_0

    .line 681
    new-instance v1, Lio/fabric/sdk/android/services/common/i$a;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/a;->a(Lio/fabric/sdk/android/services/common/i$a;)V

    .line 684
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/o;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 939
    new-instance v4, Lcom/crashlytics/android/core/n;

    invoke-direct {v4, p1, p2}, Lcom/crashlytics/android/core/n;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/settings/o;)V

    .line 943
    new-instance v3, Lcom/crashlytics/android/core/e$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/crashlytics/android/core/e$a;-><init>(Lcom/crashlytics/android/core/e$1;)V

    .line 947
    new-instance v0, Lcom/crashlytics/android/core/e$7;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/e$7;-><init>(Lcom/crashlytics/android/core/e;Landroid/app/Activity;Lcom/crashlytics/android/core/e$a;Lcom/crashlytics/android/core/n;Lio/fabric/sdk/android/services/settings/o;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1012
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Waiting for user opt-in."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v3}, Lcom/crashlytics/android/core/e$a;->b()V

    .line 1014
    invoke-virtual {v3}, Lcom/crashlytics/android/core/e$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/e;Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/o;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/e;->a(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/o;)Z

    move-result v0

    return v0
.end method

.method private static b(FI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1061
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 1030
    const-string v0, "com.crashlytics.RequireBuildId"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()Lcom/crashlytics/android/core/e;
    .locals 1

    .prologue
    .line 404
    const-class v0, Lcom/crashlytics/android/core/e;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/e;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Z)Lcom/crashlytics/android/core/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 696
    new-instance v0, Lcom/crashlytics/android/core/a;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/core/a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method a(Lio/fabric/sdk/android/services/settings/s;)Lcom/crashlytics/android/core/k;
    .locals 4
    .parameter

    .prologue
    .line 929
    if-eqz p1, :cond_0

    .line 930
    new-instance v0, Lcom/crashlytics/android/core/l;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lio/fabric/sdk/android/services/settings/s;->a:Lio/fabric/sdk/android/services/settings/e;

    iget-object v2, v2, Lio/fabric/sdk/android/services/settings/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/e;->x:Lio/fabric/sdk/android/services/network/c;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/crashlytics/android/core/l;-><init>(Lio/fabric/sdk/android/h;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;)V

    .line 934
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const-string v0, "2.3.6.92"

    return-object v0
.end method

.method a(Z)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Lio/fabric/sdk/android/services/c/d;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/c/d;-><init>(Lio/fabric/sdk/android/h;)V

    .line 904
    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/c/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 905
    return-void
.end method

.method a(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-boolean v1, p0, Lcom/crashlytics/android/core/e;->v:Z

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    new-instance v1, Lio/fabric/sdk/android/services/common/g;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    invoke-virtual {v1, p1}, Lio/fabric/sdk/android/services/common/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/core/e;->q:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/crashlytics/android/core/e;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 249
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing Crashlytics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->w()Ljava/io/File;

    move-result-object v2

    const-string v3, "initialization_marker"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/e;->d:Ljava/io/File;

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/core/e;->q:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/crashlytics/android/core/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    new-instance v1, Lcom/crashlytics/android/core/r;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/crashlytics/android/core/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->u()Z

    move-result v2

    .line 265
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/e;->a(Lcom/crashlytics/android/core/aa;)V

    .line 267
    if-eqz v2, :cond_2

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/crashlytics/android/core/e;->I()V
    :try_end_0
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 274
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    :catch_1
    move-exception v1

    .line 279
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    const-string v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method protected c_()Z
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lio/fabric/sdk/android/h;->D()Landroid/content/Context;

    move-result-object v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/e;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->s()V

    .line 339
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->k:Lcom/crashlytics/android/core/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/i;->g()V

    .line 342
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->b()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 344
    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Received null settings, skipping initialization!"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->t()V

    .line 379
    :goto_0
    return-object v4

    .line 349
    :cond_0
    :try_start_1
    iget-object v1, v0, Lio/fabric/sdk/android/services/settings/s;->d:Lio/fabric/sdk/android/services/settings/m;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/settings/m;->c:Z

    if-nez v1, :cond_1

    .line 350
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->t()V

    goto :goto_0

    .line 355
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/crashlytics/android/core/e;->k:Lcom/crashlytics/android/core/i;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/i;->c()Z

    .line 357
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/e;->a(Lio/fabric/sdk/android/services/settings/s;)Lcom/crashlytics/android/core/k;

    move-result-object v0

    .line 358
    if-nez v0, :cond_2

    .line 359
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Unable to create a call to upload reports."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 376
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->t()V

    goto :goto_0

    .line 363
    :cond_2
    :try_start_3
    new-instance v1, Lcom/crashlytics/android/core/x;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/x;-><init>(Lcom/crashlytics/android/core/k;)V

    iget v0, p0, Lcom/crashlytics/android/core/e;->u:F

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/x;->a(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 376
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->t()V

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->t()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->t()V

    throw v0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Map;
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
    .line 692
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->t:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->s:Ljava/lang/String;

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->o:Ljava/lang/String;

    return-object v0
.end method

.method o()Lcom/crashlytics/android/core/i;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->k:Lcom/crashlytics/android/core/i;

    return-object v0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->C()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/e;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->C()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/e;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/crashlytics/android/core/e;->C()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/e;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->y:Lcom/crashlytics/android/core/f;

    new-instance v1, Lcom/crashlytics/android/core/e$2;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/e$2;-><init>(Lcom/crashlytics/android/core/e;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/f;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method t()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->y:Lcom/crashlytics/android/core/f;

    new-instance v1, Lcom/crashlytics/android/core/e$3;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/e$3;-><init>(Lcom/crashlytics/android/core/e;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/f;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 827
    return-void
.end method

.method u()Z
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->y:Lcom/crashlytics/android/core/f;

    new-instance v1, Lcom/crashlytics/android/core/e$4;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/e$4;-><init>(Lcom/crashlytics/android/core/e;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/f;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method v()Lcom/crashlytics/android/core/a/a/d;
    .locals 2

    .prologue
    .line 851
    const/4 v0, 0x0

    .line 852
    iget-object v1, p0, Lcom/crashlytics/android/core/e;->z:Lcom/crashlytics/android/core/a/a;

    if-eqz v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->z:Lcom/crashlytics/android/core/a/a;

    invoke-interface {v0}, Lcom/crashlytics/android/core/a/a;->a()Lcom/crashlytics/android/core/a/a/d;

    move-result-object v0

    .line 855
    :cond_0
    return-object v0
.end method

.method w()Ljava/io/File;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Lio/fabric/sdk/android/services/c/b;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/c/b;-><init>(Lio/fabric/sdk/android/h;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/c/b;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/e;->c:Ljava/io/File;

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/e;->c:Ljava/io/File;

    return-object v0
.end method

.method x()Z
    .locals 3

    .prologue
    .line 884
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/e$5;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/e$5;-><init>(Lcom/crashlytics/android/core/e;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/settings/q;->a(Lio/fabric/sdk/android/services/settings/q$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method y()Z
    .locals 3

    .prologue
    .line 897
    new-instance v0, Lio/fabric/sdk/android/services/c/d;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/c/d;-><init>(Lio/fabric/sdk/android/h;)V

    .line 898
    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method z()Z
    .locals 3

    .prologue
    .line 908
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/e$6;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/e$6;-><init>(Lcom/crashlytics/android/core/e;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/settings/q;->a(Lio/fabric/sdk/android/services/settings/q$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
