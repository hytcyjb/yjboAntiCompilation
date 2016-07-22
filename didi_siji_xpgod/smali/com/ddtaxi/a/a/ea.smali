.class public final Lcom/ddtaxi/a/a/ea;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:Lcom/ddtaxi/a/a/ci;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ddtaxi/a/a/dw;

.field private e:Lcom/ddtaxi/a/a/dl;

.field private f:I

.field private g:[Lcom/ddtaxi/a/a/dt;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/ci;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/ea;->b:Lcom/ddtaxi/a/a/ci;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ci;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/ddtaxi/a/a/dk;->a(Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ea;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ddtaxi/a/a/ea;->d:Lcom/ddtaxi/a/a/dw;

    iput p4, p0, Lcom/ddtaxi/a/a/ea;->a:I

    iput-object p3, p0, Lcom/ddtaxi/a/a/ea;->e:Lcom/ddtaxi/a/a/dl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/ea;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ci;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;ILcom/ddtaxi/a/a/ea;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/ea;-><init>(Lcom/ddtaxi/a/a/ci;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;I)V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ea;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/ea;->f:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ea;[Lcom/ddtaxi/a/a/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ea;->g:[Lcom/ddtaxi/a/a/dt;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ea;)[Lcom/ddtaxi/a/a/dt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ea;->g:[Lcom/ddtaxi/a/a/dt;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/ea;)I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ea;->f:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ea;->a:I

    return v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/dt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ea;->g:[Lcom/ddtaxi/a/a/dt;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ea;->b:Lcom/ddtaxi/a/a/ci;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ci;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/ddtaxi/a/a/dw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ea;->d:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ea;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ea;->e:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ea;->f:I

    return v0
.end method
