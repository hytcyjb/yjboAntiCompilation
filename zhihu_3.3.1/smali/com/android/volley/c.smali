.class public Lcom/android/volley/c;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lcom/android/volley/k;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    const/16 v0, 0x9c4

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, v0, v1, v2}, Lcom/android/volley/c;-><init>(IIF)V

    .line 50
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/volley/c;->a:I

    .line 60
    iput p2, p0, Lcom/android/volley/c;->c:I

    .line 61
    iput p3, p0, Lcom/android/volley/c;->d:F

    .line 62
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/volley/c;->a:I

    return v0
.end method

.method public a(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/android/volley/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/volley/c;->b:I

    .line 94
    iget v0, p0, Lcom/android/volley/c;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/volley/c;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/volley/c;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/volley/c;->a:I

    .line 95
    invoke-virtual {p0}, Lcom/android/volley/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    throw p1

    .line 98
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/volley/c;->b:I

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/android/volley/c;->b:I

    iget v1, p0, Lcom/android/volley/c;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
