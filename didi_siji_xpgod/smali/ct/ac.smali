.class public final Lct/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lct/aa;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private synthetic e:Lct/w;


# direct methods
.method public constructor <init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lct/ac;->e:Lct/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lct/ac;->a:Lct/aa;

    iput-boolean p3, p0, Lct/ac;->b:Z

    iput-object p4, p0, Lct/ac;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lct/ac;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lct/ac;->e:Lct/w;

    iget-object v3, p0, Lct/ac;->a:Lct/aa;

    iget-boolean v4, p0, Lct/ac;->b:Z

    iget-object v5, p0, Lct/ac;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lct/ac;->c:Z

    new-instance v7, Lct/aj;

    invoke-direct {v7}, Lct/aj;-><init>()V

    invoke-static {}, Lct/o;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lct/aj;->a:Ljava/lang/String;

    invoke-static {}, Lct/o;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lct/aj;->b:Ljava/lang/String;

    invoke-static {}, Lct/o;->d()I

    move-result v0

    iput v0, v7, Lct/aj;->c:I

    invoke-static {}, Lct/o;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lct/aj;->d:Ljava/lang/String;

    invoke-static {}, Lct/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lct/aj;->e:Ljava/lang/String;

    invoke-static {}, Lct/aw;->c()I

    move-result v0

    iput v0, v7, Lct/aj;->h:I

    iget v0, v7, Lct/aj;->h:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lct/aj;->g:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lct/aw;->d()I

    move-result v0

    iput v0, v7, Lct/aj;->i:I

    invoke-static {}, Lct/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, v7, Lct/aj;->l:I

    if-eqz v3, :cond_0

    iget-object v0, v3, Lct/aa;->b:Ljava/lang/String;

    iput-object v0, v7, Lct/aj;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lct/aa;->a:Lct/r;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lct/aj;->k:Ljava/lang/String;

    iget v0, v3, Lct/aa;->h:I

    iput v0, v7, Lct/aj;->m:I

    iget-object v0, v3, Lct/aa;->o:Ljava/lang/String;

    iput-object v0, v7, Lct/aj;->n:Ljava/lang/String;

    iget-object v0, v3, Lct/aa;->n:Ljava/lang/String;

    iput-object v0, v7, Lct/aj;->o:Ljava/lang/String;

    iput v2, v7, Lct/aj;->p:I

    iget v0, v3, Lct/aa;->f:I

    iput v0, v7, Lct/aj;->q:I

    iput v2, v7, Lct/aj;->r:I

    iget v0, v3, Lct/aa;->g:I

    iput v0, v7, Lct/aj;->s:I

    iget v0, v3, Lct/aa;->i:I

    iput v0, v7, Lct/aj;->v:I

    iget-wide v8, v3, Lct/aa;->k:J

    iput-wide v8, v7, Lct/aj;->t:J

    iget-object v0, v3, Lct/aa;->m:Ljava/lang/String;

    iput-object v0, v7, Lct/aj;->y:Ljava/lang/String;

    iget-object v0, v3, Lct/aa;->c:Ljava/lang/String;

    iput-object v0, v7, Lct/aj;->z:Ljava/lang/String;

    iget-wide v8, v3, Lct/aa;->l:J

    iput-wide v8, v7, Lct/aj;->u:J

    iget-object v0, v3, Lct/aa;->e:Ljava/lang/String;

    iput-object v0, v7, Lct/aj;->F:Ljava/lang/String;

    iget v0, v3, Lct/aa;->j:I

    iput v0, v7, Lct/aj;->w:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v3, Lct/aa;->q:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lct/aj;->D:Ljava/lang/String;

    iget v0, v3, Lct/aa;->p:I

    iput v0, v7, Lct/aj;->x:I

    if-eqz v4, :cond_4

    move v0, v2

    :goto_2
    iput v0, v7, Lct/aj;->A:I

    if-eqz v6, :cond_5

    move v0, v2

    :goto_3
    iput v0, v7, Lct/aj;->B:I

    sget-boolean v0, Lct/h;->a:Z

    if-eqz v0, :cond_6

    :goto_4
    iput v1, v7, Lct/aj;->C:I

    iput-object v5, v7, Lct/aj;->E:Ljava/lang/String;

    invoke-static {}, Lct/q;->a()Lct/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lct/q;->a()Lct/q;

    invoke-static {v7}, Lct/q;->a(Lct/aj;)V

    :cond_1
    const-string v0, "HttpAccessClientImpl"

    const-string v1, "finish report"

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lct/aj;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4
.end method
