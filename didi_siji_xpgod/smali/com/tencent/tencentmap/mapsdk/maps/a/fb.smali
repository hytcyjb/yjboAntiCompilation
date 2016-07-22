.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
.super Ljava/lang/Object;
.source "CamerParameter.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I


# instance fields
.field public A:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:F

.field public J:F

.field public n:I

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:Landroid/graphics/Point;

.field public u:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

.field public v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public w:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public x:F

.field public y:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->a:I

    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->b:I

    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->c:I

    .line 14
    const/4 v0, 0x3

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->d:I

    .line 15
    const/4 v0, 0x4

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->e:I

    .line 16
    const/4 v0, 0x5

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->f:I

    .line 17
    const/4 v0, 0x6

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->g:I

    .line 18
    const/4 v0, 0x7

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->h:I

    .line 19
    const/16 v0, 0x8

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->i:I

    .line 20
    const/16 v0, 0x9

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->j:I

    .line 21
    const/16 v0, 0xa

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->k:I

    .line 22
    const/16 v0, 0xb

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->l:I

    .line 23
    const/16 v0, 0xc

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 26
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->o:F

    .line 27
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->p:F

    .line 29
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->q:F

    .line 31
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->r:F

    .line 33
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->s:F

    .line 34
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->t:Landroid/graphics/Point;

    .line 36
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    .line 39
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 41
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->w:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 43
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->x:F

    .line 45
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->y:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    .line 47
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->z:I

    .line 49
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    .line 54
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->B:I

    .line 55
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->C:I

    .line 56
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    .line 58
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->E:I

    .line 59
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->F:I

    .line 60
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->G:I

    .line 61
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->H:I

    .line 63
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->I:F

    .line 64
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->J:F

    return-void
.end method
