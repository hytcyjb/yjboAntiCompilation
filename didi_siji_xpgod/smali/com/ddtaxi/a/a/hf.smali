.class Lcom/ddtaxi/a/a/hf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/l;


# instance fields
.field a:I

.field final synthetic b:Lcom/ddtaxi/a/a/hc;

.field private final c:Lcom/ddtaxi/a/a/he;

.field private d:Lcom/ddtaxi/a/a/l;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/hc;)V
    .locals 2

    iput-object p1, p0, Lcom/ddtaxi/a/a/hf;->b:Lcom/ddtaxi/a/a/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ddtaxi/a/a/he;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/he;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/he;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/hf;->c:Lcom/ddtaxi/a/a/he;

    iget-object v0, p0, Lcom/ddtaxi/a/a/hf;->c:Lcom/ddtaxi/a/a/he;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/he;->a()Lcom/ddtaxi/a/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gi;->c()Lcom/ddtaxi/a/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hf;->d:Lcom/ddtaxi/a/a/l;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/hc;->a()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/a/a/hf;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/hc;Lcom/ddtaxi/a/a/hf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hf;-><init>(Lcom/ddtaxi/a/a/hc;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/hf;->b()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public b()B
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hf;->d:Lcom/ddtaxi/a/a/l;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/l;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hf;->c:Lcom/ddtaxi/a/a/he;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/he;->a()Lcom/ddtaxi/a/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gi;->c()Lcom/ddtaxi/a/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hf;->d:Lcom/ddtaxi/a/a/l;

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/hf;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ddtaxi/a/a/hf;->a:I

    iget-object v0, p0, Lcom/ddtaxi/a/a/hf;->d:Lcom/ddtaxi/a/a/l;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/l;->b()B

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/hf;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/hf;->a()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
