.class Lcom/facebook/imagepipeline/decoder/d$a;
.super Ljava/lang/Object;
.source "SimpleProgressiveJpegConfig.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/decoder/d$1;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/imagepipeline/decoder/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
