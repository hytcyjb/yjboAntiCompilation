.class public final Lcom/tencent/bugly/proguard/z;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/proguard/z;


# instance fields
.field private final b:Lcom/tencent/bugly/proguard/y;

.field private final c:Lcom/tencent/bugly/proguard/A;

.field private final d:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field private final e:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field private final f:Lcom/tencent/bugly/proguard/B;

.field private final g:Lcom/tencent/bugly/proguard/t;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/t;ZLcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    iput-object p3, p0, Lcom/tencent/bugly/proguard/z;->e:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 47
    iput-object p6, p0, Lcom/tencent/bugly/proguard/z;->g:Lcom/tencent/bugly/proguard/t;

    .line 48
    new-instance v0, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v1, p4, p2, p3}, Lcom/tencent/bugly/proguard/y;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/crashreport/common/strategy/c;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->b:Lcom/tencent/bugly/proguard/y;

    .line 50
    new-instance v0, Lcom/tencent/bugly/proguard/A;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/z;->b:Lcom/tencent/bugly/proguard/y;

    move-object v3, p3

    move-object v4, p5

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/A;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->c:Lcom/tencent/bugly/proguard/A;

    .line 51
    new-instance v0, Lcom/tencent/bugly/proguard/B;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/z;->b:Lcom/tencent/bugly/proguard/y;

    move-object v3, p3

    move-object v4, p5

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/B;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->f:Lcom/tencent/bugly/proguard/B;

    .line 52
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/jni/a;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/z;->b:Lcom/tencent/bugly/proguard/y;

    move-object v2, p5

    move-object v4, p3

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/crashreport/crash/jni/a;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V

    .line 53
    invoke-static {v1, p5, v0, p6, p7}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;Lcom/tencent/bugly/proguard/t;Z)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/z;->d:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 54
    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->d:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/a;->a(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/z;)Lcom/tencent/bugly/proguard/B;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->f:Lcom/tencent/bugly/proguard/B;

    return-object v0
.end method

.method public static a()Lcom/tencent/bugly/proguard/z;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/tencent/bugly/proguard/z;->a:Lcom/tencent/bugly/proguard/z;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/t;ZLcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)Lcom/tencent/bugly/proguard/z;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const-class v9, Lcom/tencent/bugly/proguard/z;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/z;->a:Lcom/tencent/bugly/proguard/z;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/tencent/bugly/proguard/z;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/tencent/bugly/proguard/z;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/t;ZLcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V

    sput-object v0, Lcom/tencent/bugly/proguard/z;->a:Lcom/tencent/bugly/proguard/z;

    .line 64
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/z;->a:Lcom/tencent/bugly/proguard/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/z;)Lcom/tencent/bugly/proguard/A;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->c:Lcom/tencent/bugly/proguard/A;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v6, p0, Lcom/tencent/bugly/proguard/z;->g:Lcom/tencent/bugly/proguard/t;

    new-instance v0, Lcom/tencent/bugly/proguard/z$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/z$1;-><init>(Lcom/tencent/bugly/proguard/z;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->g:Lcom/tencent/bugly/proguard/t;

    new-instance v1, Lcom/tencent/bugly/proguard/z$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/tencent/bugly/proguard/z$2;-><init>(Lcom/tencent/bugly/proguard/z;ZLjava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->e:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->g()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->c:Lcom/tencent/bugly/proguard/A;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/A;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->c:Lcom/tencent/bugly/proguard/A;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 130
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->d:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->d:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
