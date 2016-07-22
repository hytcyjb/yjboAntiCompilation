.class public Lcom/ddtaxi/a/a/fl;
.super Lcom/ddtaxi/a/a/ef;


# static fields
.field private static synthetic g:[I


# instance fields
.field private a:Lcom/ddtaxi/a/a/fb;

.field private final b:Ljava/lang/Class;

.field private final c:Lcom/ddtaxi/a/a/gk;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Lcom/ddtaxi/a/a/eg;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/fb;Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/eg;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ef;-><init>()V

    const-class v0, Lcom/ddtaxi/a/a/gk;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad messageDefaultInstance for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/fl;->a:Lcom/ddtaxi/a/a/fb;

    iput-object p2, p0, Lcom/ddtaxi/a/a/fl;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/ddtaxi/a/a/fl;->c:Lcom/ddtaxi/a/a/gk;

    const-class v0, Lcom/ddtaxi/a/a/gw;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "valueOf"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/ddtaxi/a/a/ds;

    aput-object v2, v1, v3

    invoke-static {p2, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fl;->d:Ljava/lang/reflect/Method;

    const-string v0, "getValueDescriptor"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-static {p2, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fl;->e:Ljava/lang/reflect/Method;

    :goto_0
    iput-object p4, p0, Lcom/ddtaxi/a/a/fl;->f:Lcom/ddtaxi/a/a/eg;

    return-void

    :cond_1
    iput-object v1, p0, Lcom/ddtaxi/a/a/fl;->d:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/ddtaxi/a/a/fl;->e:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method static synthetic j()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/fl;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/du;->a()[Lcom/ddtaxi/a/a/du;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/du;->e:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/du;->g:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/du;->d:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/du;->c:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/du;->a:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/du;->b:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/du;->f:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/ddtaxi/a/a/fl;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v0

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ddtaxi/a/a/fl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/fl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method public a(Lcom/ddtaxi/a/a/dt;)V
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->a:Lcom/ddtaxi/a/a/fb;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/ddtaxi/a/a/fm;

    invoke-direct {v0, p0, p1}, Lcom/ddtaxi/a/a/fm;-><init>(Lcom/ddtaxi/a/a/fl;Lcom/ddtaxi/a/a/dt;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/fl;->a:Lcom/ddtaxi/a/a/fb;

    return-void
.end method

.method public b()Lcom/ddtaxi/a/a/iw;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/fl;->j()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->c:Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->K()Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    check-cast p1, Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gl;->Z()Lcom/ddtaxi/a/a/gk;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/ddtaxi/a/a/ds;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object p1, v0

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ddtaxi/a/a/fl;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/fl;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/ddtaxi/a/a/dt;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->a:Lcom/ddtaxi/a/a/fb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDescriptor() called before internalInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->a:Lcom/ddtaxi/a/a/fb;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/fb;->b()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/fl;->j()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->c:Lcom/ddtaxi/a/a/gk;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->s()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/fl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic f()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fl;->i()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lcom/ddtaxi/a/a/eg;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->f:Lcom/ddtaxi/a/a/eg;

    return-object v0
.end method

.method public i()Lcom/ddtaxi/a/a/gk;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fl;->c:Lcom/ddtaxi/a/a/gk;

    return-object v0
.end method
