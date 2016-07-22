.class Lcom/facebook/imagepipeline/memory/j$1;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"

# interfaces
.implements Lcom/facebook/common/references/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/memory/j;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/c",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/memory/j;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/j;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/j$1;->a:Lcom/facebook/imagepipeline/memory/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/j$1;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/j$1;->a:Lcom/facebook/imagepipeline/memory/j;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/j;->a([B)V

    .line 46
    return-void
.end method
