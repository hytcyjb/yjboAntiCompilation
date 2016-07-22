.class public Lcom/ddtaxi/a/a/if;
.super Ljava/lang/Object;


# static fields
.field private static final c:I = 0x1000

.field private static synthetic d:[I


# instance fields
.field private final a:Z

.field private final b:Lcom/ddtaxi/a/a/ih;


# direct methods
.method private constructor <init>(ZLcom/ddtaxi/a/a/ih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/if;->a:Z

    iput-object p2, p0, Lcom/ddtaxi/a/a/if;->b:Lcom/ddtaxi/a/a/ih;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/ddtaxi/a/a/ih;Lcom/ddtaxi/a/a/if;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/if;-><init>(ZLcom/ddtaxi/a/a/ih;)V

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/ig;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ig;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ig;-><init>()V

    return-object v0
.end method

.method private static a(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Lcom/ddtaxi/a/a/ik;)V
    .locals 1

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->d()Ljava/lang/String;

    const-string v0, "."

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/String;)V

    :goto_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/if;->c(Lcom/ddtaxi/a/a/ik;)V

    :goto_1
    const-string v0, ";"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->d()Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/if;->b(Lcom/ddtaxi/a/a/ik;)V

    goto :goto_1
.end method

.method private a(Lcom/ddtaxi/a/a/ik;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gt;)V
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p3}, Lcom/ddtaxi/a/a/gt;->a()Lcom/ddtaxi/a/a/dl;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {p1, v2}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "."

    invoke-virtual {p1, v3}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, p2, v3}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/ei;Ljava/lang/String;)Lcom/ddtaxi/a/a/ek;

    move-result-object v5

    if-nez v5, :cond_3

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/if;->a:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extension \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" not found in the ExtensionRegistry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->e(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ddtaxi/a/a/hz;->b()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Extension \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found in the ExtensionRegistry."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/String;)V

    move-object v4, v0

    :goto_2
    if-nez v4, :cond_b

    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/if;->c(Lcom/ddtaxi/a/a/ik;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v0, v5, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Extension \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" does not extend message type \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->e(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v0, v5, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/dl;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dt;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ddtaxi/a/a/dl;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dt;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v3

    sget-object v5, Lcom/ddtaxi/a/a/dv;->j:Lcom/ddtaxi/a/a/dv;

    if-eq v3, v5, :cond_6

    move-object v4, v0

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v3

    sget-object v5, Lcom/ddtaxi/a/a/dv;->j:Lcom/ddtaxi/a/a/dv;

    if-ne v3, v5, :cond_7

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dl;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object v4, v0

    :cond_7
    if-nez v4, :cond_9

    iget-boolean v3, p0, Lcom/ddtaxi/a/a/if;->a:Z

    if-nez v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Message type \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no field named \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->e(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {}, Lcom/ddtaxi/a/a/hz;->b()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message type \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" has no field named \""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_9
    move-object v5, v0

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/if;->b(Lcom/ddtaxi/a/a/ik;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_c

    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    :goto_4
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/if;->a(Lcom/ddtaxi/a/a/ik;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gt;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/ek;)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/if;->a(Lcom/ddtaxi/a/a/ik;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gt;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/ek;)V

    goto/16 :goto_3
.end method

.method private a(Lcom/ddtaxi/a/a/ik;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gt;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/ek;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v1, v2, :cond_5

    const-string v1, "<"

    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">"

    :goto_0
    if-nez p5, :cond_2

    :goto_1
    invoke-interface {p3, p4, v0}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gt;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gt;->c()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_3
    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3, p4, v0}, Lcom/ddtaxi/a/a/gt;->b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    :goto_4
    return-void

    :cond_1
    const-string v1, "{"

    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/String;)V

    const-string v1, "}"

    goto :goto_0

    :cond_2
    iget-object v0, p5, Lcom/ddtaxi/a/a/ek;->b:Lcom/ddtaxi/a/a/gk;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lcom/ddtaxi/a/a/if;->a(Lcom/ddtaxi/a/a/ik;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gt;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/ddtaxi/a/a/if;->b()[I

    move-result-object v1

    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->l()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :pswitch_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :pswitch_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->n()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_3

    :pswitch_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->q()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->s()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->z()Lcom/ddtaxi/a/a/dr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/dr;->a(I)Lcom/ddtaxi/a/a/ds;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Enum type \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no value with number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->e(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/dr;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/ds;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Enum type \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no value named \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->e(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :pswitch_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v1, p0, Lcom/ddtaxi/a/a/if;->b:Lcom/ddtaxi/a/a/ih;

    sget-object v2, Lcom/ddtaxi/a/a/ih;->b:Lcom/ddtaxi/a/a/ih;

    if-ne v1, v2, :cond_8

    invoke-interface {p3, p4}, Lcom/ddtaxi/a/a/gt;->b(Lcom/ddtaxi/a/a/dt;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Non-repeated field \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" cannot be overwritten."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->e(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v1, p0, Lcom/ddtaxi/a/a/if;->b:Lcom/ddtaxi/a/a/ih;

    sget-object v2, Lcom/ddtaxi/a/a/ih;->b:Lcom/ddtaxi/a/a/ih;

    if-ne v1, v2, :cond_9

    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/ea;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/ddtaxi/a/a/dt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is specified along with field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3, v0}, Lcom/ddtaxi/a/a/gt;->c(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/dt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", another member of oneof \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ea;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->e(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_9
    invoke-interface {p3, p4, v0}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/ddtaxi/a/a/ik;)V
    .locals 2

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ">"

    :goto_0
    const-string v1, ">"

    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/ik;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "}"

    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/ik;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/String;)V

    const-string v0, "}"

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/if;->a(Lcom/ddtaxi/a/a/ik;)V

    goto :goto_0
.end method

.method static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/if;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/dv;->c()[Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/dv;->h:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/dv;->l:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/dv;->a:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/dv;->n:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/dv;->g:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/dv;->f:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/dv;->b:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/dv;->j:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/dv;->e:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_9
    :try_start_9
    sget-object v1, Lcom/ddtaxi/a/a/dv;->c:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_a
    :try_start_a
    sget-object v1, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_b
    :try_start_b
    sget-object v1, Lcom/ddtaxi/a/a/dv;->o:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_c
    :try_start_c
    sget-object v1, Lcom/ddtaxi/a/a/dv;->p:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_d
    :try_start_d
    sget-object v1, Lcom/ddtaxi/a/a/dv;->q:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_e
    :try_start_e
    sget-object v1, Lcom/ddtaxi/a/a/dv;->r:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_f
    :try_start_f
    sget-object v1, Lcom/ddtaxi/a/a/dv;->i:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_10
    :try_start_10
    sget-object v1, Lcom/ddtaxi/a/a/dv;->m:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_11
    :try_start_11
    sget-object v1, Lcom/ddtaxi/a/a/dv;->d:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_12
    sput-object v0, Lcom/ddtaxi/a/a/if;->d:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_12

    :catch_1
    move-exception v1

    goto :goto_11

    :catch_2
    move-exception v1

    goto :goto_10

    :catch_3
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    goto/16 :goto_5

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_2

    :catch_11
    move-exception v1

    goto/16 :goto_1
.end method

.method private c(Lcom/ddtaxi/a/a/ik;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ik;->o()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid field value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ddtaxi/a/a/ik;->a(Lcom/ddtaxi/a/a/ik;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/ik;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/ik;-><init>(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/ik;)V

    new-instance v1, Lcom/ddtaxi/a/a/gr;

    invoke-direct {v1, p3}, Lcom/ddtaxi/a/a/gr;-><init>(Lcom/ddtaxi/a/a/gl;)V

    :goto_0
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ik;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p2, v1}, Lcom/ddtaxi/a/a/if;->a(Lcom/ddtaxi/a/a/ik;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gt;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/gl;)V
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ei;->b()Lcom/ddtaxi/a/a/ei;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ddtaxi/a/a/if;->a(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V

    return-void
.end method

.method public a(Ljava/lang/Readable;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V
    .locals 1

    invoke-static {p1}, Lcom/ddtaxi/a/a/if;->a(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ddtaxi/a/a/if;->a(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V

    return-void
.end method

.method public a(Ljava/lang/Readable;Lcom/ddtaxi/a/a/gl;)V
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ei;->b()Lcom/ddtaxi/a/a/ei;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ddtaxi/a/a/if;->a(Ljava/lang/Readable;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V

    return-void
.end method
