.class public final Lct/q;
.super Ljava/lang/Object;

# interfaces
.implements Lct/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/q$a;
    }
.end annotation


# static fields
.field private static a:Lct/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lct/q;->a:Lct/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lct/q;
    .locals 2

    const-class v1, Lct/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lct/q;->a:Lct/q;

    if-nez v0, :cond_0

    new-instance v0, Lct/q;

    invoke-direct {v0}, Lct/q;-><init>()V

    sput-object v0, Lct/q;->a:Lct/q;

    :cond_0
    sget-object v0, Lct/q;->a:Lct/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lct/aj;)V
    .locals 5

    invoke-static {p0}, Lct/i;->a(Lct/aj;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "B64"

    iget-object v2, p0, Lct/aj;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lct/aj;->F:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "B73"

    iget-object v2, p0, Lct/aj;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "B63"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lct/aj;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B65"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lct/aj;->t:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B66"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lct/aj;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B75"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lct/aj;->u:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B67"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lct/aj;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B70"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lct/aj;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B72"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lct/aj;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B74"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lct/aj;->C:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B68"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lct/aj;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AccessSchedulerStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppAccessFinished\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lct/aj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "B_ACSDK_SDKExt_Result"

    invoke-static {}, Lct/am;->k()Lct/am;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lct/am;->a(Landroid/content/Context;)V

    invoke-static {}, Lct/ap;->a()V

    :cond_1
    invoke-static {v1, v0}, Lct/ap;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final a(Lct/f;)V
    .locals 5

    const/4 v1, 0x1

    const-string v0, "AccessSchedulerStatistics"

    const-string v2, "AccessSchedulerStatistics...onAccessSchedulerFinished, do sdk report..."

    invoke-static {v0, v2}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lct/aj;

    invoke-direct {v2}, Lct/aj;-><init>()V

    iget-object v0, p1, Lct/f;->b:Ljava/lang/String;

    iput-object v0, v2, Lct/aj;->a:Ljava/lang/String;

    iget-object v0, p1, Lct/f;->c:Ljava/lang/String;

    iput-object v0, v2, Lct/aj;->b:Ljava/lang/String;

    iget v0, p1, Lct/f;->d:I

    iput v0, v2, Lct/aj;->c:I

    iget-object v0, p1, Lct/f;->a:Ljava/lang/String;

    iput-object v0, v2, Lct/aj;->d:Ljava/lang/String;

    iget-object v0, p1, Lct/f;->e:Ljava/lang/String;

    iput-object v0, v2, Lct/aj;->e:Ljava/lang/String;

    iget v0, p1, Lct/f;->i:I

    iput v0, v2, Lct/aj;->h:I

    iget v0, v2, Lct/aj;->h:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lct/aj;->g:Ljava/lang/String;

    :goto_0
    iget v0, p1, Lct/f;->j:I

    iput v0, v2, Lct/aj;->i:I

    iget-object v0, p1, Lct/f;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lct/aj;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lct/aj;->j:Ljava/lang/String;

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lct/f;->n:Lct/r;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lct/aj;->k:Ljava/lang/String;

    iget-boolean v0, p1, Lct/f;->o:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput v0, v2, Lct/aj;->l:I

    iget v0, p1, Lct/f;->k:I

    iput v0, v2, Lct/aj;->m:I

    iget-object v0, p1, Lct/f;->l:Ljava/lang/String;

    iput-object v0, v2, Lct/aj;->n:Ljava/lang/String;

    iget-object v0, p1, Lct/f;->m:Ljava/lang/String;

    iput-object v0, v2, Lct/aj;->o:Ljava/lang/String;

    iget v0, p1, Lct/f;->p:I

    iput v0, v2, Lct/aj;->p:I

    iget v0, p1, Lct/f;->r:I

    iput v0, v2, Lct/aj;->r:I

    iget v0, p1, Lct/f;->q:I

    iput v0, v2, Lct/aj;->q:I

    iget v0, p1, Lct/f;->s:I

    iput v0, v2, Lct/aj;->s:I

    iget v0, p1, Lct/f;->t:I

    iput v0, v2, Lct/aj;->v:I

    iget-object v0, p1, Lct/f;->f:Ljava/lang/String;

    iput-object v0, v2, Lct/aj;->y:Ljava/lang/String;

    const-string v0, "AccessSchedulerStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AccessSchedulerFinished\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lct/aj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lct/q$a;

    invoke-direct {v0, v2}, Lct/q$a;-><init>(Lct/aj;)V

    invoke-virtual {v0}, Lct/q$a;->start()V

    return-void

    :cond_2
    const-string v0, ""

    iput-object v0, v2, Lct/aj;->j:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method
