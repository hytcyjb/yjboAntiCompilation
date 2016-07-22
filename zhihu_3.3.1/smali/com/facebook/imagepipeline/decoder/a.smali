.class public Lcom/facebook/imagepipeline/decoder/a;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/a/b;

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:Lcom/facebook/imagepipeline/h/e;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/a/b;Lcom/facebook/imagepipeline/h/e;Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Lcom/facebook/imagepipeline/animated/a/b;

    .line 56
    iput-object p3, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Landroid/graphics/Bitmap$Config;

    .line 57
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/a;->c:Lcom/facebook/imagepipeline/h/e;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/f/e;ILcom/facebook/imagepipeline/f/h;Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/f/c;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->e()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/facebook/imageformat/b;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 80
    :cond_1
    sget-object v1, Lcom/facebook/imagepipeline/decoder/a$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/decoder/a;->a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown image format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/decoder/a;->a(Lcom/facebook/imagepipeline/f/e;ILcom/facebook/imagepipeline/f/h;)Lcom/facebook/imagepipeline/f/d;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/a;->a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/f/c;

    move-result-object v0

    goto :goto_0

    .line 91
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/a;->b(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/f/c;

    move-result-object v0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/f/c;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->d()Ljava/io/InputStream;

    move-result-object v1

    .line 108
    if-nez v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 112
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/facebook/imageformat/a;->a(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Lcom/facebook/imagepipeline/animated/a/b;

    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1, p2, v2}, Lcom/facebook/imagepipeline/animated/a/b;->a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/common/a;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/f/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 117
    invoke-static {v1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/decoder/a;->a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 117
    invoke-static {v1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method public a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/d;
    .locals 4
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->c:Lcom/facebook/imagepipeline/h/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Landroid/graphics/Bitmap$Config;

    .line 128
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/h/e;->a(Lcom/facebook/imagepipeline/f/e;Landroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 130
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/f/d;

    sget-object v2, Lcom/facebook/imagepipeline/f/g;->a:Lcom/facebook/imagepipeline/f/h;

    .line 133
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->f()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/f/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/f/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    throw v0
.end method

.method public a(Lcom/facebook/imagepipeline/f/e;ILcom/facebook/imagepipeline/f/h;)Lcom/facebook/imagepipeline/f/d;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->c:Lcom/facebook/imagepipeline/h/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Landroid/graphics/Bitmap$Config;

    .line 152
    invoke-interface {v0, p1, v1, p2}, Lcom/facebook/imagepipeline/h/e;->a(Lcom/facebook/imagepipeline/f/e;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 154
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/f/d;

    .line 157
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->f()I

    move-result v2

    invoke-direct {v0, v1, p3, v2}, Lcom/facebook/imagepipeline/f/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/f/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    throw v0
.end method

.method public b(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/f/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Lcom/facebook/imagepipeline/animated/a/b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/animated/a/b;->b(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/common/a;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/f/c;

    move-result-object v0

    return-object v0
.end method
