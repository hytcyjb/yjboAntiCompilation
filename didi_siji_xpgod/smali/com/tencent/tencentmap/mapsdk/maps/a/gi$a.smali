.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;
.super Ljava/lang/Object;
.source "CityData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "scaleIdx"

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;->a:I

    .line 404
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;->b:I

    .line 405
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;->c:I

    .line 406
    return-void
.end method
