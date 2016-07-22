.class public final Lcom/xiaomi/kenai/jbosh/ag;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/xiaomi/kenai/jbosh/an;


# direct methods
.method private constructor <init>(Lcom/xiaomi/kenai/jbosh/an;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/ag;->a:Lcom/xiaomi/kenai/jbosh/an;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ag;
    .locals 2

    const-string v0, "xm"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/xiaomi/kenai/jbosh/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ag;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ag;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/kenai/jbosh/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ag;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ag;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is required and may not be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local arg is required and may not be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lcom/xiaomi/kenai/jbosh/ag;

    new-instance v1, Lcom/xiaomi/kenai/jbosh/an;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/kenai/jbosh/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/ag;-><init>(Lcom/xiaomi/kenai/jbosh/an;)V

    :goto_0
    return-object v0

    :cond_5
    new-instance v0, Lcom/xiaomi/kenai/jbosh/ag;

    new-instance v1, Lcom/xiaomi/kenai/jbosh/an;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/kenai/jbosh/an;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/ag;-><init>(Lcom/xiaomi/kenai/jbosh/an;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ag;->a:Lcom/xiaomi/kenai/jbosh/an;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/an;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/xiaomi/kenai/jbosh/an;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ag;->a:Lcom/xiaomi/kenai/jbosh/an;

    invoke-virtual {v0, p1}, Lcom/xiaomi/kenai/jbosh/an;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ag;->a:Lcom/xiaomi/kenai/jbosh/an;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/an;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ag;->a:Lcom/xiaomi/kenai/jbosh/an;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/an;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/xiaomi/kenai/jbosh/ag;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/kenai/jbosh/ag;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ag;->a:Lcom/xiaomi/kenai/jbosh/an;

    iget-object v1, p1, Lcom/xiaomi/kenai/jbosh/ag;->a:Lcom/xiaomi/kenai/jbosh/an;

    invoke-virtual {v0, v1}, Lcom/xiaomi/kenai/jbosh/an;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ag;->a:Lcom/xiaomi/kenai/jbosh/an;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/an;->hashCode()I

    move-result v0

    return v0
.end method
