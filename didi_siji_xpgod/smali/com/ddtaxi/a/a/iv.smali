.class public final Lcom/ddtaxi/a/a/iv;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field static final g:I = 0x3

.field static final h:I = 0x7

.field static final i:I = 0x1

.field static final j:I = 0x2

.field static final k:I = 0x3

.field static final l:I

.field static final m:I

.field static final n:I

.field static final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {v1, v3}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v0

    sput v0, Lcom/ddtaxi/a/a/iv;->l:I

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v0

    sput v0, Lcom/ddtaxi/a/a/iv;->m:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v0

    sput v0, Lcom/ddtaxi/a/a/iv;->n:I

    invoke-static {v3, v2}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v0

    sput v0, Lcom/ddtaxi/a/a/iv;->o:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
