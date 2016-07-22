.class public Lcom/facebook/imagepipeline/webp/WebPFrame;
.super Ljava/lang/Object;
.source "WebPFrame.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/i;


# instance fields
.field private mNativeContext:J
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 1
    .parameter
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/facebook/imagepipeline/webp/WebPFrame;->mNativeContext:J

    .line 38
    return-void
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetDurationMs()I
.end method

.method private native nativeGetHeight()I
.end method

.method private native nativeGetWidth()I
.end method

.method private native nativeGetXOffset()I
.end method

.method private native nativeGetYOffset()I
.end method

.method private native nativeRenderFrame(IILandroid/graphics/Bitmap;)V
.end method

.method private native nativeShouldBlendWithPreviousFrame()Z
.end method

.method private native nativeShouldDisposeToBackgroundColor()Z
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeDispose()V

    .line 48
    return-void
.end method

.method public a(IILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeRenderFrame(IILandroid/graphics/Bitmap;)V

    .line 53
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeGetXOffset()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeGetYOffset()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeShouldDisposeToBackgroundColor()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeFinalize()V

    .line 43
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPFrame;->nativeShouldBlendWithPreviousFrame()Z

    move-result v0

    return v0
.end method
