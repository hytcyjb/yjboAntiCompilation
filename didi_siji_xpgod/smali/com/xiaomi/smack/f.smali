.class Lcom/xiaomi/smack/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/kenai/jbosh/y;


# instance fields
.field final synthetic a:Lcom/xiaomi/smack/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/f;->a:Lcom/xiaomi/smack/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/kenai/jbosh/ab;)V
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/ab;->a()Lcom/xiaomi/kenai/jbosh/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/f;->a:Lcom/xiaomi/smack/b;

    iget-object v0, v0, Lcom/xiaomi/smack/b;->j:Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/ab;->a()Lcom/xiaomi/kenai/jbosh/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
