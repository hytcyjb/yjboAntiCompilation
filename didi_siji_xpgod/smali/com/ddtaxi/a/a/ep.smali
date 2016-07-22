.class public abstract Lcom/ddtaxi/a/a/ep;
.super Lcom/ddtaxi/a/a/a;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L

.field protected static p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/gk;ILjava/lang/Class;Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/fl;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/fl;

    new-instance v1, Lcom/ddtaxi/a/a/eq;

    invoke-direct {v1, p0, p1}, Lcom/ddtaxi/a/a/eq;-><init>(Lcom/ddtaxi/a/a/gk;I)V

    sget-object v2, Lcom/ddtaxi/a/a/eg;->a:Lcom/ddtaxi/a/a/eg;

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/ddtaxi/a/a/fl;-><init>(Lcom/ddtaxi/a/a/fb;Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/eg;)V

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/gk;Ljava/lang/String;Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/fl;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/fl;

    new-instance v1, Lcom/ddtaxi/a/a/er;

    invoke-direct {v1, p0, p1}, Lcom/ddtaxi/a/a/er;-><init>(Lcom/ddtaxi/a/a/gk;Ljava/lang/String;)V

    sget-object v2, Lcom/ddtaxi/a/a/eg;->b:Lcom/ddtaxi/a/a/eg;

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/ddtaxi/a/a/fl;-><init>(Lcom/ddtaxi/a/a/fb;Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/eg;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/fl;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/fl;

    const/4 v1, 0x0

    sget-object v2, Lcom/ddtaxi/a/a/eg;->a:Lcom/ddtaxi/a/a/eg;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/ddtaxi/a/a/fl;-><init>(Lcom/ddtaxi/a/a/fb;Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/eg;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;Ljava/lang/String;Ljava/lang/String;)Lcom/ddtaxi/a/a/fl;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/fl;

    new-instance v1, Lcom/ddtaxi/a/a/es;

    invoke-direct {v1, p0, p2, p3}, Lcom/ddtaxi/a/a/es;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ddtaxi/a/a/eg;->b:Lcom/ddtaxi/a/a/eg;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/ddtaxi/a/a/fl;-><init>(Lcom/ddtaxi/a/a/fb;Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/eg;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/ddtaxi/a/a/ep;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/ddtaxi/a/a/ep;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private a()Ljava/util/Map;
    .locals 5

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;)Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ep;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ep;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ep;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ep;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static ab()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    return-void
.end method

.method private static varargs b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method private static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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


# virtual methods
.method protected B()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/fv;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/fv;-><init>(Lcom/ddtaxi/a/a/gm;)V

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/ddtaxi/a/a/fd;->a(Lcom/ddtaxi/a/a/ep;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ea;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/fe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/fe;->a(Lcom/ddtaxi/a/a/ep;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z
    .locals 1

    invoke-virtual {p2, p4, p1}, Lcom/ddtaxi/a/a/in;->a(ILcom/ddtaxi/a/a/o;)Z

    move-result v0

    return v0
.end method

.method public a_(Lcom/ddtaxi/a/a/dt;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/fd;->b(Lcom/ddtaxi/a/a/ep;)Z

    move-result v0

    return v0
.end method

.method protected ac()V
    .locals 0

    return-void
.end method

.method public b(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/dt;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/fe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/fe;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
.end method

.method public b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/fd;->a(Lcom/ddtaxi/a/a/ep;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/ddtaxi/a/a/dt;)I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/fd;->c(Lcom/ddtaxi/a/a/ep;)I

    move-result v0

    return v0
.end method

.method public c()Lcom/ddtaxi/a/a/im;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract e()Lcom/ddtaxi/a/a/fc;
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;)Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ep;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ep;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v3

    sget-object v4, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ep;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->z()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ep;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ep;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->z()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method
