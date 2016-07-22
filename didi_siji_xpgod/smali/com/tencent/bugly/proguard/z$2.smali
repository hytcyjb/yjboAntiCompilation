.class final Lcom/tencent/bugly/proguard/z$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Lcom/tencent/bugly/proguard/z;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/z;ZLjava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/tencent/bugly/proguard/z$2;->d:Lcom/tencent/bugly/proguard/z;

    iput-boolean p2, p0, Lcom/tencent/bugly/proguard/z$2;->a:Z

    iput-object p3, p0, Lcom/tencent/bugly/proguard/z$2;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/z$2;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/z$2;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 219
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z$2;->d:Lcom/tencent/bugly/proguard/z;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->b(Lcom/tencent/bugly/proguard/z;)Lcom/tencent/bugly/proguard/A;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/z$2;->b:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/z$2;->c:Ljava/lang/Throwable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/A;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-eq v1, v5, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    :cond_0
    const-string v0, "java catch error: %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/z$2;->c:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
