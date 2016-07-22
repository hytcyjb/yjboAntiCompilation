.class public Lcom/artitk/licensefragment/b/b;
.super Ljava/lang/Object;
.source "BitwiseManager.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/artitk/licensefragment/b/b;->a:I

    .line 12
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/artitk/licensefragment/b/b;->a:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
