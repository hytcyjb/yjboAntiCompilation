.class public abstract Lcom/igexin/push/f/a/b;
.super Lcom/igexin/a/a/d/a;


# instance fields
.field e:Ljava/lang/String;

.field f:[B

.field g:Ljava/io/InputStream;

.field h:J

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/f/a/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public a([B)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/f/a/b;->i:Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/f/a/b;->i:Z

    goto :goto_0
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/f/a/b;->f:[B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/f/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/f/a/b;->f:[B

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/f/a/b;->g:Ljava/io/InputStream;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/igexin/push/f/a/b;->h:J

    return-wide v0
.end method
