.class public Lcom/ddtaxi/a/a/dq;
.super Ljava/lang/Exception;


# static fields
.field private static final a:J = 0x4fccd5afd98283ccL


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/ddtaxi/a/a/gk;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/dw;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dw;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dq;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dw;->a()Lcom/ddtaxi/a/a/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dq;->c:Lcom/ddtaxi/a/a/gk;

    iput-object p2, p0, Lcom/ddtaxi/a/a/dq;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/dw;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dw;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dy;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dq;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dy;->n()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dq;->c:Lcom/ddtaxi/a/a/gk;

    iput-object p2, p0, Lcom/ddtaxi/a/a/dq;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/ddtaxi/a/a/dq;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ddtaxi/a/a/dq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/ddtaxi/a/a/gk;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dq;->c:Lcom/ddtaxi/a/a/gk;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dq;->d:Ljava/lang/String;

    return-object v0
.end method
