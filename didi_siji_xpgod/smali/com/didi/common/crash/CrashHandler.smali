.class public Lcom/didi/common/crash/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static instance:Lcom/didi/common/crash/CrashHandler;


# instance fields
.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/crash/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 16
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/didi/common/crash/CrashHandler;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/didi/common/crash/CrashHandler;->instance:Lcom/didi/common/crash/CrashHandler;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/didi/common/crash/CrashHandler;->instance:Lcom/didi/common/crash/CrashHandler;

    .line 23
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/didi/common/crash/CrashHandler;

    invoke-direct {v0}, Lcom/didi/common/crash/CrashHandler;-><init>()V

    sput-object v0, Lcom/didi/common/crash/CrashHandler;->instance:Lcom/didi/common/crash/CrashHandler;

    .line 23
    sget-object v0, Lcom/didi/common/crash/CrashHandler;->instance:Lcom/didi/common/crash/CrashHandler;

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter "ex"

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p1, :cond_0

    .line 41
    :goto_0
    return v1

    .line 30
    :cond_0
    new-instance v0, Lcom/didi/common/crash/CrashHandler$1;

    invoke-direct {v0, p0}, Lcom/didi/common/crash/CrashHandler$1;-><init>(Lcom/didi/common/crash/CrashHandler;)V

    invoke-virtual {v0}, Lcom/didi/common/crash/CrashHandler$1;->start()V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/didi/common/crash/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/crash/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/didi/common/crash/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 51
    :cond_0
    return-void
.end method
