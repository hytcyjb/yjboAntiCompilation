.class final Lcom/facebook/soloader/g$a;
.super Ljava/lang/Object;
.source "SysUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/io/FileDescriptor;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0, v0, v1, p1, p2}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EINVAL:I

    if-eq v1, v2, :cond_0

    .line 135
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    return-object v0
.end method
