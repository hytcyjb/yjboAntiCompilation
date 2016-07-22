.class public Lcom/facebook/imagepipeline/gif/GifImage;
.super Ljava/lang/Object;
.source "GifImage.java"

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
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Lcom/facebook/imagepipeline/gif/GifImage;->mNativeContext:J

    .line 75
    return-void
.end method

.method public static a(JI)Lcom/facebook/imagepipeline/gif/GifImage;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {}, Lcom/facebook/imagepipeline/gif/GifImage;->h()V

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 64
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeCreateFromNativeMemory(JI)Lcom/facebook/imagepipeline/gif/GifImage;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    .locals 1
    .parameter

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 159
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 153
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 155
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 157
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    goto :goto_0

    .line 159
    :cond_3
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    goto :goto_0
.end method

.method private static declared-synchronized h()V
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/facebook/imagepipeline/gif/GifImage;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/imagepipeline/gif/GifImage;->a:Z

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/imagepipeline/gif/GifImage;->a:Z

    .line 40
    const-string v0, "gifimage"

    invoke-static {v0}, Lcom/facebook/common/f/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/imagepipeline/gif/GifImage;
.end method

.method private static native nativeCreateFromNativeMemory(JI)Lcom/facebook/imagepipeline/gif/GifImage;
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetDuration()I
.end method

.method private native nativeGetFrame(I)Lcom/facebook/imagepipeline/gif/GifFrame;
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
    .line 89
    invoke-direct {p0}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public synthetic a(I)Lcom/facebook/imagepipeline/animated/base/i;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/gif/GifImage;->c(I)Lcom/facebook/imagepipeline/gif/GifFrame;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 9
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/gif/GifImage;->c(I)Lcom/facebook/imagepipeline/gif/GifFrame;

    move-result-object v8

    .line 136
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 138
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/gif/GifFrame;->d()I

    move-result v2

    .line 139
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/gif/GifFrame;->e()I

    move-result v3

    .line 140
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/gif/GifFrame;->b()I

    move-result v4

    .line 141
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/gif/GifFrame;->c()I

    move-result v5

    const/4 v6, 0x1

    .line 143
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/gif/GifFrame;->f()I

    move-result v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/gif/GifImage;->d(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    move-result-object v7

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;-><init>(IIIIIZLcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/gif/GifFrame;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Lcom/facebook/imagepipeline/gif/GifFrame;->a()V

    throw v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeGetFrameCount()I

    move-result v0

    return v0
.end method

.method public c(I)Lcom/facebook/imagepipeline/gif/GifFrame;
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeGetFrame(I)Lcom/facebook/imagepipeline/gif/GifFrame;

    move-result-object v0

    return-object v0
.end method

.method public d()[I
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeGetFrameDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeGetLoopCount()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeFinalize()V

    .line 80
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/imagepipeline/gif/GifImage;->nativeGetSizeInBytes()I

    move-result v0

    return v0
.end method
