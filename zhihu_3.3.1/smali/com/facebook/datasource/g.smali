.class public Lcom/facebook/datasource/g;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "SimpleDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 20
    return-void
.end method

.method public static j()Lcom/facebook/datasource/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/datasource/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/datasource/g;

    invoke-direct {v0}, Lcom/facebook/datasource/g;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->a(F)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Z)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/facebook/datasource/AbstractDataSource;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-super {p0, v0}, Lcom/facebook/datasource/AbstractDataSource;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/facebook/datasource/AbstractDataSource;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method
