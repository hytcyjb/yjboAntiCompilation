.class public Lcom/facebook/imagepipeline/animated/base/f;
.super Ljava/lang/Object;
.source "AnimatedDrawableOptions.java"


# static fields
.field public static a:Lcom/facebook/imagepipeline/animated/base/f;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/animated/base/f;->a()Lcom/facebook/imagepipeline/animated/base/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/g;->e()Lcom/facebook/imagepipeline/animated/base/f;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/base/f;->a:Lcom/facebook/imagepipeline/animated/base/f;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/g;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->b:Z

    .line 51
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->c:Z

    .line 52
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->d:I

    .line 53
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->e:Z

    .line 54
    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/animated/base/g;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/g;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/base/g;-><init>()V

    return-object v0
.end method
