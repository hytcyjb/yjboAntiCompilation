.class public final Lct/av;
.super Ljava/lang/Object;

# interfaces
.implements Lct/aq;


# static fields
.field private static l:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Lct/bc;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/util/concurrent/CountDownLatch;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lct/r;

.field public j:J

.field public k:I

.field private m:Lct/bc;

.field private n:[B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lct/av;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lct/bc;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lct/av;->o:I

    iput v2, p0, Lct/av;->b:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lct/av;->d:Ljava/util/concurrent/CountDownLatch;

    iput v2, p0, Lct/av;->e:I

    iput v2, p0, Lct/av;->f:I

    iput v2, p0, Lct/av;->g:I

    iput v2, p0, Lct/av;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lct/av;->i:Lct/r;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/av;->j:J

    const/16 v0, 0x14

    iput v0, p0, Lct/av;->k:I

    iput-object p1, p0, Lct/av;->m:Lct/bc;

    sget-object v0, Lct/av;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lct/av;->o:I

    iget-object v0, p0, Lct/av;->m:Lct/bc;

    iget v1, p0, Lct/av;->o:I

    invoke-virtual {v0, v1}, Lct/bc;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Lct/bc;
    .locals 1

    iget-object v0, p0, Lct/av;->a:Lct/bc;

    return-object v0
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lct/au;->a()Lct/au;

    move-result-object v0

    invoke-virtual {v0, p0}, Lct/au;->a(Lct/av;)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lct/av;->b:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lct/av;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lct/r;
    .locals 1

    iget-object v0, p0, Lct/av;->i:Lct/r;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lct/av;->e:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lct/av;->h:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lct/av;->f:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lct/av;->g:I

    return v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lct/av;->m:Lct/bc;

    invoke-virtual {v0}, Lct/bc;->a()[B

    move-result-object v0

    iput-object v0, p0, Lct/av;->n:[B

    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lct/av;->o:I

    return v0
.end method

.method public final l()[B
    .locals 1

    iget-object v0, p0, Lct/av;->n:[B

    return-object v0
.end method
