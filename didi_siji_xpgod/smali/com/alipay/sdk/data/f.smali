.class public final Lcom/alipay/sdk/data/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x3e8

.field public static final b:I = 0x1f7


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lorg/json/JSONObject;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Lcom/alipay/sdk/data/a;

.field m:[Lorg/apache/http/Header;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/data/f;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/data/f;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/sdk/data/f;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/data/f;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->i:Lorg/json/JSONObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/data/f;->k:Z

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->l:Lcom/alipay/sdk/data/a;

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->m:[Lorg/apache/http/Header;

    return-void
.end method

.method private a()Lcom/alipay/sdk/data/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/data/f;->l:Lcom/alipay/sdk/data/a;

    return-object v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/sdk/data/f;->c:I

    return-void
.end method

.method private a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/sdk/data/f;->e:J

    return-void
.end method

.method private a(Lcom/alipay/sdk/data/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/data/f;->l:Lcom/alipay/sdk/data/a;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/data/f;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/data/f;->i:Lorg/json/JSONObject;

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/data/f;->k:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/data/f;->f:Ljava/lang/String;

    return-void
.end method

.method private c()I
    .locals 1

    iget v0, p0, Lcom/alipay/sdk/data/f;->c:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/data/f;->g:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/data/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/data/f;->h:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/data/f;->j:Ljava/lang/String;

    return-void
.end method
