.class Lcom/android/volley/toolbox/c$b;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 456
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/c$b;->a:I

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/c$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/c$b;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/c$b;)I
    .locals 1
    .parameter

    .prologue
    .line 452
    iget v0, p0, Lcom/android/volley/toolbox/c$b;->a:I

    return v0
.end method


# virtual methods
.method public read()I
    .locals 2

    .prologue
    .line 461
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 462
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 463
    iget v1, p0, Lcom/android/volley/toolbox/c$b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/volley/toolbox/c$b;->a:I

    .line 465
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 471
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 472
    iget v1, p0, Lcom/android/volley/toolbox/c$b;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/volley/toolbox/c$b;->a:I

    .line 474
    :cond_0
    return v0
.end method
