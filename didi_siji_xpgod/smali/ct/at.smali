.class public final Lct/at;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/net/Socket;

.field public i:I

.field public j:I

.field public k:I

.field public l:Lct/r;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/util/ArrayList;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:[I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lct/at;->a:I

    iput v0, p0, Lct/at;->b:I

    const/16 v0, 0x4e20

    iput v0, p0, Lct/at;->c:I

    const/4 v0, 0x3

    iput v0, p0, Lct/at;->m:I

    iput-object v2, p0, Lct/at;->d:Ljava/util/ArrayList;

    iput v1, p0, Lct/at;->n:I

    iput-boolean v1, p0, Lct/at;->o:Z

    iput-boolean v1, p0, Lct/at;->p:Z

    iput-object v2, p0, Lct/at;->e:Ljava/util/ArrayList;

    iput v1, p0, Lct/at;->q:I

    iput-boolean v1, p0, Lct/at;->r:Z

    iput-boolean v1, p0, Lct/at;->f:Z

    iput-boolean v1, p0, Lct/at;->s:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lct/at;->t:Ljava/util/ArrayList;

    iput v1, p0, Lct/at;->u:I

    iput-boolean v1, p0, Lct/at;->v:Z

    iput-boolean v1, p0, Lct/at;->w:Z

    const-string v0, "dispatcher.3g.qq.com"

    iput-object v0, p0, Lct/at;->g:Ljava/lang/String;

    sget-object v0, Lct/c;->a:[I

    iput-object v0, p0, Lct/at;->x:[I

    iput-object v2, p0, Lct/at;->h:Ljava/net/Socket;

    iput v1, p0, Lct/at;->i:I

    iput v1, p0, Lct/at;->y:I

    iput v3, p0, Lct/at;->j:I

    iput v3, p0, Lct/at;->k:I

    return-void
.end method

.method private static a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v3, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    add-int v0, p1, v3

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/r;

    new-instance v5, Lct/r;

    iget-object v6, v0, Lct/r;->a:Ljava/lang/String;

    iget v0, v0, Lct/r;->b:I

    invoke-direct {v5, v6, v0}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private b()Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lct/at;->v:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lct/at;->w:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lct/at;->g:Ljava/lang/String;

    iget-object v5, p0, Lct/at;->x:[I

    iget v6, p0, Lct/at;->c:I

    invoke-static {v4, v5, v6}, Lct/ar;->a(Ljava/lang/String;[II)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v2, v2

    iput v2, p0, Lct/at;->j:I

    iput-boolean v0, p0, Lct/at;->w:Z

    :cond_0
    iget-object v2, p0, Lct/at;->t:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget v2, p0, Lct/at;->u:I

    iget-object v3, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lct/at;->t:Ljava/util/ArrayList;

    iget v3, p0, Lct/at;->u:I

    iget v4, p0, Lct/at;->b:I

    invoke-static {v2, v3, v4, v1}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p0, Lct/at;->u:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lct/at;->u:I

    iget v2, p0, Lct/at;->u:I

    iget-object v3, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_1
    iput-boolean v0, p0, Lct/at;->v:Z

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lct/at;->c:I

    invoke-static {v1, v4}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lct/at;->h:Ljava/net/Socket;

    iget v1, p0, Lct/at;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lct/at;->k:I

    :goto_0
    return v0

    :cond_3
    iput-boolean v0, p0, Lct/at;->v:Z

    iput v1, p0, Lct/at;->k:I

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lct/at;->r:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lct/at;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, p0, Lct/at;->q:I

    iget-object v2, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lct/at;->e:Ljava/util/ArrayList;

    iget v2, p0, Lct/at;->q:I

    iget v3, p0, Lct/at;->b:I

    invoke-static {v1, v2, v3, v0}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lct/at;->q:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lct/at;->q:I

    iget v2, p0, Lct/at;->q:I

    iget-object v3, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    iput-boolean v0, p0, Lct/at;->r:Z

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lct/at;->c:I

    invoke-static {v1, v4}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lct/at;->h:Ljava/net/Socket;

    iget v1, p0, Lct/at;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lct/at;->k:I

    :goto_0
    return v0

    :cond_2
    iput-boolean v0, p0, Lct/at;->r:Z

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lct/at;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_0
    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lct/at;->o:Z

    iget-object v0, p0, Lct/at;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lct/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v7

    :goto_1
    iput-boolean v0, p0, Lct/at;->p:Z

    iget-object v0, p0, Lct/at;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move v0, v7

    :goto_2
    iput-boolean v0, p0, Lct/at;->r:Z

    iget-boolean v0, p0, Lct/at;->p:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lct/at;->f:Z

    if-eqz v0, :cond_8

    move v0, v7

    :goto_3
    iput-boolean v0, p0, Lct/at;->s:Z

    const-string v0, "SocketConnectorImpl"

    const-string v1, "doConnect..."

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-boolean v0, p0, Lct/at;->o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lct/at;->r:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lct/at;->v:Z

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lct/at;->y:I

    iget v1, p0, Lct/at;->m:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lct/at;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/at;->y:I

    iget-boolean v0, p0, Lct/at;->o:Z

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lct/at;->d:Ljava/util/ArrayList;

    iget v3, p0, Lct/at;->n:I

    iget v4, p0, Lct/at;->a:I

    invoke-static {v2, v3, v4, v7}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget v3, p0, Lct/at;->n:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lct/at;->n:I

    iget v3, p0, Lct/at;->n:I

    iget-object v4, p0, Lct/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    :cond_2
    iput-boolean v7, p0, Lct/at;->o:Z

    :cond_3
    iget v3, p0, Lct/at;->c:I

    invoke-static {v2, v3}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lct/at;->h:Ljava/net/Socket;

    iput v6, p0, Lct/at;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lct/at;->k:I

    const-string v0, "SocketConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use IpList, dnsTime: 0 ,connectTime\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lct/at;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lct/r;

    iget-object v1, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lct/r;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lct/at;->l:Lct/r;

    iput v6, p0, Lct/at;->i:I

    :cond_4
    return-void

    :cond_5
    move v0, v6

    goto/16 :goto_0

    :cond_6
    move v0, v6

    goto/16 :goto_1

    :cond_7
    move v0, v6

    goto/16 :goto_2

    :cond_8
    move v0, v6

    goto/16 :goto_3

    :cond_9
    iget-boolean v0, p0, Lct/at;->s:Z

    if-nez v0, :cond_c

    invoke-static {}, Lct/aw;->c()I

    move-result v0

    if-ne v0, v7, :cond_b

    invoke-direct {p0}, Lct/at;->b()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lct/at;->c()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_a
    :goto_6
    const-string v0, "SocketConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use IpList DNS series , dnsTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lct/at;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",connectTime\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lct/at;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lct/at;->c()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lct/at;->b()Z

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lct/at;->r:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lct/at;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget v1, p0, Lct/at;->q:I

    iget-object v2, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    iget-object v0, p0, Lct/at;->e:Ljava/util/ArrayList;

    iget v1, p0, Lct/at;->q:I

    iget v2, p0, Lct/at;->b:I

    invoke-static {v0, v1, v2, v7}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    iget v1, p0, Lct/at;->q:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lct/at;->q:I

    iget v1, p0, Lct/at;->q:I

    iget-object v2, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_17

    :cond_d
    iput-boolean v7, p0, Lct/at;->r:Z

    move-object v4, v0

    :goto_7
    iget-boolean v0, p0, Lct/at;->w:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lct/at;->g:Ljava/lang/String;

    iget-object v1, p0, Lct/at;->x:[I

    iget v2, p0, Lct/at;->c:I

    iget v3, p0, Lct/at;->b:I

    iget-object v5, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lct/ar;->a(Ljava/lang/String;[IIILjava/util/ArrayList;Ljava/util/ArrayList;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    sget v0, Lct/ar;->a:I

    iput v0, p0, Lct/at;->j:I

    sget v0, Lct/ar;->b:I

    iput v0, p0, Lct/at;->k:I

    iput-boolean v7, p0, Lct/at;->w:Z

    iget v0, p0, Lct/at;->u:I

    iget v1, p0, Lct/at;->b:I

    iget-object v2, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lct/at;->u:I

    iget v0, p0, Lct/at;->u:I

    iget-object v1, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    iput-boolean v7, p0, Lct/at;->v:Z

    :cond_e
    :goto_8
    const-string v0, "SocketConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use IpList DNS parallel , dnsTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lct/at;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",connectTime\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lct/at;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    iput-boolean v7, p0, Lct/at;->r:Z

    move-object v4, v0

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lct/at;->v:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lct/at;->t:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    iget v1, p0, Lct/at;->u:I

    iget-object v2, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    iget-object v0, p0, Lct/at;->t:Ljava/util/ArrayList;

    iget v1, p0, Lct/at;->u:I

    iget v2, p0, Lct/at;->b:I

    invoke-static {v0, v1, v2, v6}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    iget v1, p0, Lct/at;->u:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lct/at;->u:I

    iget v1, p0, Lct/at;->u:I

    iget-object v2, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_12

    :cond_11
    iput-boolean v7, p0, Lct/at;->v:Z

    :cond_12
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v6, p0, Lct/at;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lct/at;->c:I

    invoke-static {v1, v0}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lct/at;->k:I

    goto/16 :goto_8

    :cond_13
    iput-boolean v7, p0, Lct/at;->v:Z

    goto :goto_9

    :cond_14
    iput-boolean v7, p0, Lct/at;->v:Z

    iput-boolean v7, p0, Lct/at;->r:Z

    goto/16 :goto_8

    :cond_15
    invoke-static {}, Lct/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x3

    iput v0, p0, Lct/at;->i:I

    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    goto/16 :goto_4

    :cond_16
    const/4 v0, -0x4

    iput v0, p0, Lct/at;->i:I

    goto :goto_a

    :cond_17
    move-object v4, v0

    goto/16 :goto_7

    :cond_18
    move-object v4, v0

    goto/16 :goto_7
.end method

.method public final a([I)V
    .locals 1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lct/at;->x:[I

    return-void
.end method
