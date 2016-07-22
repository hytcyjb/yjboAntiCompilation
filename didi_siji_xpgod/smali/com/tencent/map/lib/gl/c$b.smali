.class public final Lcom/tencent/map/lib/gl/c$b;
.super Ljava/lang/Object;
.source "JNICallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/lib/gl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method public static a([B)Lcom/tencent/map/lib/gl/c$b;
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 313
    new-array v0, v3, [B

    .line 314
    .local v0, intData:[B
    new-instance v1, Lcom/tencent/map/lib/gl/c$b;

    invoke-direct {v1}, Lcom/tencent/map/lib/gl/c$b;-><init>()V

    .line 318
    .local v1, textBitmapInfo:Lcom/tencent/map/lib/gl/c$b;
    invoke-static {p0, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iput v2, v1, Lcom/tencent/map/lib/gl/c$b;->a:F

    .line 322
    invoke-static {p0, v3, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v2

    iput v2, v1, Lcom/tencent/map/lib/gl/c$b;->b:I

    .line 326
    const/16 v2, 0x8

    invoke-static {p0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v2

    iput v2, v1, Lcom/tencent/map/lib/gl/c$b;->c:I

    .line 330
    const/16 v2, 0xc

    invoke-static {p0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v2

    iput v2, v1, Lcom/tencent/map/lib/gl/c$b;->d:I

    .line 334
    return-object v1
.end method
