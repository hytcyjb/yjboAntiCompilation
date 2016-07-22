.class public final Lct/ar$b;
.super Lct/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Z

.field public c:Ljava/net/Socket;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:[I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 1

    invoke-direct {p0}, Lct/as$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/ar$b;->b:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lct/ar$b;->f:Ljava/lang/String;

    iput-object p2, p0, Lct/ar$b;->g:[I

    iput p3, p0, Lct/ar$b;->h:I

    iput p4, p0, Lct/ar$b;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "DnsIpListRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDaemon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isDaemon()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DnsIpListRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DnsIpListRunnable run start. _domain:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lct/ar$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",_ports"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lct/ar$b;->g:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",_timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lct/ar$b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",_parallelNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lct/ar$b;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lct/ar$b;->f:Ljava/lang/String;

    iget-object v1, p0, Lct/ar$b;->g:[I

    iget v2, p0, Lct/ar$b;->h:I

    invoke-static {v0, v1, v2}, Lct/ar;->a(Ljava/lang/String;[II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iput-boolean v5, p0, Lct/ar$b;->d:Z

    const-string v0, "DnsIpListRunnable"

    const-string v1, "DnsIpListRunnable run. getDnsIpList fail."

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lct/ar$b;->i:I

    iget-object v1, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lct/ar$b;->e:I

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lct/ar$b;->e:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget v3, p0, Lct/ar$b;->e:I

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-boolean v5, p0, Lct/ar$b;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lct/ar$b;->h:I

    invoke-static {v0, v3}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    long-to-int v0, v0

    sput v0, Lct/ar;->b:I

    iput-boolean v5, p0, Lct/ar$b;->d:Z

    const-string v0, "DnsIpListRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DnsIpListRunnable run end. _triedNum:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lct/ar$b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",_retSk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
