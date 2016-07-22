.class public Lcom/facebook/imagepipeline/d/f;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/facebook/imagepipeline/d/f;->a:I

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/d/f;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/facebook/imagepipeline/d/f;->a:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/imagepipeline/d/f$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/d/f$1;-><init>(Lcom/facebook/imagepipeline/d/f;Ljava/lang/Runnable;)V

    .line 46
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v1
.end method
