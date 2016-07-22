.class public Lcom/facebook/imagepipeline/webp/WebPImage;
.super Ljava/lang/Object;
.source "WebPImage.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/h;


# static fields
.field private static volatile a:Z


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
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/facebook/imagepipeline/webp/WebPImage;->mNativeContext:J

    .line 58
    return-void
.end method

.method public static a(JI)Lcom/facebook/imagepipeline/webp/WebPImage;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/facebook/imagepipeline/webp/WebPImage;->h()V

    .line 89
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 90
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeCreateFromNativeMemory(JI)Lcom/facebook/imagepipeline/webp/WebPImage;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized h()V
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/facebook/imagepipeline/webp/WebPImage;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/imagepipeline/webp/WebPImage;->a:Z

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/imagepipeline/webp/WebPImage;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    const-string v0, "webp"

    invoke-static {v0}, Lcom/facebook/common/f/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :goto_0
    :try_start_2
    const-string v0, "webpimage"

    invoke-static {v0}, Lcom/facebook/common/f/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :cond_0
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/imagepipeline/webp/WebPImage;
.end method

.method private static native nativeCreateFromNativeMemory(JI)Lcom/facebook/imagepipeline/webp/WebPImage;
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetDuration()I
.end method

.method private native nativeGetFrame(I)Lcom/facebook/imagepipeline/webp/WebPFrame;
.end method

.method private native nativeGetFrameCount()I
.end method

.method private native nativeGetFrameDurations()[I
.end method

.method private native nativeGetHeight()I
.end method

.method private native nativeGetLoopCount()I
.end method

.method private native nativeGetSizeInBytes()I
.end method

.method private native nativeGetWidth()I
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public synthetic a(I)Lcom/facebook/imagepipeline/animated/base/i;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/webp/WebPImage;->c(I)Lcom/facebook/imagepipeline/webp/WebPFrame;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 9
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/webp/WebPImage;->c(I)Lcom/facebook/imagepipeline/webp/WebPFrame;

    move-result-object v8

    .line 142
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 144
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/webp/WebPFrame;->d()I

    move-result v2

    .line 145
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/webp/WebPFrame;->e()I

    move-result v3

    .line 146
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/webp/WebPFrame;->b()I

    move-result v4

    .line 147
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/webp/WebPFrame;->c()I

    move-result v5

    .line 148
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/webp/WebPFrame;->g()Z

    move-result v6

    .line 149
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/webp/WebPFrame;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v7, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    :goto_0
    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;-><init>(IIIIIZLcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/webp/WebPFrame;->a()V

    return-object v0

    .line 149
    :cond_0
    :try_start_1
    sget-object v7, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Lcom/facebook/imagepipeline/webp/WebPFrame;->a()V

    throw v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeGetFrameCount()I

    move-result v0

    return v0
.end method

.method public c(I)Lcom/facebook/imagepipeline/webp/WebPFrame;
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeGetFrame(I)Lcom/facebook/imagepipeline/webp/WebPFrame;

    move-result-object v0

    return-object v0
.end method

.method public d()[I
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeGetFrameDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeGetLoopCount()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeFinalize()V

    .line 63
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/facebook/imagepipeline/webp/WebPImage;->nativeGetSizeInBytes()I

    move-result v0

    return v0
.end method
