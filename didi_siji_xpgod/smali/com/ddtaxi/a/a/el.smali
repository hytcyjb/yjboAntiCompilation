.class public Lcom/ddtaxi/a/a/el;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z

.field private static final c:Lcom/ddtaxi/a/a/el;


# instance fields
.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ddtaxi/a/a/el;->a:Z

    new-instance v0, Lcom/ddtaxi/a/a/el;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/el;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/el;->c:Lcom/ddtaxi/a/a/el;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/el;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/ddtaxi/a/a/el;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ddtaxi/a/a/el;->c:Lcom/ddtaxi/a/a/el;

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/el;->b:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ddtaxi/a/a/el;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/el;->b:Ljava/util/Map;

    goto :goto_0
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/el;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/ddtaxi/a/a/el;->a:Z

    return-void
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/el;->a:Z

    return v0
.end method

.method public static i()Lcom/ddtaxi/a/a/el;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/el;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/el;-><init>()V

    return-object v0
.end method

.method public static j()Lcom/ddtaxi/a/a/el;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/el;->c:Lcom/ddtaxi/a/a/el;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/gm;I)Lcom/ddtaxi/a/a/fu;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/el;->b:Ljava/util/Map;

    new-instance v1, Lcom/ddtaxi/a/a/em;

    invoke-direct {v1, p1, p2}, Lcom/ddtaxi/a/a/em;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/fu;

    return-object v0
.end method

.method public final a(Lcom/ddtaxi/a/a/fu;)V
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/el;->b:Ljava/util/Map;

    new-instance v1, Lcom/ddtaxi/a/a/em;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/fu;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/fu;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/ddtaxi/a/a/em;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()Lcom/ddtaxi/a/a/el;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/el;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/el;-><init>(Lcom/ddtaxi/a/a/el;)V

    return-object v0
.end method
