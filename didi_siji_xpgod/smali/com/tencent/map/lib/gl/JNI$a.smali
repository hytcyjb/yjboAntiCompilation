.class public final Lcom/tencent/map/lib/gl/JNI$a;
.super Ljava/lang/Object;
.source "JNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/lib/gl/JNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 630
    const/16 v2, 0x50

    new-array v0, v2, [B

    .line 631
    .local v0, data:[B
    iget v2, p0, Lcom/tencent/map/lib/gl/JNI$a;->a:I

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v2

    invoke-static {v2, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    iget v2, p0, Lcom/tencent/map/lib/gl/JNI$a;->b:I

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v2

    invoke-static {v2, v4, v0, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    iget v2, p0, Lcom/tencent/map/lib/gl/JNI$a;->c:I

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    iget v2, p0, Lcom/tencent/map/lib/gl/JNI$a;->d:I

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    iget-object v2, p0, Lcom/tencent/map/lib/gl/JNI$a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 644
    .local v1, strData:[B
    const/16 v2, 0x10

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    return-object v0
.end method
