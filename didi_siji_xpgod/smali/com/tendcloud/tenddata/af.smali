.class public Lcom/tendcloud/tenddata/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/i;
.implements Lcom/tendcloud/tenddata/s;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/tendcloud/tenddata/f;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->b:Ljava/lang/String;

    new-instance v0, Lcom/tendcloud/tenddata/f;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/f;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->c:Lcom/tendcloud/tenddata/f;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->h:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/tendcloud/tenddata/af;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/af;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/af;->m:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->q:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/af;->r:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->c:Lcom/tendcloud/tenddata/f;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/f;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/af;->i:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/af;->k:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/tendcloud/tenddata/af;->m:Z

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/tendcloud/tenddata/af;->r:J

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/y;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/y;)V
    .locals 2

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->b(I)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->c:Lcom/tendcloud/tenddata/f;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Lcom/tendcloud/tenddata/i;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget v0, p0, Lcom/tendcloud/tenddata/af;->i:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(I)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget v0, p0, Lcom/tendcloud/tenddata/af;->k:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(I)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/af;->m:Z

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Z)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/af;->r:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/y;->a(J)Lcom/tendcloud/tenddata/y;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/af;->v:I

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/y;->a(I)Lcom/tendcloud/tenddata/y;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/af;->w:I

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/y;->a(I)Lcom/tendcloud/tenddata/y;

    return-void
.end method
