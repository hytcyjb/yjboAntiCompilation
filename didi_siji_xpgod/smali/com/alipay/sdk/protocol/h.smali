.class public abstract Lcom/alipay/sdk/protocol/h;
.super Lcom/alipay/sdk/protocol/c;


# static fields
.field public static final d:I = 0x4

.field public static final e:I = 0x6

.field public static final f:I = 0x7

.field public static final g:I = 0x8

.field public static final h:I = 0x9

.field public static final i:I = 0xa

.field public static final j:I = -0xa


# instance fields
.field k:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/protocol/c;-><init>(Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/h;->k:Z

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/sdk/protocol/h;->k:Z

    return-void
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/h;->k:Z

    return v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
.end method
