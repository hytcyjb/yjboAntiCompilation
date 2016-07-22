.class Lcom/xiaomi/smack/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/smack/b;

.field private b:Ljava/lang/Thread;

.field private c:I


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/b;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smack/g;->a:Lcom/xiaomi/smack/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p0, p0, Lcom/xiaomi/smack/g;->b:Ljava/lang/Thread;

    const/16 v0, 0x400

    iput v0, p0, Lcom/xiaomi/smack/g;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/xiaomi/smack/g;->c:I

    new-array v0, v0, [C

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smack/g;->a:Lcom/xiaomi/smack/b;

    invoke-static {v1}, Lcom/xiaomi/smack/b;->b(Lcom/xiaomi/smack/b;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/g;->b:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/g;->a:Lcom/xiaomi/smack/b;

    invoke-static {v1}, Lcom/xiaomi/smack/b;->c(Lcom/xiaomi/smack/b;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/g;->a:Lcom/xiaomi/smack/b;

    iget-object v1, v1, Lcom/xiaomi/smack/b;->i:Ljava/io/Reader;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/smack/g;->c:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
