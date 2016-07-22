.class final Lcom/ddtaxi/a/a/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/r;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ddtaxi/a/a/m;->b:[B

    iget-object v0, p0, Lcom/ddtaxi/a/a/m;->b:[B

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->a([B)Lcom/ddtaxi/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/m;->a:Lcom/ddtaxi/a/a/r;

    return-void
.end method

.method synthetic constructor <init>(ILcom/ddtaxi/a/a/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/m;->a:Lcom/ddtaxi/a/a/r;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/r;->c()V

    new-instance v0, Lcom/ddtaxi/a/a/gi;

    iget-object v1, p0, Lcom/ddtaxi/a/a/m;->b:[B

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gi;-><init>([B)V

    return-object v0
.end method

.method public b()Lcom/ddtaxi/a/a/r;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/m;->a:Lcom/ddtaxi/a/a/r;

    return-object v0
.end method
