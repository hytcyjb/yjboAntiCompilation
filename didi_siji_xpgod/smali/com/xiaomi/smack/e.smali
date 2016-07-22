.class Lcom/xiaomi/smack/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/kenai/jbosh/z;


# instance fields
.field final synthetic a:Lcom/xiaomi/smack/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/e;->a:Lcom/xiaomi/smack/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/kenai/jbosh/ab;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/ab;->a()Lcom/xiaomi/kenai/jbosh/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/e;->a:Lcom/xiaomi/smack/b;

    invoke-static {v0}, Lcom/xiaomi/smack/b;->a(Lcom/xiaomi/smack/b;)Ljava/io/PipedWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/ab;->a()Lcom/xiaomi/kenai/jbosh/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PipedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/smack/e;->a:Lcom/xiaomi/smack/b;

    invoke-static {v0}, Lcom/xiaomi/smack/b;->a(Lcom/xiaomi/smack/b;)Ljava/io/PipedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PipedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
