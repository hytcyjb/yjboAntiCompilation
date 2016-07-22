.class public final enum Lcom/ddtaxi/a/a/ax;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/ddtaxi/a/a/gw;


# static fields
.field public static final enum a:Lcom/ddtaxi/a/a/ax; = null

.field public static final enum b:Lcom/ddtaxi/a/a/ax; = null

.field public static final enum c:Lcom/ddtaxi/a/a/ax; = null

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field private static g:Lcom/ddtaxi/a/a/fy;

.field private static final h:[Lcom/ddtaxi/a/a/ax;

.field private static final synthetic k:[Lcom/ddtaxi/a/a/ax;


# instance fields
.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/ddtaxi/a/a/ax;

    const-string v1, "LABEL_OPTIONAL"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/ddtaxi/a/a/ax;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    new-instance v0, Lcom/ddtaxi/a/a/ax;

    const-string v1, "LABEL_REQUIRED"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/ddtaxi/a/a/ax;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ddtaxi/a/a/ax;->b:Lcom/ddtaxi/a/a/ax;

    new-instance v0, Lcom/ddtaxi/a/a/ax;

    const-string v1, "LABEL_REPEATED"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/ddtaxi/a/a/ax;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ddtaxi/a/a/ax;->c:Lcom/ddtaxi/a/a/ax;

    new-array v0, v5, [Lcom/ddtaxi/a/a/ax;

    sget-object v1, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ddtaxi/a/a/ax;->b:Lcom/ddtaxi/a/a/ax;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ddtaxi/a/a/ax;->c:Lcom/ddtaxi/a/a/ax;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ddtaxi/a/a/ax;->k:[Lcom/ddtaxi/a/a/ax;

    new-instance v0, Lcom/ddtaxi/a/a/ay;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ay;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/ax;->g:Lcom/ddtaxi/a/a/fy;

    invoke-static {}, Lcom/ddtaxi/a/a/ax;->f()[Lcom/ddtaxi/a/a/ax;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/ax;->h:[Lcom/ddtaxi/a/a/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ddtaxi/a/a/ax;->i:I

    iput p4, p0, Lcom/ddtaxi/a/a/ax;->j:I

    return-void
.end method

.method public static a(I)Lcom/ddtaxi/a/a/ax;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ddtaxi/a/a/ax;->b:Lcom/ddtaxi/a/a/ax;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ddtaxi/a/a/ax;->c:Lcom/ddtaxi/a/a/ax;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/ddtaxi/a/a/ds;)Lcom/ddtaxi/a/a/ax;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ds;->g()Lcom/ddtaxi/a/a/dr;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/ax;->e()Lcom/ddtaxi/a/a/dr;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/ddtaxi/a/a/ax;->h:[Lcom/ddtaxi/a/a/ax;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ds;->b()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/ddtaxi/a/a/ax;
    .locals 1

    const-class v0, Lcom/ddtaxi/a/a/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ax;

    return-object v0
.end method

.method public static b()Lcom/ddtaxi/a/a/fy;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ax;->g:Lcom/ddtaxi/a/a/fy;

    return-object v0
.end method

.method public static final e()Lcom/ddtaxi/a/a/dr;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/au;->d()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->l()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dr;

    return-object v0
.end method

.method public static f()[Lcom/ddtaxi/a/a/ax;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ddtaxi/a/a/ax;->k:[Lcom/ddtaxi/a/a/ax;

    array-length v1, v0

    new-array v2, v1, [Lcom/ddtaxi/a/a/ax;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ax;->j:I

    return v0
.end method

.method public final c()Lcom/ddtaxi/a/a/ds;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/ax;->e()Lcom/ddtaxi/a/a/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dr;->h()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/ax;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ds;

    return-object v0
.end method

.method public final d()Lcom/ddtaxi/a/a/dr;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ax;->e()Lcom/ddtaxi/a/a/dr;

    move-result-object v0

    return-object v0
.end method
