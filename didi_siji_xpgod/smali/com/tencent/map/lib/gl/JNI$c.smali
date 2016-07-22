.class public final Lcom/tencent/map/lib/gl/JNI$c;
.super Ljava/lang/Object;
.source "JNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/lib/gl/JNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    return-void
.end method

.method public static a([B)Lcom/tencent/map/lib/gl/JNI$c;
    .locals 7
    .parameter "bytes"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 556
    new-instance v3, Lcom/tencent/map/lib/gl/JNI$c;

    invoke-direct {v3}, Lcom/tencent/map/lib/gl/JNI$c;-><init>()V

    .line 558
    .local v3, te:Lcom/tencent/map/lib/gl/JNI$c;
    new-array v1, v6, [B

    .line 560
    .local v1, intData:[B
    invoke-static {p0, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v4

    iput v4, v3, Lcom/tencent/map/lib/gl/JNI$c;->a:I

    .line 566
    invoke-static {p0, v6, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v4

    iput v4, v3, Lcom/tencent/map/lib/gl/JNI$c;->b:I

    .line 570
    const/16 v4, 0x8

    invoke-static {p0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v4

    iput v4, v3, Lcom/tencent/map/lib/gl/JNI$c;->c:I

    .line 574
    const/16 v4, 0xc

    invoke-static {p0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v4

    iput v4, v3, Lcom/tencent/map/lib/gl/JNI$c;->e:I

    .line 578
    const/16 v4, 0x10

    invoke-static {p0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a([B)I

    move-result v4

    .line 582
    mul-int/lit8 v0, v4, 0x2

    .line 583
    .local v0, NAME_BYTE_LEN:I
    new-array v2, v0, [B

    .line 585
    .local v2, strData:[B
    const/16 v4, 0x14

    invoke-static {p0, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->b([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/map/lib/gl/JNI$c;->d:Ljava/lang/String;

    .line 588
    return-object v3
.end method
