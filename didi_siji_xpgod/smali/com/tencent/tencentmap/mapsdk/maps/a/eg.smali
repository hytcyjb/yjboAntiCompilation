.class public abstract Lcom/tencent/tencentmap/mapsdk/maps/a/eg;
.super Ljava/lang/Object;
.source "GLObject.java"


# static fields
.field public static k:Landroid/graphics/Paint;

.field protected static l:Landroid/graphics/Paint;


# instance fields
.field protected h:Ljava/nio/FloatBuffer;

.field protected i:Ljava/nio/FloatBuffer;

.field protected j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 53
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 57
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;->l:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;->j:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter "texName"

    .prologue
    .line 149
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;->j:I

    .line 150
    return-void
.end method

.method protected a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 133
    return-void
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;->j:I

    return v0
.end method
