.class public final Lcom/tencent/bugly/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/proguard/y;

.field private final c:Lcom/tencent/bugly/proguard/n;

.field private final d:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/proguard/y;

    .line 46
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    .line 47
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 48
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    .line 49
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter "exTimesInSecond"
    .parameter "exTimeInMicosecond"
    .parameter "exType"
    .parameter "exAddress"
    .parameter "exStack"
    .parameter "tombPath"
    .parameter "si_code"
    .parameter "si_CodeType"
    .parameter "sendingPid"
    .parameter
    .parameter
    .parameter
    .parameter "nativeRQDVersion"

    .prologue
    .line 232
    const-string v1, "Native Crash Happen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    .line 237
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    const-string v1, "waiting for remote sync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 241
    const/4 v1, 0x0

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 244
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_0
    add-int/lit16 v1, v1, 0x1f4

    .line 246
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_0

    .line 247
    :cond_1
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p3

    const-wide/16 v3, 0x3e8

    :try_start_2
    div-long v3, p5, v3

    add-long/2addr v3, v1

    .line 255
    invoke-static/range {p9 .. p9}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOWN("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p13

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 258
    if-lez p11, :cond_5

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 262
    .end local p7
    const-string p12, "KERNEL"

    .end local p12
    move-object/from16 v8, p12

    move-object/from16 v5, p7

    .line 274
    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    const-string v1, "no remote but still store!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v1

    .line 287
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/b;->d:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 289
    const-string v1, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v2

    const-string v3, "#++++++++++Simple Record By Bugly++++++++++#"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "# CRASH REPORT CREATED BY NATIVE VERSION %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p17, v4, v6

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "# PKG NAME: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "# APP VER: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "# CRASH TYPE: NATIVE_CRASH"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "# CRASH TIME: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "# CRASH PROCESS: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# CRASH THREAD: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TYPE: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH ADDR: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p8, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH STACK:"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 291
    if-eqz p10, :cond_3

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p10

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v2, "remoteClose"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V

    .line 317
    :cond_4
    :goto_2
    return-void

    .line 244
    .restart local p7
    .restart local p12
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 309
    .end local p7
    .end local p12
    :catch_1
    move-exception v1

    .line 311
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 313
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 268
    .restart local p7
    .restart local p12
    :cond_5
    if-lez p13, :cond_b

    .line 270
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    move/from16 v0, p13

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, p12

    move-object/from16 v5, p7

    goto/16 :goto_1

    .line 296
    .end local p7
    .end local p12
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object/from16 v6, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p17

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/bugly/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;

    move-result-object v2

    .line 297
    if-nez v2, :cond_7

    .line 299
    const-string v1, "pkg crash datas fail!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v2, "packageFail"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 304
    :cond_7
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v3

    const-string v1, "#++++++++++Detail Record By Bugly++++++++++#"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# You can go to Bugly(http:\\\\bugly.qq.com) to see more detail of this Report!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH REPORT CREATED BY NATIVE VERSION %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# REPORT ID: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# PKG NAME: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# APP VER: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# LAUNCH TIME:%s"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v1, Ljava/util/Date;

    iget-wide v7, v2, Lcom/tencent/bugly/proguard/x;->K:J

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_3
    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TYPE: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "NATIVE_CRASH"

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# CRASH TIME: %s"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v1, Ljava/util/Date;

    iget-wide v7, v2, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_4
    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH PROCESS: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH THREAD: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# CRASH DEVICE: %s %s"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->z()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "ROOTED"

    :goto_5
    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, v2, Lcom/tencent/bugly/proguard/x;->A:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, v2, Lcom/tencent/bugly/proguard/x;->B:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, v2, Lcom/tencent/bugly/proguard/x;->C:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, v2, Lcom/tencent/bugly/proguard/x;->D:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, v2, Lcom/tencent/bugly/proguard/x;->E:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, v2, Lcom/tencent/bugly/proguard/x;->F:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# EXCEPTION FIRED BY %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v2, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# EXCEPTION TYPE: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# EXCEPTION MSG: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# EXCEPTION STACK:\n %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 305
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Lcom/tencent/bugly/proguard/x;)V

    .line 306
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/proguard/y;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/y;->a(Lcom/tencent/bugly/proguard/x;)V

    .line 307
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 304
    :cond_8
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_9
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_a
    const-string v1, "UNROOT"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .restart local p7
    .restart local p12
    :cond_b
    move-object/from16 v8, p12

    move-object/from16 v5, p7

    goto/16 :goto_1
.end method

.method public final packageCrashDatas(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;
    .locals 10
    .parameter "crashThread"
    .parameter "crashTime"
    .parameter "crashType"
    .parameter "crashAddr"
    .parameter "crashStack"
    .parameter "sendingType"
    .parameter "sendingProcessName"
    .parameter "coreDumpFile"
    .parameter "nativeVersion"

    .prologue
    .line 142
    new-instance v4, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/x;-><init>()V

    .line 145
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->i()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->A:J

    .line 146
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->g()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->B:J

    .line 147
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->k()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->C:J

    .line 148
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->s()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->D:J

    .line 149
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->r()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->E:J

    .line 150
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->t()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->F:J

    .line 151
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    .line 153
    const/4 v1, 0x1

    iput v1, v4, Lcom/tencent/bugly/proguard/x;->b:I

    .line 154
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->x()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    .line 158
    iput-object p4, v4, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 159
    const/4 v1, 0x0

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 160
    iput-object p5, v4, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p6

    iput-object v0, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    .line 162
    iput-wide p2, v4, Lcom/tencent/bugly/proguard/x;->r:J

    .line 163
    iget-object v1, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/a;->c([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    .line 164
    const/16 v1, 0x4e20

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    .line 165
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    .line 166
    iput-object p1, v4, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->w()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    .line 169
    move-object/from16 v0, p9

    iput-object v0, v4, Lcom/tencent/bugly/proguard/x;->v:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p8

    iput-object v0, v4, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p7

    iput-object v0, v4, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p10

    iput-object v0, v4, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->b()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/bugly/proguard/x;->K:J

    .line 174
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/a;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v4, Lcom/tencent/bugly/proguard/x;->L:Z

    .line 176
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    if-eqz v1, :cond_2

    .line 180
    :try_start_0
    const-string v1, "start notify crashHandleCallback!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    const/4 v2, 0x2

    iget-object v3, v4, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    iget-object v6, v4, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 182
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v4, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    .line 186
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x64

    if-le v3, v7, :cond_1

    .line 195
    const/4 v3, 0x0

    const/16 v7, 0x64

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 196
    const-string v3, "setted key length is over limit %d substring to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v7}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    move-object v3, v2

    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x7530

    if-le v2, v7, :cond_5

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x7530

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    const-string v2, "setted %s value length is over limit %d substring"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x7530

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    :goto_3
    iget-object v2, v4, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v2, "add setted key %s value size:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 218
    const-string v2, "crash handle callback somthing wrong! %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    :cond_2
    :goto_4
    return-object v4

    .line 188
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 199
    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    .line 207
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 213
    :cond_6
    invoke-interface {v5, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
