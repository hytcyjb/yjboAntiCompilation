.class public Lcom/facebook/imagepipeline/nativecode/c;
.super Ljava/lang/Object;
.source "WebpTranscoderFactory.java"


# static fields
.field public static a:Z

.field private static b:Lcom/facebook/imagepipeline/nativecode/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-boolean v1, Lcom/facebook/imagepipeline/nativecode/c;->a:Z

    .line 25
    :try_start_0
    const-string v0, "com.facebook.imagepipeline.nativecode.WebpTranscoderImpl"

    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/nativecode/b;

    sput-object v0, Lcom/facebook/imagepipeline/nativecode/c;->b:Lcom/facebook/imagepipeline/nativecode/b;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/imagepipeline/nativecode/c;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    sput-boolean v1, Lcom/facebook/imagepipeline/nativecode/c;->a:Z

    goto :goto_0
.end method

.method public static a()Lcom/facebook/imagepipeline/nativecode/b;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/facebook/imagepipeline/nativecode/c;->b:Lcom/facebook/imagepipeline/nativecode/b;

    return-object v0
.end method
