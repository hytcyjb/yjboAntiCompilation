.class final Lcom/ddtaxi/a/a/ej;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/dl;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/dl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/ej;->a:Lcom/ddtaxi/a/a/dl;

    iput p2, p0, Lcom/ddtaxi/a/a/ej;->b:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ej;)Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ej;->a:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/ddtaxi/a/a/ej;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/ddtaxi/a/a/ej;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ej;->a:Lcom/ddtaxi/a/a/dl;

    iget-object v2, p1, Lcom/ddtaxi/a/a/ej;->a:Lcom/ddtaxi/a/a/dl;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/ddtaxi/a/a/ej;->b:I

    iget v2, p1, Lcom/ddtaxi/a/a/ej;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ej;->a:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/ddtaxi/a/a/ej;->b:I

    add-int/2addr v0, v1

    return v0
.end method