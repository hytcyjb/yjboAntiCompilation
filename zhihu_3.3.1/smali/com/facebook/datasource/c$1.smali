.class final Lcom/facebook/datasource/c$1;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/i",
        "<",
        "Lcom/facebook/datasource/b",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/datasource/c$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 33
    iget-object v0, p0, Lcom/facebook/datasource/c$1;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/facebook/datasource/c$1;->a()Lcom/facebook/datasource/b;

    move-result-object v0

    return-object v0
.end method
