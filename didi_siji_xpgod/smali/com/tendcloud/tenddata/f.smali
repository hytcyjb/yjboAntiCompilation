.class public Lcom/tendcloud/tenddata/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/i;
.implements Lcom/tendcloud/tenddata/s;


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/tendcloud/tenddata/f;->a:D

    iput-wide v0, p0, Lcom/tendcloud/tenddata/f;->b:D

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->c(I)I

    move-result v0

    iget-wide v1, p0, Lcom/tendcloud/tenddata/f;->a:D

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/y;->b(D)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/tendcloud/tenddata/f;->b:D

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/y;->b(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/y;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/y;->b(I)Lcom/tendcloud/tenddata/y;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/f;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/y;->a(D)Lcom/tendcloud/tenddata/y;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/f;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/y;->a(D)Lcom/tendcloud/tenddata/y;

    return-void
.end method
