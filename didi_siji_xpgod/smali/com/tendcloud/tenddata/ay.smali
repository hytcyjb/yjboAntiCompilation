.class public Lcom/tendcloud/tenddata/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/i;
.implements Lcom/tendcloud/tenddata/s;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/ay;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/ay;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/ay;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/ay;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ay;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/tendcloud/tenddata/ay;->b:J

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/y;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/ay;->c:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/ay;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/y;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->b(I)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/ay;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/ay;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/y;->a(J)Lcom/tendcloud/tenddata/y;

    iget v0, p0, Lcom/tendcloud/tenddata/ay;->c:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(I)Lcom/tendcloud/tenddata/y;

    iget-object v0, p0, Lcom/tendcloud/tenddata/ay;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/y;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tendcloud/tenddata/ay;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/ay;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",refer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
