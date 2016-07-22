.class public final Lct/z;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[B

.field public c:I

.field public d:I

.field public e:Lorg/apache/http/HttpResponse;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lct/z;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lct/z;->b:[B

    iput v1, p0, Lct/z;->c:I

    iput v1, p0, Lct/z;->d:I

    iput v1, p0, Lct/z;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lct/z;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lct/z;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/z;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lct/z;->b:[B

    return-object v0
.end method
