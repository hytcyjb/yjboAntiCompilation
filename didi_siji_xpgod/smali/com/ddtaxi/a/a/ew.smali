.class abstract Lcom/ddtaxi/a/a/ew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/fb;


# instance fields
.field private volatile a:Lcom/ddtaxi/a/a/dt;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ew;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ew;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/ddtaxi/a/a/dt;
.end method

.method public b()Lcom/ddtaxi/a/a/dt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ew;->a:Lcom/ddtaxi/a/a/dt;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ew;->a:Lcom/ddtaxi/a/a/dt;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ew;->a()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ew;->a:Lcom/ddtaxi/a/a/dt;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ew;->a:Lcom/ddtaxi/a/a/dt;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
