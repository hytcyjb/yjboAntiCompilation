.class public Lcom/ddtaxi/a/a/ei;
.super Lcom/ddtaxi/a/a/el;


# static fields
.field private static final e:Lcom/ddtaxi/a/a/ei;

.field private static synthetic f:[I


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/ei;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/ei;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/ei;->e:Lcom/ddtaxi/a/a/ei;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/el;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ei;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/el;-><init>(Lcom/ddtaxi/a/a/el;)V

    iget-object v0, p1, Lcom/ddtaxi/a/a/ei;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->a:Ljava/util/Map;

    iget-object v0, p1, Lcom/ddtaxi/a/a/ei;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->b:Ljava/util/Map;

    iget-object v0, p1, Lcom/ddtaxi/a/a/ei;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->c:Ljava/util/Map;

    iget-object v0, p1, Lcom/ddtaxi/a/a/ei;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->d:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/el;->j()Lcom/ddtaxi/a/a/el;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/el;-><init>(Lcom/ddtaxi/a/a/el;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->a:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->b:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->c:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ei;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/ei;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ei;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ei;-><init>()V

    return-object v0
.end method

.method private a(Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/eg;)V
    .locals 5

    iget-object v0, p1, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/ei;->g()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/eg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ei;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ei;->c:Ljava/util/Map;

    :goto_1
    iget-object v2, p1, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/ddtaxi/a/a/ej;

    iget-object v3, p1, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v3

    iget-object v4, p1, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/ddtaxi/a/a/ej;-><init>(Lcom/ddtaxi/a/a/dl;I)V

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dl;->g()Lcom/ddtaxi/a/a/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/bw;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v2

    sget-object v3, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->x()Lcom/ddtaxi/a/a/dl;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/ei;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ei;->d:Ljava/util/Map;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b()Lcom/ddtaxi/a/a/ei;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ei;->e:Lcom/ddtaxi/a/a/ei;

    return-object v0
.end method

.method static b(Lcom/ddtaxi/a/a/ef;)Lcom/ddtaxi/a/a/ek;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ef;->f()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registered message-type extension had null default instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/ddtaxi/a/a/ek;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ef;->f()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-direct {v1, v2, v0, v3}, Lcom/ddtaxi/a/a/ek;-><init>(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/ek;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/ddtaxi/a/a/ek;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/ddtaxi/a/a/ek;-><init>(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/ek;)V

    goto :goto_0
.end method

.method public static synthetic e()Lcom/ddtaxi/a/a/el;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ei;->a()Lcom/ddtaxi/a/a/ei;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Lcom/ddtaxi/a/a/el;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ei;->b()Lcom/ddtaxi/a/a/ei;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/ei;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/eg;->a()[Lcom/ddtaxi/a/a/eg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/eg;->a:Lcom/ddtaxi/a/a/eg;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/eg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/eg;->b:Lcom/ddtaxi/a/a/eg;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/eg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/eg;->c:Lcom/ddtaxi/a/a/eg;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/eg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/ddtaxi/a/a/ei;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/dl;I)Lcom/ddtaxi/a/a/ek;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ei;->b(Lcom/ddtaxi/a/a/dl;I)Lcom/ddtaxi/a/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/ek;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ei;->b(Ljava/lang/String;)Lcom/ddtaxi/a/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/ddtaxi/a/a/ek;

    invoke-direct {v0, p1, v2, v2}, Lcom/ddtaxi/a/a/ek;-><init>(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/ek;)V

    sget-object v1, Lcom/ddtaxi/a/a/eg;->a:Lcom/ddtaxi/a/a/eg;

    invoke-direct {p0, v0, v1}, Lcom/ddtaxi/a/a/ei;->a(Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/eg;)V

    sget-object v1, Lcom/ddtaxi/a/a/eg;->b:Lcom/ddtaxi/a/a/eg;

    invoke-direct {p0, v0, v1}, Lcom/ddtaxi/a/a/ei;->a(Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/eg;)V

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() provided a default instance for a non-message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/ddtaxi/a/a/ek;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/ddtaxi/a/a/ek;-><init>(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/ek;)V

    sget-object v1, Lcom/ddtaxi/a/a/eg;->a:Lcom/ddtaxi/a/a/eg;

    invoke-direct {p0, v0, v1}, Lcom/ddtaxi/a/a/ei;->a(Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/eg;)V

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/ef;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->g()Lcom/ddtaxi/a/a/eg;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/eg;->a:Lcom/ddtaxi/a/a/eg;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->g()Lcom/ddtaxi/a/a/eg;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/eg;->b:Lcom/ddtaxi/a/a/eg;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/ddtaxi/a/a/ei;->b(Lcom/ddtaxi/a/a/ef;)Lcom/ddtaxi/a/a/ek;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->g()Lcom/ddtaxi/a/a/eg;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ddtaxi/a/a/ei;->a(Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/eg;)V

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/dl;I)Lcom/ddtaxi/a/a/ek;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ei;->c:Ljava/util/Map;

    new-instance v1, Lcom/ddtaxi/a/a/ej;

    invoke-direct {v1, p1, p2}, Lcom/ddtaxi/a/a/ej;-><init>(Lcom/ddtaxi/a/a/dl;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ek;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/ddtaxi/a/a/ek;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ei;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ek;

    return-object v0
.end method

.method public c()Lcom/ddtaxi/a/a/ei;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ei;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/ei;-><init>(Lcom/ddtaxi/a/a/ei;)V

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/dl;I)Lcom/ddtaxi/a/a/ek;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ei;->d:Ljava/util/Map;

    new-instance v1, Lcom/ddtaxi/a/a/ej;

    invoke-direct {v1, p1, p2}, Lcom/ddtaxi/a/a/ej;-><init>(Lcom/ddtaxi/a/a/dl;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ek;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/ddtaxi/a/a/ek;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ei;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ek;

    return-object v0
.end method

.method public synthetic d()Lcom/ddtaxi/a/a/el;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ei;->c()Lcom/ddtaxi/a/a/ei;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ei;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ej;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ej;->a(Lcom/ddtaxi/a/a/ej;)Lcom/ddtaxi/a/a/dl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ddtaxi/a/a/ei;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ek;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ei;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ej;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ej;->a(Lcom/ddtaxi/a/a/ej;)Lcom/ddtaxi/a/a/dl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ddtaxi/a/a/ei;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ek;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
