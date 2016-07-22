.class public Lcom/tencent/bugly/unity/UnityAgent;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/unity/UnityAgent;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/unity/UnityAgent;->a:Lcom/tencent/bugly/unity/UnityAgent;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/tencent/bugly/unity/UnityAgent;->c:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->d:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/tencent/bugly/unity/UnityAgent;->e:Z

    .line 54
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->b:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    iget-object v1, p0, Lcom/tencent/bugly/unity/UnityAgent;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->f:Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/unity/UnityAgent;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/unity/UnityAgent;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/bugly/unity/UnityAgent;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/bugly/unity/UnityAgent;)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->f:Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/unity/UnityAgent;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/tencent/bugly/unity/UnityAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/unity/UnityAgent;->a:Lcom/tencent/bugly/unity/UnityAgent;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/tencent/bugly/unity/UnityAgent;

    invoke-direct {v0}, Lcom/tencent/bugly/unity/UnityAgent;-><init>()V

    sput-object v0, Lcom/tencent/bugly/unity/UnityAgent;->a:Lcom/tencent/bugly/unity/UnityAgent;

    .line 39
    :cond_0
    sget-object v0, Lcom/tencent/bugly/unity/UnityAgent;->a:Lcom/tencent/bugly/unity/UnityAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public initSDK(Ljava/lang/String;)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iput-object p1, p0, Lcom/tencent/bugly/unity/UnityAgent;->d:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/bugly/unity/UnityAgent$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/unity/UnityAgent$1;-><init>(Lcom/tencent/bugly/unity/UnityAgent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->c:Z

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "UnityAgent"

    const-string v1, "You should set channel before init sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->f:Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    goto :goto_0
.end method

.method public setCrashHappenListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "gameObject"
    .parameter "callbackFuncation"

    .prologue
    .line 185
    const-string v0, "%s - set crash happen listener"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "UnityAgent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public setCrashUploadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "gameObject"
    .parameter "callbackFuncation"

    .prologue
    .line 176
    const-string v0, "%s - set crash upload listener"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "UnityAgent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public setDelay(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->c:Z

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "UnityAgent"

    const-string v1, "You should set delay time before init sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->f:Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppReportDelay(J)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    goto :goto_0
.end method

.method public setLogEnable(Z)V
    .locals 2
    .parameter "debug"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->c:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "UnityAgent"

    const-string v1, "You should set log enable before init sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/bugly/unity/UnityAgent;->e:Z

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->c:Z

    if-nez v0, :cond_0

    .line 127
    const-string v0, "UnityAgent"

    const-string v1, "You should set the user id after init the sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->c:Z

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "UnityAgent"

    const-string v1, "You should set version before init sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent;->f:Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    goto :goto_0
.end method

.method public throwJavaCrashTest()V
    .locals 0

    .prologue
    .line 193
    invoke-static {}, Lcom/tencent/bugly/crashreport/CrashReport;->testJavaCrash()V

    .line 194
    return-void
.end method

.method public throwNativeCrashTest()V
    .locals 0

    .prologue
    .line 197
    invoke-static {}, Lcom/tencent/bugly/crashreport/CrashReport;->testNativeCrash()V

    .line 198
    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "errorType"
    .parameter "errorMessage"
    .parameter "callStack"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "%s - trace unity exception arguments invalid"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "UnityAgent"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Lcom/tencent/bugly/proguard/z;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v1, "post u3d fail,Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v1, "%s - unity exception: %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UnityAgent"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method
