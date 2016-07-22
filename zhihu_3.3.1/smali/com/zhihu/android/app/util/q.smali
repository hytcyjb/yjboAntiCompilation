.class public Lcom/zhihu/android/app/util/q;
.super Ljava/lang/Object;
.source "JacocoHelper.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/zhihu/android/api/b/u;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "UTF-8"

    sput-object v0, Lcom/zhihu/android/app/util/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zhihu/android/app/ui/activity/a;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/util/q;->b:Z

    .line 37
    const-class v0, Lcom/zhihu/android/api/b/u;

    invoke-virtual {p1, v0}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/u;

    iput-object v0, p0, Lcom/zhihu/android/app/util/q;->c:Lcom/zhihu/android/api/b/u;

    .line 39
    invoke-static {p1}, Lcom/zhihu/android/base/util/SystemUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/util/q;->d:Ljava/lang/String;

    .line 42
    :try_start_0
    invoke-static {p1}, Lcom/zhihu/android/base/util/SystemUtils;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/util/q;->e:I
    :try_end_0
    .catch Lcom/zhihu/android/base/util/SystemUtils$SystemUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/util/q;->a(Landroid/content/Context;)V

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Lcom/zhihu/android/base/util/SystemUtils$SystemUtilsException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Lcom/zhihu/android/app/util/af;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Lcom/zhihu/android/app/util/af;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {p1}, Lcom/zhihu/android/app/util/af;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 62
    :try_start_0
    sget-object v2, Lcom/zhihu/android/app/util/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/zhihu/android/app/util/q;->a(Landroid/content/Context;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 109
    new-instance v0, Lcom/zhihu/android/bumblebee/http/g$a;

    const-string v1, "file"

    new-instance v2, Lcom/google/api/client/http/ByteArrayContent;

    const-string v3, "application/octet-stream"

    invoke-direct {v2, v3, p3}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v0, v1, p2, v2}, Lcom/zhihu/android/bumblebee/http/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpContent;)V

    .line 110
    iget-object v1, p0, Lcom/zhihu/android/app/util/q;->c:Lcom/zhihu/android/api/b/u;

    iget-object v2, p0, Lcom/zhihu/android/app/util/q;->d:Ljava/lang/String;

    iget v3, p0, Lcom/zhihu/android/app/util/q;->e:I

    new-instance v4, Lcom/zhihu/android/app/util/q$1;

    invoke-direct {v4, p0, p1}, Lcom/zhihu/android/app/util/q$1;-><init>(Lcom/zhihu/android/app/util/q;Landroid/content/Context;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/zhihu/android/api/b/u;->a(Ljava/lang/String;ILcom/zhihu/android/bumblebee/http/g$a;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 122
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 78
    :try_start_0
    const-string v0, "org.jacoco.agent.rt.RT"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAgent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getExecutionData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".exec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/zhihu/android/app/util/q;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1, v2}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-static {p1, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/zhihu/android/app/util/af;->e(Landroid/content/Context;Z)V

    .line 92
    invoke-direct {p0, p1, v1, v0}, Lcom/zhihu/android/app/util/q;->a(Landroid/content/Context;Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    iput-object v6, p0, Lcom/zhihu/android/app/util/q;->c:Lcom/zhihu/android/api/b/u;

    .line 99
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iput-object v6, p0, Lcom/zhihu/android/app/util/q;->c:Lcom/zhihu/android/api/b/u;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/zhihu/android/app/util/q;->c:Lcom/zhihu/android/api/b/u;

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/zhihu/android/app/util/q;->b:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/util/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method
