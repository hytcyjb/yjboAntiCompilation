.class public final enum Lcom/ddtaxi/a/a/du;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/ddtaxi/a/a/du;

.field public static final enum b:Lcom/ddtaxi/a/a/du;

.field public static final enum c:Lcom/ddtaxi/a/a/du;

.field public static final enum d:Lcom/ddtaxi/a/a/du;

.field public static final enum e:Lcom/ddtaxi/a/a/du;

.field public static final enum f:Lcom/ddtaxi/a/a/du;

.field public static final enum g:Lcom/ddtaxi/a/a/du;

.field public static final enum h:Lcom/ddtaxi/a/a/du;

.field public static final enum i:Lcom/ddtaxi/a/a/du;

.field private static final synthetic k:[Lcom/ddtaxi/a/a/du;


# instance fields
.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->a:Lcom/ddtaxi/a/a/du;

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->b:Lcom/ddtaxi/a/a/du;

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->c:Lcom/ddtaxi/a/a/du;

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->d:Lcom/ddtaxi/a/a/du;

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->e:Lcom/ddtaxi/a/a/du;

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->f:Lcom/ddtaxi/a/a/du;

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->g:Lcom/ddtaxi/a/a/du;

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    new-instance v0, Lcom/ddtaxi/a/a/du;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/du;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/ddtaxi/a/a/du;

    sget-object v1, Lcom/ddtaxi/a/a/du;->a:Lcom/ddtaxi/a/a/du;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ddtaxi/a/a/du;->b:Lcom/ddtaxi/a/a/du;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ddtaxi/a/a/du;->c:Lcom/ddtaxi/a/a/du;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ddtaxi/a/a/du;->d:Lcom/ddtaxi/a/a/du;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ddtaxi/a/a/du;->e:Lcom/ddtaxi/a/a/du;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ddtaxi/a/a/du;->f:Lcom/ddtaxi/a/a/du;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ddtaxi/a/a/du;->g:Lcom/ddtaxi/a/a/du;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ddtaxi/a/a/du;->k:[Lcom/ddtaxi/a/a/du;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ddtaxi/a/a/du;->j:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ddtaxi/a/a/du;
    .locals 1

    const-class v0, Lcom/ddtaxi/a/a/du;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/du;

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/du;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/du;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public static a()[Lcom/ddtaxi/a/a/du;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ddtaxi/a/a/du;->k:[Lcom/ddtaxi/a/a/du;

    array-length v1, v0

    new-array v2, v1, [Lcom/ddtaxi/a/a/du;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
