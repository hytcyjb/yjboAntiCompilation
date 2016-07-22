.class public Lcom/facebook/datasource/e;
.super Ljava/lang/Object;
.source "FirstAvailableDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/i",
        "<",
        "Lcom/facebook/datasource/b",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<TT;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "List of suppliers is empty!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(ZLjava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/facebook/datasource/e;->a:Ljava/util/List;

    .line 37
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Lcom/facebook/datasource/e;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<TT;>;>;>;)",
            "Lcom/facebook/datasource/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/facebook/datasource/e;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/e;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/datasource/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/datasource/e;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/datasource/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/datasource/e$a;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/e$a;-><init>(Lcom/facebook/datasource/e;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/facebook/datasource/e;->a()Lcom/facebook/datasource/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 59
    :cond_0
    instance-of v0, p1, Lcom/facebook/datasource/e;

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_1
    check-cast p1, Lcom/facebook/datasource/e;

    .line 63
    iget-object v0, p0, Lcom/facebook/datasource/e;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/facebook/datasource/e;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/datasource/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    invoke-static {p0}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "list"

    iget-object v2, p0, Lcom/facebook/datasource/e;->a:Ljava/util/List;

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/facebook/common/internal/f$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
