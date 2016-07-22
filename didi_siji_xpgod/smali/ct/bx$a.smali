.class final Lct/bx$a;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final b:Lct/bx$a;


# instance fields
.field public a:Ljava/lang/String;

.field private final c:I

.field private final d:[B

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Object;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lct/bx$a;

    invoke-direct {v0}, Lct/bx$a;-><init>()V

    sput-object v0, Lct/bx$a;->b:Lct/bx$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, 0x1

    iput v0, p0, Lct/bx$a;->g:I

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lct/bx$a;->c:I

    .line 301
    iput-object v1, p0, Lct/bx$a;->d:[B

    .line 302
    iput-object v1, p0, Lct/bx$a;->e:Ljava/lang/String;

    .line 303
    iput-object v1, p0, Lct/bx$a;->f:Ljava/lang/Object;

    .line 304
    return-void
.end method

.method constructor <init>([BLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput v0, p0, Lct/bx$a;->g:I

    .line 308
    iput v0, p0, Lct/bx$a;->c:I

    .line 309
    iput-object p1, p0, Lct/bx$a;->d:[B

    .line 310
    iput-object p2, p0, Lct/bx$a;->e:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lct/bx$a;->f:Ljava/lang/Object;

    .line 312
    return-void
.end method

.method static synthetic a(Lct/bx$a;)[B
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lct/bx$a;->d:[B

    return-object v0
.end method

.method static synthetic b(Lct/bx$a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lct/bx$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lct/bx$a;)I
    .locals 2
    .parameter

    .prologue
    .line 285
    iget v0, p0, Lct/bx$a;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lct/bx$a;->g:I

    return v0
.end method

.method static synthetic d(Lct/bx$a;)I
    .locals 1
    .parameter

    .prologue
    .line 285
    iget v0, p0, Lct/bx$a;->c:I

    return v0
.end method

.method static synthetic e(Lct/bx$a;)I
    .locals 1
    .parameter

    .prologue
    .line 285
    iget v0, p0, Lct/bx$a;->g:I

    return v0
.end method

.method static synthetic f(Lct/bx$a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lct/bx$a;->f:Ljava/lang/Object;

    return-object v0
.end method
