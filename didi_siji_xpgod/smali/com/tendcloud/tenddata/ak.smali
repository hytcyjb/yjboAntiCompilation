.class final Lcom/tendcloud/tenddata/ak;
.super Ljava/lang/Object;


# static fields
.field private static final j:I = 0x40000000


# instance fields
.field final a:Lcom/tendcloud/tenddata/ac;

.field final b:[I

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:I

.field i:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tendcloud/tenddata/ac;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/ac;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/ak;->a:Lcom/tendcloud/tenddata/ac;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/ak;->b:[I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/tendcloud/tenddata/ak;->c:I

    return-void
.end method

.method a(III)V
    .locals 1

    iput p1, p0, Lcom/tendcloud/tenddata/ak;->c:I

    iput p2, p0, Lcom/tendcloud/tenddata/ak;->d:I

    iput p3, p0, Lcom/tendcloud/tenddata/ak;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ak;->f:Z

    return-void
.end method

.method a(IIIII)V
    .locals 2

    const/4 v1, 0x1

    iput p1, p0, Lcom/tendcloud/tenddata/ak;->c:I

    add-int v0, p2, p4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/ak;->d:I

    iput p5, p0, Lcom/tendcloud/tenddata/ak;->e:I

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/ak;->f:Z

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/ak;->g:Z

    iput p2, p0, Lcom/tendcloud/tenddata/ak;->h:I

    iput p3, p0, Lcom/tendcloud/tenddata/ak;->i:I

    return-void
.end method

.method b(III)V
    .locals 1

    iput p1, p0, Lcom/tendcloud/tenddata/ak;->c:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/ak;->d:I

    iput p3, p0, Lcom/tendcloud/tenddata/ak;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ak;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ak;->g:Z

    return-void
.end method
