.class public Lc/a/a/a$b;
.super Ljava/lang/Object;
.source "Ln.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lc/a/a/a;->a()Lc/a/a/a$a;

    move-result-object v0

    iget v0, v0, Lc/a/a/a$a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/a/a/a;->a()Lc/a/a/a$a;

    move-result-object v2

    iget-object v2, v2, Lc/a/a/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc/a/a/a;->a()Lc/a/a/a$a;

    move-result-object v0

    iget-object v0, v0, Lc/a/a/a$a;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-static {}, Lc/a/a/a$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lc/a/a/a$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 257
    invoke-static {}, Lc/a/a/a;->a()Lc/a/a/a$a;

    move-result-object v0

    iget v0, v0, Lc/a/a/a$a;->a:I

    if-gt v0, v1, :cond_0

    .line 258
    const-string v0, "%s %s %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 260
    :cond_0
    return-object p1
.end method
