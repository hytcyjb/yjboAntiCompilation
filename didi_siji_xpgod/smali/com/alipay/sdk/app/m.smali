.class public final enum Lcom/alipay/sdk/app/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/sdk/app/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/sdk/app/m;

.field public static final enum b:Lcom/alipay/sdk/app/m;

.field public static final enum c:Lcom/alipay/sdk/app/m;

.field public static final enum d:Lcom/alipay/sdk/app/m;

.field public static final enum e:Lcom/alipay/sdk/app/m;

.field public static final enum f:Lcom/alipay/sdk/app/m;

.field private static final synthetic i:[Lcom/alipay/sdk/app/m;


# instance fields
.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/sdk/app/m;

    const-string v1, "SUCCEEDED"

    const/16 v2, 0x2328

    const-string v3, "\u5904\u7406\u6210\u529f"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/sdk/app/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Lcom/alipay/sdk/app/m;

    new-instance v0, Lcom/alipay/sdk/app/m;

    const-string v1, "FAILED"

    const/16 v2, 0xfa0

    const-string v3, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/sdk/app/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/m;->b:Lcom/alipay/sdk/app/m;

    new-instance v0, Lcom/alipay/sdk/app/m;

    const-string v1, "CANCELED"

    const/16 v2, 0x1771

    const-string v3, "\u7528\u6237\u53d6\u6d88"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/sdk/app/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/m;->c:Lcom/alipay/sdk/app/m;

    new-instance v0, Lcom/alipay/sdk/app/m;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x1772

    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/sdk/app/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/m;->d:Lcom/alipay/sdk/app/m;

    new-instance v0, Lcom/alipay/sdk/app/m;

    const-string v1, "PARAMS_ERROR"

    const/16 v2, 0xfa1

    const-string v3, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/sdk/app/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/m;->e:Lcom/alipay/sdk/app/m;

    new-instance v0, Lcom/alipay/sdk/app/m;

    const-string v1, "PAY_WAITTING"

    const/4 v2, 0x5

    const/16 v3, 0x1f40

    const-string v4, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/app/m;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/m;->f:Lcom/alipay/sdk/app/m;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/sdk/app/m;

    sget-object v1, Lcom/alipay/sdk/app/m;->a:Lcom/alipay/sdk/app/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/sdk/app/m;->b:Lcom/alipay/sdk/app/m;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/sdk/app/m;->c:Lcom/alipay/sdk/app/m;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/sdk/app/m;->d:Lcom/alipay/sdk/app/m;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/sdk/app/m;->e:Lcom/alipay/sdk/app/m;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/sdk/app/m;->f:Lcom/alipay/sdk/app/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/sdk/app/m;->i:[Lcom/alipay/sdk/app/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/sdk/app/m;->g:I

    iput-object p4, p0, Lcom/alipay/sdk/app/m;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/alipay/sdk/app/m;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lcom/alipay/sdk/app/m;->b:Lcom/alipay/sdk/app/m;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/alipay/sdk/app/m;->a:Lcom/alipay/sdk/app/m;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/alipay/sdk/app/m;->c:Lcom/alipay/sdk/app/m;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/alipay/sdk/app/m;->d:Lcom/alipay/sdk/app/m;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/alipay/sdk/app/m;->e:Lcom/alipay/sdk/app/m;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/alipay/sdk/app/m;->f:Lcom/alipay/sdk/app/m;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfa1 -> :sswitch_3
        0x1771 -> :sswitch_1
        0x1772 -> :sswitch_2
        0x1f40 -> :sswitch_4
        0x2328 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/app/m;->h:Ljava/lang/String;

    return-void
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/sdk/app/m;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/app/m;
    .locals 1

    const-class v0, Lcom/alipay/sdk/app/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/app/m;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/app/m;
    .locals 1

    sget-object v0, Lcom/alipay/sdk/app/m;->i:[Lcom/alipay/sdk/app/m;

    invoke-virtual {v0}, [Lcom/alipay/sdk/app/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/app/m;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/sdk/app/m;->g:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/app/m;->h:Ljava/lang/String;

    return-object v0
.end method
