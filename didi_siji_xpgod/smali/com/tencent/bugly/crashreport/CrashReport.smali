.class public Lcom/tencent/bugly/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    return-void
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 276
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->y()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getAppID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 200
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->d()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getAppVer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 261
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 246
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "appContext"
    .parameter "crashReportAppID"
    .parameter "isDebug"

    .prologue
    .line 53
    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    .locals 16
    .parameter "appContext"
    .parameter "crashReportAppID"
    .parameter "isDebug"
    .parameter "customStrategy"

    .prologue
    .line 70
    const-class v15, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v15

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "already inited ! nothing to do !"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    monitor-exit v15

    return-void

    .line 76
    :cond_0
    :try_start_1
    const-string v1, "crash report start to init!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 78
    if-nez p0, :cond_1

    .line 80
    new-instance v1, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "init arg \'appContext\' should not be null!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v15

    throw v1

    .line 83
    :cond_1
    if-nez p1, :cond_2

    .line 85
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "init arg \'crashReportAppID\' should not be null!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 89
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 90
    if-eqz p2, :cond_3

    .line 93
    new-instance v1, Lcom/tencent/bugly/proguard/u$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/u$a;-><init>()V

    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u$a;)V

    .line 94
    const-string v1, "\'isDebug\' is true , so running in debug model , close it when you release!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 98
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v2

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/String;)V

    .line 100
    const-string v1, "setted APPID:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 102
    if-eqz p3, :cond_9

    .line 105
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->a(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_c

    .line 110
    const/4 v1, 0x0

    const/16 v4, 0x64

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v4, "appVersion %s length is over limit %d substring to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 115
    :goto_1
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/n;->b(Ljava/lang/String;)V

    .line 116
    const-string v1, "setted APPVERSION:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->a(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 120
    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->b(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_5

    .line 125
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v4, "appChannel %s length is over limit %d substring to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v1, v3

    .line 129
    :cond_5
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/n;->f(Ljava/lang/String;)V

    .line 130
    const-string v3, "setted APPCHANNEL:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->b(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_6
    move-object v3, v1

    .line 134
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->c(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 137
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/n;->g(Ljava/lang/String;)V

    .line 138
    const-string v4, "setted libBugly.so file path :%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 142
    :cond_7
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->d(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_9

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_8

    .line 147
    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v4, "deviceId %s length is over limit %d substring to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 151
    :cond_8
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/n;->d(Ljava/lang/String;)V

    .line 152
    const-string v3, "setted deviceId :%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 158
    :cond_9
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v6

    .line 159
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/l;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/l;

    move-result-object v8

    .line 160
    move-object/from16 v0, p0

    invoke-static {v0, v6, v2, v8}, Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/t;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/l;)Lcom/tencent/bugly/proguard/r;

    move-result-object v5

    .line 161
    new-instance v3, Lcom/tencent/bugly/crashreport/common/strategy/b;

    invoke-direct {v3}, Lcom/tencent/bugly/crashreport/common/strategy/b;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/l;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/l;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/b;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/t;)Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v9

    .line 163
    if-eqz p3, :cond_b

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->e(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-lez v1, :cond_b

    .line 165
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->e(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(J)V

    .line 166
    const-string v1, "setted APP_REPORT_DELAY %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->e(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 174
    :goto_2
    const/4 v14, 0x0

    .line 175
    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 177
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v14

    .line 178
    const-string v1, "setted CrashHanldeCallback"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v7, p0

    move-object v10, v5

    move-object v11, v2

    move-object v12, v6

    move/from16 v13, p2

    .line 180
    invoke-static/range {v7 .. v14}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/t;ZLcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)Lcom/tencent/bugly/proguard/z;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/z;->c()V

    .line 184
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;

    move-result-object v1

    .line 185
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->addFilter(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->regist(Landroid/content/Context;)V

    .line 187
    const-string v1, "crash report inited!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 170
    :cond_b
    invoke-virtual {v9}, Lcom/tencent/bugly/crashreport/common/strategy/c;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_c
    move-object v1, v3

    goto/16 :goto_1
.end method

.method public static declared-synchronized isLastSessionCrash()Z
    .locals 3

    .prologue
    .line 286
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 291
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Lcom/tencent/bugly/proguard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/z;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public static declared-synchronized postCatchedException(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "catchedThrowable"

    .prologue
    .line 326
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 331
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Lcom/tencent/bugly/proguard/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 6
    .parameter "userId"

    .prologue
    const/16 v3, 0x64

    .line 211
    const-class v2, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v3, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v3}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 216
    :cond_0
    if-eqz p0, :cond_1

    .line 218
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 220
    const/4 v1, 0x0

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "userId %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .end local p0
    .local v0, userId:Ljava/lang/String;
    move-object p0, v0

    .line 226
    .end local v0           #userId:Ljava/lang/String;
    .restart local p0
    :cond_1
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/bugly/proguard/n;->c(Ljava/lang/String;)V

    .line 227
    const-string v1, "UserId setted to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 230
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized testJavaCrash()V
    .locals 3

    .prologue
    .line 299
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 304
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This Crash create for Test! You can go to Bugly see more detail!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public static declared-synchronized testNativeCrash()V
    .locals 3

    .prologue
    .line 312
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 317
    :cond_0
    :try_start_1
    const-string v0, "start to create a native crash for test!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 318
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Lcom/tencent/bugly/proguard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/z;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    monitor-exit v1

    return-void
.end method
