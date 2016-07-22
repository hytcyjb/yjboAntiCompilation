.class public abstract Lcom/ddtaxi/a/a/fn;
.super Lcom/ddtaxi/a/a/c;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L

.field private static synthetic b:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/c;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/ddtaxi/a/a/fo;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/c;-><init>()V

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/fy;ILcom/ddtaxi/a/a/iw;ZLjava/lang/Class;)Lcom/ddtaxi/a/a/fu;
    .locals 8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/ddtaxi/a/a/fu;

    new-instance v0, Lcom/ddtaxi/a/a/ft;

    const/4 v4, 0x1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/ft;-><init>(Lcom/ddtaxi/a/a/fy;ILcom/ddtaxi/a/a/iw;ZZ)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v0

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/ddtaxi/a/a/fu;-><init>(Lcom/ddtaxi/a/a/gm;Ljava/lang/Object;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/ft;Ljava/lang/Class;)V

    return-object v7
.end method

.method public static a(Lcom/ddtaxi/a/a/gm;Ljava/lang/Object;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/fy;ILcom/ddtaxi/a/a/iw;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fu;
    .locals 8

    const/4 v4, 0x0

    new-instance v7, Lcom/ddtaxi/a/a/fu;

    new-instance v0, Lcom/ddtaxi/a/a/ft;

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/ft;-><init>(Lcom/ddtaxi/a/a/fy;ILcom/ddtaxi/a/a/iw;ZZ)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/ddtaxi/a/a/fu;-><init>(Lcom/ddtaxi/a/a/gm;Ljava/lang/Object;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/ft;Ljava/lang/Class;)V

    return-object v7
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generated message class \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/en;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/el;I)Z
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/ddtaxi/a/a/fn;->b(Lcom/ddtaxi/a/a/en;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/ddtaxi/a/a/en;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/el;I)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p5}, Lcom/ddtaxi/a/a/iv;->a(I)I

    move-result v0

    invoke-static {p5}, Lcom/ddtaxi/a/a/iv;->b(I)I

    move-result v3

    invoke-virtual {p4, p1, v3}, Lcom/ddtaxi/a/a/el;->a(Lcom/ddtaxi/a/a/gm;I)Lcom/ddtaxi/a/a/fu;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p2, p5, p3}, Lcom/ddtaxi/a/a/o;->a(ILcom/ddtaxi/a/a/r;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/ft;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Z)I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v2

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    iget-boolean v3, v3, Lcom/ddtaxi/a/a/ft;->d:Z

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    iget-object v3, v3, Lcom/ddtaxi/a/a/ft;->c:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/iw;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/ft;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Z)I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v1

    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v2

    move v3, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/o;->f(I)I

    move-result v0

    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/ft;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v3

    sget-object v5, Lcom/ddtaxi/a/a/iw;->n:Lcom/ddtaxi/a/a/iw;

    if-ne v3, v5, :cond_7

    :goto_2
    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v2

    if-gtz v2, :cond_4

    :goto_3
    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/o;->g(I)V

    :goto_4
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->r()I

    move-result v2

    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/ft;->A()Lcom/ddtaxi/a/a/fy;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/ddtaxi/a/a/fy;->b(I)Lcom/ddtaxi/a/a/fx;

    move-result-object v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v4, v2}, Lcom/ddtaxi/a/a/fu;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/ft;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v3

    invoke-static {p2, v3, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/iw;Z)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {p0, v5, v3}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v3

    if-gtz v3, :cond_6

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/ddtaxi/a/a/fn;->c()[I

    move-result-object v0

    iget-object v3, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/ft;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    iget-object v0, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/iw;Z)Ljava/lang/Object;

    move-result-object v0

    :cond_9
    :goto_5
    iget-object v2, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ft;->o()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v4, v0}, Lcom/ddtaxi/a/a/fu;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x0

    iget-object v0, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->o()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gm;->F()Lcom/ddtaxi/a/a/gn;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_a

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/fu;->c()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gm;->J()Lcom/ddtaxi/a/a/gn;

    move-result-object v0

    :cond_a
    iget-object v2, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ft;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v2

    sget-object v3, Lcom/ddtaxi/a/a/iw;->j:Lcom/ddtaxi/a/a/iw;

    if-ne v2, v3, :cond_b

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/fu;->b()I

    move-result v2

    invoke-virtual {p2, v2, v0, p4}, Lcom/ddtaxi/a/a/o;->a(ILcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/el;)V

    :goto_7
    invoke-interface {v0}, Lcom/ddtaxi/a/a/gn;->Y()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    goto :goto_5

    :cond_b
    invoke-virtual {p2, v0, p4}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/el;)V

    goto :goto_7

    :pswitch_1
    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->r()I

    move-result v2

    iget-object v0, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->A()Lcom/ddtaxi/a/a/fy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ddtaxi/a/a/fy;->b(I)Lcom/ddtaxi/a/a/fx;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p3, p5}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p3, v2}, Lcom/ddtaxi/a/a/r;->d(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_c
    iget-object v2, v4, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v4, v0}, Lcom/ddtaxi/a/a/fu;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_d
    move-object v0, v2

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/fn;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/jb;->b()[Lcom/ddtaxi/a/a/jb;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/jb;->e:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/jb;->g:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/jb;->d:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/jb;->h:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/jb;->c:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/jb;->a:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/jb;->b:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/jb;->i:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/jb;->f:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/ddtaxi/a/a/fn;->b:[I

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
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/el;I)Z
    .locals 1

    invoke-virtual {p1, p4, p2}, Lcom/ddtaxi/a/a/o;->a(ILcom/ddtaxi/a/a/r;)Z

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/fv;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/fv;-><init>(Lcom/ddtaxi/a/a/gm;)V

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
