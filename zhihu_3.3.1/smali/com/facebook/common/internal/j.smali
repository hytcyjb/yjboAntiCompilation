.class public final Lcom/facebook/common/internal/j;
.super Ljava/lang/Object;
.source "Throwables.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/facebook/common/internal/j;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 80
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/facebook/common/internal/j;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TX;>;)V^TX;"
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 62
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/common/internal/j;->a(Ljava/lang/Throwable;)V

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
