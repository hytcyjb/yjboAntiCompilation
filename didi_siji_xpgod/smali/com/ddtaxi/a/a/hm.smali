.class Lcom/ddtaxi/a/a/hm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/hh;


# instance fields
.field private a:Z

.field private final synthetic b:Lcom/ddtaxi/a/a/hh;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/hh;)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/a/a/hm;->b:Lcom/ddtaxi/a/a/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/hm;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ddtaxi/a/a/hm;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/hn;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/hn;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/ddtaxi/a/a/hm;->a:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hm;->b:Lcom/ddtaxi/a/a/hh;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/hh;->a(Ljava/lang/Object;)V

    return-void
.end method
