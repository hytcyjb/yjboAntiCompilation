.class Lcom/ddtaxi/a/a/ht;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Iterator;

.field private static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/hu;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/hu;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/ht;->a:Ljava/util/Iterator;

    new-instance v0, Lcom/ddtaxi/a/a/hv;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/hv;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/ht;->b:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/Iterable;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ht;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ht;->a:Ljava/util/Iterator;

    return-object v0
.end method
