.class public Lcom/facebook/imagepipeline/producers/ar;
.super Ljava/lang/Object;
.source "WebpTranscodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/ar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/imagepipeline/memory/w;

.field private final c:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/producers/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/memory/w;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ar;->a:Ljava/util/concurrent/Executor;

    .line 50
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/w;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ar;->b:Lcom/facebook/imagepipeline/memory/w;

    .line 51
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ag;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ar;->c:Lcom/facebook/imagepipeline/producers/ag;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/common/util/TriState;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/ar;->b(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/ar;)Lcom/facebook/imagepipeline/memory/w;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ar;->b:Lcom/facebook/imagepipeline/memory/w;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/memory/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ar;->b(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/memory/y;)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/f/e;",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Lcom/facebook/imagepipeline/f/e;->a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v6

    .line 100
    new-instance v0, Lcom/facebook/imagepipeline/producers/ar$1;

    .line 103
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v3

    const-string v4, "WebpTranscodeProducer"

    .line 105
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/ar$1;-><init>(Lcom/facebook/imagepipeline/producers/ar;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/f/e;)V

    .line 148
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ar;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/ar;Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/ar;->a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    return-void
.end method

.method private static b(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/common/util/TriState;
    .locals 3
    .parameter

    .prologue
    .line 152
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/e;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/facebook/imageformat/b;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/facebook/imagepipeline/producers/ar$2;->a:[I

    invoke-virtual {v0}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 168
    sget-object v0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/c;->a()Lcom/facebook/imagepipeline/nativecode/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/nativecode/b;->a(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 160
    :goto_1
    invoke-static {v0}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 165
    :pswitch_1
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/memory/y;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/e;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/facebook/imageformat/b;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    .line 177
    sget-object v2, Lcom/facebook/imagepipeline/producers/ar$2;->a:[I

    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong image format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_0
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/c;->a()Lcom/facebook/imagepipeline/nativecode/b;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v0, p1, v2}, Lcom/facebook/imagepipeline/nativecode/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 193
    :goto_0
    return-void

    .line 187
    :pswitch_1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/c;->a()Lcom/facebook/imagepipeline/nativecode/b;

    move-result-object v1

    .line 188
    invoke-interface {v1, v0, p1}, Lcom/facebook/imagepipeline/nativecode/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ar;->c:Lcom/facebook/imagepipeline/producers/ag;

    new-instance v1, Lcom/facebook/imagepipeline/producers/ar$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ar$a;-><init>(Lcom/facebook/imagepipeline/producers/ar;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 57
    return-void
.end method
