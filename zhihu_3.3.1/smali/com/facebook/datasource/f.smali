.class public Lcom/facebook/datasource/f;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/f$a;
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "List of suppliers is empty!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(ZLjava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Lcom/facebook/datasource/f;
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
            "Lcom/facebook/datasource/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/facebook/datasource/f;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/datasource/f;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

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
    .line 60
    new-instance v0, Lcom/facebook/datasource/f$a;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/f$a;-><init>(Lcom/facebook/datasource/f;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/facebook/datasource/f;->a()Lcom/facebook/datasource/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 70
    if-ne p1, p0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 73
    :cond_0
    instance-of v0, p1, Lcom/facebook/datasource/f;

    if-nez v0, :cond_1

    .line 74
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_1
    check-cast p1, Lcom/facebook/datasource/f;

    .line 77
    iget-object v0, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    invoke-static {p0}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "list"

    iget-object v2, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/facebook/common/internal/f$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
