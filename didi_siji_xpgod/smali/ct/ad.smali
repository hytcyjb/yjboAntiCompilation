.class public final Lct/ad;
.super Lct/bb;


# static fields
.field private static g:Lct/ai;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lct/ai;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lct/bb;-><init>()V

    iput v0, p0, Lct/ad;->a:I

    iput v0, p0, Lct/ad;->b:I

    iput v0, p0, Lct/ad;->c:I

    iput v0, p0, Lct/ad;->d:I

    iput v0, p0, Lct/ad;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lct/ad;->f:Lct/ai;

    return-void
.end method


# virtual methods
.method public final a(Lct/az;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lct/ad;->a:I

    invoke-virtual {p1, v0, v2, v2}, Lct/az;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/ad;->a:I

    iget v0, p0, Lct/ad;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lct/az;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/ad;->b:I

    iget v0, p0, Lct/ad;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lct/az;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/ad;->c:I

    iget v0, p0, Lct/ad;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lct/az;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/ad;->d:I

    iget v0, p0, Lct/ad;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lct/az;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/ad;->e:I

    sget-object v0, Lct/ad;->g:Lct/ai;

    if-nez v0, :cond_0

    new-instance v0, Lct/ai;

    invoke-direct {v0}, Lct/ai;-><init>()V

    sput-object v0, Lct/ad;->g:Lct/ai;

    :cond_0
    sget-object v0, Lct/ad;->g:Lct/ai;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lct/az;->a(Lct/bb;IZ)Lct/bb;

    move-result-object v0

    check-cast v0, Lct/ai;

    iput-object v0, p0, Lct/ad;->f:Lct/ai;

    return-void
.end method

.method public final a(Lct/ba;)V
    .locals 2

    iget v0, p0, Lct/ad;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget v0, p0, Lct/ad;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget v0, p0, Lct/ad;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget v0, p0, Lct/ad;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget v0, p0, Lct/ad;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget-object v0, p0, Lct/ad;->f:Lct/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/ad;->f:Lct/ai;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Lct/bb;I)V

    :cond_0
    return-void
.end method
