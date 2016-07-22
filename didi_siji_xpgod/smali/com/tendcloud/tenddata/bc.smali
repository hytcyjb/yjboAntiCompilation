.class public Lcom/tendcloud/tenddata/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/aa;
.implements Lcom/tendcloud/tenddata/i;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/tendcloud/tenddata/l;

.field public d:Lcom/tendcloud/tenddata/af;

.field public e:Ljava/util/List;

.field public f:J

.field public g:J

.field public h:J

.field public i:[[Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/bc;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/bc;->b:Ljava/lang/String;

    new-instance v0, Lcom/tendcloud/tenddata/l;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/l;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bc;->c:Lcom/tendcloud/tenddata/l;

    new-instance v0, Lcom/tendcloud/tenddata/af;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/af;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bc;->d:Lcom/tendcloud/tenddata/af;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bc;->e:Ljava/util/List;

    iput-wide v1, p0, Lcom/tendcloud/tenddata/bc;->f:J

    iput-wide v1, p0, Lcom/tendcloud/tenddata/bc;->g:J

    iput-wide v1, p0, Lcom/tendcloud/tenddata/bc;->h:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/bc;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/bc;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/bc;->c:Lcom/tendcloud/tenddata/l;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/bc;->d:Lcom/tendcloud/tenddata/af;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/af;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/y;)V
    .locals 4

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->b(I)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bc;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bc;->c:Lcom/tendcloud/tenddata/l;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Lcom/tendcloud/tenddata/i;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bc;->d:Lcom/tendcloud/tenddata/af;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Lcom/tendcloud/tenddata/i;)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->b(I)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/bc;->i:[[Ljava/lang/Long;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/y;->b()Lcom/tendcloud/tenddata/y;

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/al;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Lcom/tendcloud/tenddata/i;)Lcom/tendcloud/tenddata/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/bc;->i:[[Ljava/lang/Long;

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->b(I)Lcom/tendcloud/tenddata/y;

    iget-object v1, p0, Lcom/tendcloud/tenddata/bc;->i:[[Ljava/lang/Long;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Lcom/tendcloud/tenddata/y;->a([Ljava/lang/Long;)Lcom/tendcloud/tenddata/y;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
