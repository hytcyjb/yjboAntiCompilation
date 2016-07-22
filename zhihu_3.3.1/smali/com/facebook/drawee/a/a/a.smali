.class public Lcom/facebook/drawee/a/a/a;
.super Ljava/lang/Object;
.source "Fresco.java"


# static fields
.field private static a:Lcom/facebook/drawee/a/a/d;


# direct methods
.method public static a()Lcom/facebook/drawee/a/a/c;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/facebook/drawee/a/a/a;->a:Lcom/facebook/drawee/a/a/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/a/a/d;->a()Lcom/facebook/drawee/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/drawee/a/a/d;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/a/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/drawee/a/a/a;->a:Lcom/facebook/drawee/a/a/d;

    .line 44
    sget-object v0, Lcom/facebook/drawee/a/a/a;->a:Lcom/facebook/drawee/a/a/d;

    invoke-static {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Lcom/facebook/common/internal/i;)V

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/imagepipeline/d/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/e;->a(Lcom/facebook/imagepipeline/d/d;)V

    .line 39
    invoke-static {p0}, Lcom/facebook/drawee/a/a/a;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public static b()Lcom/facebook/imagepipeline/d/e;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/facebook/imagepipeline/d/e;->a()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/facebook/imagepipeline/d/c;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/facebook/drawee/a/a/a;->b()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/e;->i()Lcom/facebook/imagepipeline/d/c;

    move-result-object v0

    return-object v0
.end method
