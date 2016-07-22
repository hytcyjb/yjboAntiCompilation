.class public Lcom/xiaomi/measite/smack/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smack/debugger/a;


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Lcom/xiaomi/smack/j;

.field private d:Lcom/xiaomi/smack/o;

.field private e:Lcom/xiaomi/smack/m;

.field private f:Ljava/io/Writer;

.field private g:Ljava/io/Reader;

.field private h:Lcom/xiaomi/smack/util/f;

.field private i:Lcom/xiaomi/smack/util/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/measite/smack/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/j;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/measite/smack/a;->b:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/xiaomi/measite/smack/a;->c:Lcom/xiaomi/smack/j;

    iput-object v2, p0, Lcom/xiaomi/measite/smack/a;->d:Lcom/xiaomi/smack/o;

    iput-object v2, p0, Lcom/xiaomi/measite/smack/a;->e:Lcom/xiaomi/smack/m;

    iput-object p1, p0, Lcom/xiaomi/measite/smack/a;->c:Lcom/xiaomi/smack/j;

    iput-object p2, p0, Lcom/xiaomi/measite/smack/a;->f:Ljava/io/Writer;

    iput-object p3, p0, Lcom/xiaomi/measite/smack/a;->g:Ljava/io/Reader;

    invoke-direct {p0}, Lcom/xiaomi/measite/smack/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/measite/smack/a;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/measite/smack/a;)Lcom/xiaomi/smack/j;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->c:Lcom/xiaomi/smack/j;

    return-object v0
.end method

.method private e()V
    .locals 3

    new-instance v0, Lcom/xiaomi/smack/util/a;

    iget-object v1, p0, Lcom/xiaomi/measite/smack/a;->g:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/util/a;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/xiaomi/measite/smack/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/measite/smack/b;-><init>(Lcom/xiaomi/measite/smack/a;)V

    iput-object v1, p0, Lcom/xiaomi/measite/smack/a;->h:Lcom/xiaomi/smack/util/f;

    iget-object v1, p0, Lcom/xiaomi/measite/smack/a;->h:Lcom/xiaomi/smack/util/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/util/a;->a(Lcom/xiaomi/smack/util/f;)V

    new-instance v1, Lcom/xiaomi/smack/util/b;

    iget-object v2, p0, Lcom/xiaomi/measite/smack/a;->f:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/util/b;-><init>(Ljava/io/Writer;)V

    new-instance v2, Lcom/xiaomi/measite/smack/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/measite/smack/c;-><init>(Lcom/xiaomi/measite/smack/a;)V

    iput-object v2, p0, Lcom/xiaomi/measite/smack/a;->i:Lcom/xiaomi/smack/util/k;

    iget-object v2, p0, Lcom/xiaomi/measite/smack/a;->i:Lcom/xiaomi/smack/util/k;

    invoke-virtual {v1, v2}, Lcom/xiaomi/smack/util/b;->a(Lcom/xiaomi/smack/util/k;)V

    iput-object v0, p0, Lcom/xiaomi/measite/smack/a;->g:Ljava/io/Reader;

    iput-object v1, p0, Lcom/xiaomi/measite/smack/a;->f:Ljava/io/Writer;

    new-instance v0, Lcom/xiaomi/measite/smack/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/measite/smack/d;-><init>(Lcom/xiaomi/measite/smack/a;)V

    iput-object v0, p0, Lcom/xiaomi/measite/smack/a;->d:Lcom/xiaomi/smack/o;

    new-instance v0, Lcom/xiaomi/measite/smack/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/measite/smack/e;-><init>(Lcom/xiaomi/measite/smack/a;)V

    iput-object v0, p0, Lcom/xiaomi/measite/smack/a;->e:Lcom/xiaomi/smack/m;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->g:Ljava/io/Reader;

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->g:Ljava/io/Reader;

    check-cast v0, Lcom/xiaomi/smack/util/a;

    iget-object v1, p0, Lcom/xiaomi/measite/smack/a;->h:Lcom/xiaomi/smack/util/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/util/a;->b(Lcom/xiaomi/smack/util/f;)V

    new-instance v0, Lcom/xiaomi/smack/util/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/util/a;-><init>(Ljava/io/Reader;)V

    iget-object v1, p0, Lcom/xiaomi/measite/smack/a;->h:Lcom/xiaomi/smack/util/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/util/a;->a(Lcom/xiaomi/smack/util/f;)V

    iput-object v0, p0, Lcom/xiaomi/measite/smack/a;->g:Ljava/io/Reader;

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->g:Ljava/io/Reader;

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->f:Ljava/io/Writer;

    check-cast v0, Lcom/xiaomi/smack/util/b;

    iget-object v1, p0, Lcom/xiaomi/measite/smack/a;->i:Lcom/xiaomi/smack/util/k;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/util/b;->b(Lcom/xiaomi/smack/util/k;)V

    new-instance v0, Lcom/xiaomi/smack/util/b;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/util/b;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/xiaomi/measite/smack/a;->i:Lcom/xiaomi/smack/util/k;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/util/b;->a(Lcom/xiaomi/smack/util/k;)V

    iput-object v0, p0, Lcom/xiaomi/measite/smack/a;->f:Ljava/io/Writer;

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->f:Ljava/io/Writer;

    return-object v0
.end method

.method public b()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->f:Ljava/io/Writer;

    return-object v0
.end method

.method public c()Lcom/xiaomi/smack/o;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/measite/smack/a;->d:Lcom/xiaomi/smack/o;

    return-object v0
.end method

.method public d()Lcom/xiaomi/smack/o;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
