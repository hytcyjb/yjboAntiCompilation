.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/hf;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 77
    instance-of v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hh;

    if-eqz v1, :cond_0

    .line 78
    check-cast p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hh;

    .end local p0
    throw p0

    .line 79
    .restart local p0
    :cond_0
    instance-of v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;

    if-eqz v1, :cond_2

    move-object v1, p0

    .line 80
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 81
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 82
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 84
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_1
    check-cast p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hg;

    .end local p0
    throw p0

    .line 88
    .end local v0           #cause:Ljava/lang/Throwable;
    .restart local p0
    :cond_2
    instance-of v1, p0, Ljava/lang/StackOverflowError;

    if-eqz v1, :cond_3

    .line 89
    check-cast p0, Ljava/lang/StackOverflowError;

    .end local p0
    throw p0

    .line 90
    .restart local p0
    :cond_3
    instance-of v1, p0, Ljava/lang/VirtualMachineError;

    if-eqz v1, :cond_4

    .line 91
    check-cast p0, Ljava/lang/VirtualMachineError;

    .end local p0
    throw p0

    .line 92
    .restart local p0
    :cond_4
    instance-of v1, p0, Ljava/lang/ThreadDeath;

    if-eqz v1, :cond_5

    .line 93
    check-cast p0, Ljava/lang/ThreadDeath;

    .end local p0
    throw p0

    .line 94
    .restart local p0
    :cond_5
    instance-of v1, p0, Ljava/lang/LinkageError;

    if-eqz v1, :cond_6

    .line 95
    check-cast p0, Ljava/lang/LinkageError;

    .end local p0
    throw p0

    .line 97
    .restart local p0
    :cond_6
    return-void
.end method
