.class Lcom/xiaomi/measite/smack/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smack/o;


# instance fields
.field final synthetic a:Lcom/xiaomi/measite/smack/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/measite/smack/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/measite/smack/d;->a:Lcom/xiaomi/measite/smack/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/smack/packet/d;)V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/measite/smack/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/measite/smack/d;->a:Lcom/xiaomi/measite/smack/a;

    invoke-static {v1}, Lcom/xiaomi/measite/smack/a;->a(Lcom/xiaomi/measite/smack/a;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RCV PKT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/measite/smack/d;->a:Lcom/xiaomi/measite/smack/a;

    invoke-static {v1}, Lcom/xiaomi/measite/smack/a;->b(Lcom/xiaomi/measite/smack/a;)Lcom/xiaomi/smack/j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
